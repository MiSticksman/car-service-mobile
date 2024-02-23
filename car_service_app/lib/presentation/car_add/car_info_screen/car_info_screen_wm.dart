import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'car_info_screen_model.dart';
import 'car_info_screen_widget.dart';

abstract interface class ICarInfoScreenWidgetModel
    implements IWidgetModel, IThemeProvider {}

CarInfoScreenWidgetModel defaultCarInfoScreenWidgetModelFactory(
    BuildContext context) {
  return CarInfoScreenWidgetModel(CarInfoScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CarInfoScreenWidget
class CarInfoScreenWidgetModel
    extends WidgetModel<CarInfoScreenWidget, CarInfoScreenModel>
    with ThemeProvider
    implements ICarInfoScreenWidgetModel {
  CarInfoScreenWidgetModel(super.model);
}
