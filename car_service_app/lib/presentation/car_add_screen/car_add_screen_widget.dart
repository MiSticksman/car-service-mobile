import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'car_add_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CarAddScreen module
@RoutePage()
class CarAddScreenWidget extends ElementaryWidget<ICarAddScreenWidgetModel> {
  const CarAddScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCarAddScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICarAddScreenWidgetModel wm) {
    return Container();
  }
}
