import 'package:car_service_app/app/app_starter.dart';
import 'package:car_service_app/presentation/ui_util/snack_bar.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'editing_profile_screen_model.dart';
import 'editing_profile_screen_widget.dart';

abstract interface class IEditingProfileScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get nameController;

  TextEditingController get surnameController;

  MaskTextInputFormatter get phoneMaskedController;

  TextEditingController get phoneController;

  TextEditingController get emailController;

  void saveData();
}

EditingProfileScreenWidgetModel defaultEditingProfileScreenWidgetModelFactory(
    BuildContext context) {
  return EditingProfileScreenWidgetModel(EditingProfileScreenModel());
}

// TODO: cover with documentation
/// Default widget model for EditingProfileScreenWidget
class EditingProfileScreenWidgetModel
    extends WidgetModel<EditingProfileScreenWidget, EditingProfileScreenModel>
    with ThemeProvider
    implements IEditingProfileScreenWidgetModel {
  EditingProfileScreenWidgetModel(super.model);

  @override
  final TextEditingController nameController = TextEditingController();

  @override
  final TextEditingController surnameController = TextEditingController();

  @override
  final TextEditingController phoneController = TextEditingController();
  @override
  final MaskTextInputFormatter phoneMaskedController = MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );

  @override
  final TextEditingController emailController = TextEditingController();

  final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]');
  final RegExp phoneRegExp = RegExp(r'(^(?:[+0]9)?[0-9]{11}$)');

  String get phoneUnmasked =>
      phoneController.text.replaceAll(RegExp(r'[^0-9]'), '');

  @override
  void saveData() {
    if (!_validate()) {
      return;
    }
    router.pop();
  }

  bool _validate() {
    bool emptyFields = false;
    bool validate = true;
    if (nameController.text.isEmpty) {
      emptyFields = true;
      validate = false;
    }
    if (emailController.text.isEmpty) {
      emptyFields = true;
      validate = false;
    } else {
      final emailValid = emailRegExp.hasMatch(emailController.text);
      validate &= emailValid;
    }
    if (phoneController.text.isEmpty) {
      emptyFields = true;
      validate = false;
    } else {
      final phoneValid = phoneRegExp.hasMatch(phoneUnmasked);
      validate &= phoneValid;
    }
    if (emptyFields) {
      context.showSnackBar('Заполните все обязательные поля в верном формате');
    }
    return validate;
  }
}
