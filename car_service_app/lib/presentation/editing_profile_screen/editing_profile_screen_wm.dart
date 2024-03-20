import 'package:car_service_app/app/app_starter.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'editing_profile_screen_model.dart';
import 'editing_profile_screen_widget.dart';

abstract interface class IEditingProfileScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get nameController;

  TextEditingController get surnameController;

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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          dismissDirection: DismissDirection.up,
          backgroundColor: theme.colorScheme.onSecondary,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 200,
            left: 10,
            right: 10,
          ),
          content: const Text('Заполните все обязательные поля в верном формате'),
        ),
      );
    }
    return validate;
  }
}
