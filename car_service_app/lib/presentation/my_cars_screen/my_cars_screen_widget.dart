import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/app/app_text.dart';
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
    return Scaffold(
      backgroundColor: AppColor.whiteF8,
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.carsState,
        loadingBuilder: (_, __) => const LoadingIndicator(),
        builder: (BuildContext context, data) {
          final localizations = wm.localizations;
          return Scaffold(
            appBar: AppBar(
              title: Text(localizations.myCars),
              leading: wm.router.canPop()
                  ? const BackButton(color: AppColor.black)
                  : null,

            ),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20,
              ),
              child: ListView.separated(
                itemBuilder: (context, index) => AspectRatio(
                  aspectRatio: 347 / 105,
                  child: Card(
                    // color: selected ? AppColor.greyD1 : AppColor.white,
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
                          style: AppText.normal16.copyWith(
                            color: AppColor.black1F
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemCount: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}