
import 'package:car_service_app/presentation/home_screen/home_screen_model.dart';
import 'package:car_service_app/presentation/home_screen/home_screen_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

abstract class IHomeScreenWidgetModel implements IWidgetModel {}

HomeScreenWidgetModel defaultHomePageWidgetModelFactory(BuildContext context) {
  return HomeScreenWidgetModel(HomeScreenModel());
}

// TODO: cover with documentation
/// Default widget model for HomeScreenWidget
class HomeScreenWidgetModel extends WidgetModel<HomeScreenWidget, HomeScreenModel>
    implements IHomeScreenWidgetModel {
  HomeScreenWidgetModel(super.model);
}
