import 'package:car_service_app/domain/model/car/engine.dart';
import 'package:car_service_app/domain/model/car/transmission.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'car_info_screen_model.dart';
import 'car_info_screen_widget.dart';

abstract interface class ICarInfoScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get yearController;

  TextEditingController get engineController;

  TextEditingController get transmissionController;

  TextEditingController get equipmentController;

  TextEditingController get descriptionController;

  EntityStateNotifier<(List<int>, int?)> get yearsState;

  EntityStateNotifier<(List<Engine>, Engine?)> get enginesState;

  EntityStateNotifier<(List<Transmission>, Transmission?)>
      get transmissionsState;

  void selectYear(int year);

  void selectEngine();

//
  void selectTransmission();
//
// void selectEquipment();
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
  void initWidgetModel() {
    super.initWidgetModel();
    init();
  }

  Future<void> init() async {
    final years = <int>[
      1980,
      2016,
      2019,
      2013,
    ];
    yearsState.content((years, years.firstOrNull));

    final engines = <Engine>[
      Engine(id: 1, name: "first"),
      Engine(id: 2, name: "second"),
      Engine(id: 3, name: "third"),
      Engine(id: 4, name: "fourth"),
    ];
    enginesState.content((engines, engines.firstOrNull));

    final transmissions = <Transmission>[
      Transmission(id: 1, name: "first"),
      Transmission(id: 2, name: "second"),
      Transmission(id: 3, name: "third"),
      Transmission(id: 4, name: "fourth"),
    ];
    transmissionsState.content((transmissions, transmissions.firstOrNull));
  }

  @override
  void dispose() {
    yearController.dispose();
    engineController.dispose();
    transmissionController.dispose();
    equipmentController.dispose();
    descriptionController.dispose();
    enginesState.dispose();
    super.dispose();
  }

  @override
  final TextEditingController yearController = TextEditingController();

  @override
  final TextEditingController engineController = TextEditingController();

  @override
  final TextEditingController transmissionController = TextEditingController();

  @override
  final TextEditingController equipmentController = TextEditingController();

  @override
  final TextEditingController descriptionController = TextEditingController();

  @override
  final EntityStateNotifier<(List<int>, int?)> yearsState =
      EntityStateNotifier();

  @override
  final EntityStateNotifier<(List<Engine>, Engine?)> enginesState =
      EntityStateNotifier();

  @override
  final EntityStateNotifier<(List<Transmission>, Transmission?)>
      transmissionsState = EntityStateNotifier();

  @override
  void selectYear(int year) {
    if (year == yearsState.value.data!.$2) return;
    engineController.clear();
    transmissionController.clear();
    equipmentController.clear();
  }

  @override
  void selectEngine() {
    transmissionController.clear();
    equipmentController.clear();
  }

  @override
  void selectTransmission() {
    transmissionController.clear();
    equipmentController.clear();
  }
}
