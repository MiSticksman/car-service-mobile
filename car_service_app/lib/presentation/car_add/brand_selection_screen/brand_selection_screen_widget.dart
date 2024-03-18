import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/car_add/brand_selection_screen/components/brand_element.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
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
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.brandsState,
      builder: (BuildContext context, data) {
        final brands = data?.$1 ?? [];
        final selectedBrand = data?.$2;
        if (brands.isEmpty) {
          return const Center(child: Text(''),);
        }
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(localizations.choosingCarBrand),
            actions: const [CloseButton()],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SearchWidget(
                    controller: wm.searchController,
                    hintText: localizations.carBrandHintText,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 4, right: 4),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (_, index) {
                        final brand = brands[index];
                        return BrandElement(
                          url: 'url',
                          brand: brand,
                          onTap: () => wm.onBrandTap(brand),
                          selected: brand == selectedBrand,
                        );
                      },
                      itemCount: brands.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,

              vertical: 16,
            ),
            child: ElevatedButton(
              onPressed: selectedBrand == null ? null : wm.toSpecifyCarModel,
              child: Text(localizations.selectModel),
            ),
          ),
        );
      },
    );
  }
}
