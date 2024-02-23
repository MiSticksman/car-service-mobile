import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'brand_selection_screen_model.dart';
import 'brand_selection_screen_widget.dart';

abstract interface class IBrandSelectionScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get searchController;

  void onBrandTap();
}

BrandSelectionScreenWidgetModel defaultBrandSelectionScreenWidgetModelFactory(
    BuildContext context) {
  return BrandSelectionScreenWidgetModel(BrandSelectionScreenModel());
}

// TODO: cover with documentation
/// Default widget model for BrandSelectionScreenWidget
class BrandSelectionScreenWidgetModel
    extends WidgetModel<BrandSelectionScreenWidget, BrandSelectionScreenModel>
    with ThemeProvider
    implements IBrandSelectionScreenWidgetModel {
  BrandSelectionScreenWidgetModel(super.model);

  @override
  final searchController = TextEditingController();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Future<void> onBrandTap() async {

  }


}
