import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'car_add_screen_model.dart';
import 'car_add_screen_widget.dart';

abstract interface class ICarAddScreenWidgetModel implements IWidgetModel {
}

CarAddScreenWidgetModel defaultCarAddScreenWidgetModelFactory(BuildContext context) {
  return CarAddScreenWidgetModel(CarAddScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CarAddScreenWidget
class CarAddScreenWidgetModel extends WidgetModel<CarAddScreenWidget, CarAddScreenModel>
    implements ICarAddScreenWidgetModel {

  CarAddScreenWidgetModel(super.model);
}
