import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'model_selection_screen_model.dart';
import 'model_selection_screen_widget.dart';

abstract interface class IModelSelectionScreenWidgetModel implements IWidgetModel, IThemeProvider {

  TextEditingController get searchController;
}

ModelSelectionScreenWidgetModel defaultModelSelectionScreenWidgetModelFactory(BuildContext context) {
  return ModelSelectionScreenWidgetModel(ModelSelectionScreenModel());
}

// TODO: cover with documentation
/// Default widget model for ModelSelectionScreenWidget
class ModelSelectionScreenWidgetModel extends WidgetModel<ModelSelectionScreenWidget, ModelSelectionScreenModel>
    with ThemeProvider
    implements IModelSelectionScreenWidgetModel {

  ModelSelectionScreenWidgetModel(super.model);

  @override
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
