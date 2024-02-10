import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'my_cars_screen_model.dart';
import 'my_cars_screen_widget.dart';

abstract interface class IMyCarsScreenWidgetModel implements IWidgetModel, IThemeProvider {

  EntityStateNotifier<List<String>> get carsState;


}

MyCarsScreenWidgetModel defaultMyCarsScreenWidgetModelFactory(BuildContext context) {
  return MyCarsScreenWidgetModel(MyCarsScreenModel());
}

// TODO: cover with documentation
/// Default widget model for MyCarsScreenWidget
class MyCarsScreenWidgetModel extends WidgetModel<MyCarsScreenWidget, MyCarsScreenModel>
    with ThemeProvider
    implements IMyCarsScreenWidgetModel {

  MyCarsScreenWidgetModel(super.model);

  @override
  final EntityStateNotifier<List<String>> carsState = EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    init();
  }

  Future<void> init() async {
    carsState.loading();
    await Future.delayed(const Duration(seconds: 2));
    carsState.content([]);
  }

  @override
  void dispose() {
    carsState.dispose();
    super.dispose();
  }


}
