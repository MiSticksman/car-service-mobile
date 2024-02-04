import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'catalog_screen_model.dart';
import 'catalog_screen_widget.dart';

abstract interface class ICatalogScreenWidgetModel implements IWidgetModel {
}

CatalogScreenWidgetModel defaultCatalogScreenWidgetModelFactory(BuildContext context) {
  return CatalogScreenWidgetModel(CatalogScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CatalogScreenWidget
class CatalogScreenWidgetModel extends WidgetModel<CatalogScreenWidget, CatalogScreenModel>
    implements ICatalogScreenWidgetModel {

  CatalogScreenWidgetModel(super.model);
}
