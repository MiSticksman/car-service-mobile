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
              'https://global.toyota/pages/global_toyota/mobility/toyota-brand/emblem_ogp_001.png'),
      CarBrand(
        id: 2,
        name: 'BMW',
        pictureUrl: 'https://fb.ru/misc/i/gallery/45538/1665345.jpg',
      ),
      CarBrand(
          id: 3,
          name: 'Audi',
          pictureUrl:
              'https://iconspng.com/_next/image?url=https%3A%2F%2Ficonspng.com%2Fimages%2Faudi-logo.jpg&w=1080&q=75'),
      CarBrand(
          id: 4,
          name: 'Volkswagen',
          pictureUrl:
              'https://w7.pngwing.com/pngs/65/409/png-transparent-volkswagen-logo-volkswagen-polo-car-honda-logo-car-logo-emblem-trademark-logo.png'),
      CarBrand(
        id: 5,
        name: 'Mercedes',
        pictureUrl:
            'https://cdn.icon-icons.com/icons2/2402/PNG/512/mercedes_benz_logo_icon_145798.png',
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
