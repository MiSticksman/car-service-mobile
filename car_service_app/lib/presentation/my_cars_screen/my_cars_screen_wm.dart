import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/internal/logger.dart';
import 'package:car_service_app/presentation/car_add/brand_selection_screen/brand_selection_screen.dart';
import 'package:car_service_app/presentation/car_add/car_info_screen/car_info_screen.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'my_cars_screen_model.dart';
import 'my_cars_screen_widget.dart';

abstract interface class IMyCarsScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  EntityStateNotifier<(List<Car>, Car?)> get carsState;

  void close();

  void selectCar(Car car);

  void routeToBrandSelection();

  void openCarInfo(Car car);
}

MyCarsScreenWidgetModel defaultMyCarsScreenWidgetModelFactory(
    BuildContext context) {
  return MyCarsScreenWidgetModel(MyCarsScreenModel());
}

// TODO: cover with documentation
/// Default widget model for MyCarsScreenWidget
class MyCarsScreenWidgetModel
    extends WidgetModel<MyCarsScreenWidget, MyCarsScreenModel>
    with ThemeProvider
    implements IMyCarsScreenWidgetModel {
  MyCarsScreenWidgetModel(super.model);

  @override
  final EntityStateNotifier<(List<Car>, Car?)> carsState =
      EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    init();
  }

  Future<void> init() async {
    carsState.loading();
    await Future.delayed(const Duration(seconds: 1));
    try {
      // TODO запрос на бек
      final cars = <Car>[
        Car(id: '1', brand: ''),
        Car(id: '2', brand: ''),
        Car(id: '3', brand: ''),
        Car(id: '4', brand: ''),
      ];
      carsState.content((cars, cars.firstOrNull));
    } catch (e, s) {
      logger.e(
        'Cars loading error',
        error: e,
        stackTrace: s,
      );
    }
  }

  @override
  void dispose() {
    carsState.dispose();
    super.dispose();
  }

  @override
  void close() {
    router.pop();
  }

  @override
  void selectCar(Car car) {
    final cars = carsState.value.data!.$1;

    carsState.content((cars, car));
  }

  @override
  Future<void> routeToBrandSelection() async {
    await showCupertinoModalBottomSheet(
      useRootNavigator: true,
      context: router.navigatorKey.currentContext!,
      builder: (_) => const BrandSelectionScreenWidget(),
    );
  }

  @override
  Future<void> openCarInfo(Car car) async {
    await showCupertinoModalBottomSheet(
      // useRootNavigator: true,
      context: router.navigatorKey.currentContext!,
      builder: (_) => const CarInfoScreenWidget(),
    );
  }
}
