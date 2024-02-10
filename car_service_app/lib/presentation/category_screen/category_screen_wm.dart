import 'package:car_service_app/domain/model/catalog/category.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'category_screen_model.dart';
import 'category_screen_widget.dart';

abstract interface class ICategoryScreenWidgetModel implements IWidgetModel, IThemeProvider {


  void openCategory(Category subcategory);
  EntityStateNotifier<List<Category>> get categoryState;
}

CategoryScreenWidgetModel defaultCategoryScreenWidgetModelFactory(
    BuildContext context) {
  return CategoryScreenWidgetModel(CategoryScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CategoryScreenWidget
class CategoryScreenWidgetModel
    extends WidgetModel<CategoryScreenWidget, CategoryScreenModel>
    with ThemeProvider
    implements ICategoryScreenWidgetModel {
  CategoryScreenWidgetModel(super.model);

  @override
  final EntityStateNotifier<List<Category>> categoryState =
      EntityStateNotifier();

  @override
  void openCategory(Category subcategory) {}

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    categoryState.content([]);
  }
}
