import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'works_screen_model.dart';
import 'works_screen_widget.dart';

abstract interface class IWorksScreenWidgetModel implements IWidgetModel, IThemeProvider {
}

WorksScreenWidgetModel defaultWorksScreenWidgetModelFactory(BuildContext context) {
  return WorksScreenWidgetModel(WorksScreenModel());
}

// TODO: cover with documentation
/// Default widget model for WorksScreenWidget
class WorksScreenWidgetModel extends WidgetModel<WorksScreenWidget, WorksScreenModel>
    with ThemeProvider
    implements IWorksScreenWidgetModel {

  WorksScreenWidgetModel(super.model);
}
