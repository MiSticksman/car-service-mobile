import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'register_screen_model.dart';
import 'register_screen_widget.dart';

abstract interface class IRegisterScreenWidgetModel implements IWidgetModel, IThemeProvider {
}

RegisterScreenWidgetModel defaultRegisterScreenWidgetModelFactory(BuildContext context) {
  return RegisterScreenWidgetModel(RegisterScreenModel());
}

// TODO: cover with documentation
/// Default widget model for RegisterScreenWidget
class RegisterScreenWidgetModel extends WidgetModel<RegisterScreenWidget, RegisterScreenModel>
    with ThemeProvider
    implements IRegisterScreenWidgetModel {

  RegisterScreenWidgetModel(super.model);
}
