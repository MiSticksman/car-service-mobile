import 'package:car_service_app/app/app.dart';
import 'package:car_service_app/presentation/ui_util/snack_bar.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'register_screen_model.dart';
import 'register_screen_widget.dart';

abstract interface class IRegisterScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get nameController;

  TextEditingController get surnameController;

  MaskTextInputFormatter get phoneMaskedController;

  TextEditingController get phoneController;

  TextEditingController get emailController;

  void register();
}

RegisterScreenWidgetModel defaultRegisterScreenWidgetModelFactory(
    BuildContext context) {
  return RegisterScreenWidgetModel(RegisterScreenModel());
}

// TODO: cover with documentation
/// Default widget model for RegisterScreenWidget
class RegisterScreenWidgetModel
    extends WidgetModel<RegisterScreenWidget, RegisterScreenModel>
    with ThemeProvider
    implements IRegisterScreenWidgetModel {
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

  final RegExp emailRegExp = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]');
  RegisterScreenWidgetModel(super.model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    phoneController.text = widget.phone;
  }

  @override
  Future<void> register() async {
    if (!_validate()) {
      return;
    }
    auth = true;
    router.popUntilRoot();
    router.replace(ProfileRoute());
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
    if (emptyFields || !validate) {
      context.showSnackBar(localizations.fillAllFieldsMessage);
    }
    return validate;
  }
}
