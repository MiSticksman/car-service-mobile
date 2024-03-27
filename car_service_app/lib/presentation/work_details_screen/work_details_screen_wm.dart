import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'work_details_screen_model.dart';
import 'work_details_screen_widget.dart';

abstract interface class IWorkDetailsScreenWidgetModel
    implements IWidgetModel, IThemeProvider {}

WorkDetailsScreenWidgetModel defaultWorkDetailsScreenWidgetModelFactory(
    BuildContext context) {
  return WorkDetailsScreenWidgetModel(WorkDetailsScreenModel());
}

// TODO: cover with documentation
/// Default widget model for WorkDetailsScreenWidget
class WorkDetailsScreenWidgetModel
    extends WidgetModel<WorkDetailsScreenWidget, WorkDetailsScreenModel>
    with ThemeProvider
    implements IWorkDetailsScreenWidgetModel {
  WorkDetailsScreenWidgetModel(super.model);
}
