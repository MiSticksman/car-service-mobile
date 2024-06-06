import 'package:car_service_app/domain/model/car/car_brand.dart';
import 'package:car_service_app/presentation/car_add/model_selection_screen/model_selection_screen.dart';
import 'package:car_service_app/router/app_router.dart';
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

  void onBrandTap(CarBrand? brand);

  void toSpecifyCarModel();
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
  final EntityStateNotifier<(List<CarBrand>, CarBrand?)> brandsState =
      EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    final brands = <CarBrand>[
      CarBrand(
          id: 1,
          name: 'Toyota',
          pictureUrl:
              'assets/svg/toyota.svg'),
      CarBrand(
        id: 2,
        name: 'BMW',
        pictureUrl: 'assets/svg/bmw.svg',
      ),
      CarBrand(
          id: 3,
          name: 'Audi',
          pictureUrl:
              'assets/svg/audi.svg'),
      CarBrand(
          id: 4,
          name: 'Volkswagen',
          pictureUrl:
              'assets/svg/volkswagen.svg'),
      CarBrand(
        id: 5,
        name: 'Mercedes',
        pictureUrl:
            'assets/svg/mercedes.svg',
      ),
    ];
    brandsState.content((brands, null));
  }

  @override
  void dispose() {
    searchController.dispose();
    brandsState.dispose();
    super.dispose();
  }

  @override
  Future<void> onBrandTap(CarBrand? brand) async {
    final brands = brandsState.value.data?.$1 ?? [];
    brandsState.content((brands, brand));
  }

  @override
  void toSpecifyCarModel() {
    router.navigate(ModelSelectionRoute());
  }
}
