import 'dart:math';

import 'package:car_service_app/app/app.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'confirm_phone_screen_model.dart';
import 'confirm_phone_screen_widget.dart';

abstract interface class IConfirmPhoneScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get pinController;

  void validatePin();
}

ConfirmPhoneScreenWidgetModel defaultConfirmPhoneScreenWidgetModelFactory(
    BuildContext context) {
  return ConfirmPhoneScreenWidgetModel(ConfirmPhoneScreenModel());
}

// TODO: cover with documentation
/// Default widget model for ConfirmPhoneScreenWidget
class ConfirmPhoneScreenWidgetModel
    extends WidgetModel<ConfirmPhoneScreenWidget, ConfirmPhoneScreenModel>
    with ThemeProvider
    implements IConfirmPhoneScreenWidgetModel {
  ConfirmPhoneScreenWidgetModel(super.model);

  @override
  final TextEditingController pinController = TextEditingController();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Future<void> validatePin() async {
    // запрос на бек
    router.popUntilRoot();
    router.replace(ProfileRoute());
  }
}
