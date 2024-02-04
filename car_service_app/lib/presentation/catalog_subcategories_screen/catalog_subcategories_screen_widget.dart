import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'catalog_subcategories_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CatalogSubcategoriesScreen module
@RoutePage()
class CatalogSubcategoriesScreenWidget
    extends ElementaryWidget<ICatalogSubcategoriesScreenWidgetModel> {
  const CatalogSubcategoriesScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultCatalogSubcategoriesScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICatalogSubcategoriesScreenWidgetModel wm) {
    return Container();
  }
}
