import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_screen_model.dart';
import 'auth_screen_widget.dart';

abstract interface class IAuthScreenWidgetModel implements IWidgetModel, IThemeProvider {
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
}
