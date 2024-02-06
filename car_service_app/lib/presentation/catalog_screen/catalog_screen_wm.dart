import 'package:car_service_app/domain/use_case/profile_use_case.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'catalog_screen_model.dart';
import 'catalog_screen_widget.dart';

abstract interface class ICatalogScreenWidgetModel
    implements IWidgetModel, IThemeProvider {



}

CatalogScreenWidgetModel defaultCatalogScreenWidgetModelFactory(
    BuildContext context) {
  return CatalogScreenWidgetModel(CatalogScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CatalogScreenWidget
class CatalogScreenWidgetModel
    extends WidgetModel<CatalogScreenWidget, CatalogScreenModel>
    with ThemeProvider
    implements ICatalogScreenWidgetModel {
  CatalogScreenWidgetModel(super.model);



}
