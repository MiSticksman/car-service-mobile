import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/app/app_text.dart';
import 'package:car_service_app/presentation/my_cars_screen/components/empty_cars_widget.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'my_cars_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for MyCarsScreen module
@RoutePage()
class MyCarsScreenWidget extends ElementaryWidget<IMyCarsScreenWidgetModel> {
  const MyCarsScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultMyCarsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IMyCarsScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(localizations.myCars),
          automaticallyImplyLeading: false,
          actions: const [CloseButton()],
        ),
        body: EntityStateNotifierBuilder(
          listenableEntityState: wm.carsState,
          loadingBuilder: (_, __) => const LoadingIndicator(),
          builder: (context, data) {
            final cars = data?.$1 ?? [];
            final selected = data?.$2;
            if (cars.isEmpty) {
              return EmptyCarsWidget(
                wm: wm,
              );
            }
            return Padding(
              padding: const EdgeInsets.all(20),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ElevatedButton(
                        onPressed: wm.toBrandSelection,
                        child: Center(
                          child: Text(localizations.addCar),
                        ),
                      ),
                    ),
                  ),
                  SliverList.separated(
                    itemBuilder: (_, index) {
                      final car = cars[index];
                      return AspectRatio(
                        aspectRatio: 347 / 105,
                        child: InkWell(
                          onTap: () => wm.toCarInfo(car),
                          child: Card(
                            // color: car == selected ? AppColor.greyD1 : AppColor.white,
                            color: AppColor.white,
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: '',
                                  errorWidget: (_, __, error) => Image.asset(
                                    'assets/no_image.jpeg',
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Toyota Mark II 1996',
                                  style: AppText.normal16
                                      .copyWith(color: AppColor.black1F),
                                ),
                                const Spacer(),
                                Radio(
                                  value: car,
                                  groupValue: selected,
                                  onChanged: (value) {
                                    wm.selectCar(car);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: cars.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
