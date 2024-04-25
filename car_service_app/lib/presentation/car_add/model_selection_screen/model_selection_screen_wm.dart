import 'package:car_service_app/domain/model/car/car_model.dart';
import 'package:car_service_app/presentation/car_add/car_add_screen/car_add_screen.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'model_selection_screen_model.dart';
import 'model_selection_screen_widget.dart';

abstract interface class IModelSelectionScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get searchController;

  EntityStateNotifier<(List<CarModel>, CarModel?)> get modelsState;

  void onModelTap(CarModel? model);

  void toCarAdd();
}

ModelSelectionScreenWidgetModel defaultModelSelectionScreenWidgetModelFactory(
    BuildContext context) {
  return ModelSelectionScreenWidgetModel(ModelSelectionScreenModel());
}

// TODO: cover with documentation
/// Default widget model for ModelSelectionScreenWidget
class ModelSelectionScreenWidgetModel
    extends WidgetModel<ModelSelectionScreenWidget, ModelSelectionScreenModel>
    with ThemeProvider
    implements IModelSelectionScreenWidgetModel {
  ModelSelectionScreenWidgetModel(super.model);

  @override
  final TextEditingController searchController = TextEditingController();

  @override
  final EntityStateNotifier<(List<CarModel>, CarModel?)> modelsState =
      EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    final models = <CarModel>[
      CarModel(id: 1, name: 'mark 2'),
      CarModel(id: 2, name: 'camry'),
      CarModel(id: 3, name: 'cc'),
      CarModel(id: 4, name: 'dd'),
      CarModel(id: 5, name: 'ee'),
    ];
    modelsState.content((models, null));
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  void onModelTap(CarModel? model) {
    final models = modelsState.value.data?.$1 ?? [];
    modelsState.content((models, model));
  }

  @override
  void toCarAdd() {
    router.navigate(CarAddRoute());
  }
}
