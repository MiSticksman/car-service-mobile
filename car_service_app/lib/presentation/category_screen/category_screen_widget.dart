import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/app/app_text.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'category_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CategoryScreen module
@RoutePage()
class CategoryScreenWidget
    extends ElementaryWidget<ICategoryScreenWidgetModel> {
  const CategoryScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCategoryScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICategoryScreenWidgetModel wm) {
    return Scaffold(
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.categoryState,
        loadingBuilder: (_, __) => Container(),
        builder: (BuildContext context, data) {
          final localizations = wm.localizations;
          return Scaffold(
            appBar: AppBar(
              title: Text('aaaaaa'),
              centerTitle: true,
              leading: wm.router.canPop()
                  ? const BackButton(color: AppColor.black)
                  : null,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ListView.separated(
                itemBuilder: (context, index) => AspectRatio(
                  aspectRatio: 330 / 70,
                  child: Card(
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
                          'Фильтры',
                          // style: AppText.normal16,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemCount: 10,
              ),
            ),
          );
        },
      ),
    );
  }
}
