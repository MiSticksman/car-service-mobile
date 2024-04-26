import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'confirm_phone_screen_model.dart';
import 'confirm_phone_screen_widget.dart';

abstract interface class IConfirmPhoneScreenWidgetModel implements IWidgetModel, IThemeProvider {
}

ConfirmPhoneScreenWidgetModel defaultConfirmPhoneScreenWidgetModelFactory(BuildContext context) {
  return ConfirmPhoneScreenWidgetModel(ConfirmPhoneScreenModel());
}

// TODO: cover with documentation
/// Default widget model for ConfirmPhoneScreenWidget
class ConfirmPhoneScreenWidgetModel extends WidgetModel<ConfirmPhoneScreenWidget, ConfirmPhoneScreenModel>
    with ThemeProvider
    implements IConfirmPhoneScreenWidgetModel {

  ConfirmPhoneScreenWidgetModel(super.model);
}
