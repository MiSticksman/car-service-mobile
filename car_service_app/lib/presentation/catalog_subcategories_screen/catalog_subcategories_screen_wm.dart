import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'catalog_subcategories_screen_model.dart';
import 'catalog_subcategories_screen_widget.dart';

abstract interface class ICatalogSubcategoriesScreenWidgetModel
    implements IWidgetModel {}

CatalogSubcategoriesScreenWidgetModel
    defaultCatalogSubcategoriesScreenWidgetModelFactory(BuildContext context) {
  return CatalogSubcategoriesScreenWidgetModel(
      CatalogSubcategoriesScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CatalogSubcategoriesScreenWidget
class CatalogSubcategoriesScreenWidgetModel extends WidgetModel<
        CatalogSubcategoriesScreenWidget, CatalogSubcategoriesScreenModel>
    implements ICatalogSubcategoriesScreenWidgetModel {
  CatalogSubcategoriesScreenWidgetModel(super.model);
}
