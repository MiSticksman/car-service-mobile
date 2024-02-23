import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/car_add/brand_selection_screen/components/brand_element.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'brand_selection_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for BrandSelectionScreen module
@RoutePage()
class BrandSelectionScreenWidget
    extends ElementaryWidget<IBrandSelectionScreenWidgetModel> {
  const BrandSelectionScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultBrandSelectionScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IBrandSelectionScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(localizations.choosingCarBrand),
        actions: const [CloseButton()],
      ),
      body: Column(
        children: [
          SearchWidget(
            controller: wm.searchController,
            hintText: localizations.carBrandHintText,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (_, index) {
              return BrandElement(url: 'url', brand: 'brand', onTap: () {});
            },
            itemCount: 30,
          ),
        ],
      ),
    );
  }
}
