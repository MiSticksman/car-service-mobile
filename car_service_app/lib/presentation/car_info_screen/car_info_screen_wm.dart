import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'car_info_screen_model.dart';
import 'car_info_screen_widget.dart';

abstract interface class ICarInfoScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get descriptionController;

  TextEditingController get mileageController;

  void deleteCar(int id);

  void complete();
}

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

  @override
  final TextEditingController descriptionController = TextEditingController();

  @override
  final TextEditingController mileageController = TextEditingController();

  @override
  Future<void> deleteCar(int id) async {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(localizations.removal),
        content: Text(localizations.removeQuestion),
        actions: [
          TextButton(
              onPressed: () => router.maybePop(),
              child: Text(localizations.no)),
          TextButton(onPressed: () {}, child: Text(localizations.yes)),
        ],
      ),
    );
  }

  @override
  Future<void> complete() async {
    router.maybePop();
  }
}
