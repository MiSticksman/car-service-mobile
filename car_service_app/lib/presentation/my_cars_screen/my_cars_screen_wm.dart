import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/internal/logger.dart';
import 'package:car_service_app/presentation/ui_util/snack_bar.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'my_cars_screen_model.dart';
import 'my_cars_screen_widget.dart';

abstract interface class IMyCarsScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  EntityStateNotifier<(List<Car>, Car?)> get carsState;

  void close();

  void selectCar(Car car);

  void toBrandSelection();

  void toCarInfo(Car car);
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
    loadCars();
  }

  Future<void> loadCars() async {
    carsState.loading();
    try {
      final cars = <Car>[
        Car(
          id: 1,
          brand: 'Toyota',
          model: 'Mark II',
          year: 1996,
          pictureUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Toyota_Mark_II_Grande_Regalia_front_quarter.JPG/1200px-Toyota_Mark_II_Grande_Regalia_front_quarter.JPG',
        ),
        Car(
          id: 2,
          brand: 'Audi',
          model: 'A5',
          year: 2023,
          pictureUrl: 'https://sales-audi.ru/upload/26.10/1.jpg',
        ),
        // Car(id: 3, brand: ''),
        // Car(id: 4, brand: ''),
        // Car(id: 5, brand: ''),
      ];
      carsState.content((cars, cars.firstOrNull));
    } catch (e, s) {
      carsState.error();
      logger.e(
        'Cars loading error',
        error: e,
        stackTrace: s,
      );
      context.showSnackBar('Cars loading error');
    }
  }

  @override
  void dispose() {
    carsState.dispose();
    super.dispose();
  }

  @override
  void close() {
    router.maybePop();
  }

  @override
  void selectCar(Car car) {
    final cars = carsState.value.data!.$1;

    carsState.content((cars, car));
  }

  @override
  void toBrandSelection() {
    router.navigate(BrandSelectionRoute());
  }

  @override
  void toCarInfo(Car car) {
    router.navigate(CarInfoRoute(car: car));
  }
}
