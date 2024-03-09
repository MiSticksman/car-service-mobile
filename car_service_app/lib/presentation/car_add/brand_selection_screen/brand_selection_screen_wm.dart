import 'package:car_service_app/domain/model/car/car_brand.dart';
import 'package:car_service_app/presentation/car_add/model_selection_screen/model_selection_screen.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'brand_selection_screen_model.dart';
import 'brand_selection_screen_widget.dart';

abstract interface class IBrandSelectionScreenWidgetModel
    implements IWidgetModel, IThemeProvider {

  EntityStateNotifier<(List<CarBrand>, CarBrand?)> get brandsState;
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
    final brands = <CarBrand>[
      CarBrand(id: 1, name: ''),
      CarBrand(id: 2, name: ''),
      CarBrand(id: 3, name: ''),
      CarBrand(id: 4, name: ''),
      CarBrand(id: 5, name: ''),
    ];
    brandsState.content((brands, brands.firstOrNull));
  }

  @override
  void dispose() {
    searchController.dispose();
    brandsState.dispose();
    super.dispose();
  }

  @override
  final EntityStateNotifier<(List<CarBrand>, CarBrand?)> brandsState =
  EntityStateNotifier();

  @override
  Future<void> onBrandTap() async {
    await showCupertinoModalBottomSheet(
      useRootNavigator: true,
      enableDrag: false,
      context: router.navigatorKey.currentContext!,
      builder: (_) => const ModelSelectionScreenWidget(),
    );

  }


}
