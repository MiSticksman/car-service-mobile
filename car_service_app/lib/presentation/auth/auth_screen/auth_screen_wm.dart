import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'auth_screen_model.dart';
import 'auth_screen_widget.dart';

abstract interface class IAuthScreenWidgetModel implements IWidgetModel, IThemeProvider {

  TextEditingController get phoneController;

  MaskTextInputFormatter get phoneMaskedController;

  void getCode();
}

AuthScreenWidgetModel defaultAuthScreenWidgetModelFactory(BuildContext context) {
  return AuthScreenWidgetModel(AuthScreenModel());
}

// TODO: cover with documentation
/// Default widget model for AuthScreenWidget
class AuthScreenWidgetModel extends WidgetModel<AuthScreenWidget, AuthScreenModel>
    with ThemeProvider
    implements IAuthScreenWidgetModel {

  AuthScreenWidgetModel(super.model);

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
  Future<void> getCode() async {

  }
}
