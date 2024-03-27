import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'works_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for WorksScreen module
@RoutePage()
class WorksScreenWidget extends ElementaryWidget<IWorksScreenWidgetModel> {
  const WorksScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultWorksScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IWorksScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.workSelection),
        automaticallyImplyLeading: false,
        actions: const [CloseButton()],
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.worksState,
        loadingBuilder: (_, __) => const LoadingIndicator(),
        builder: (BuildContext context, data) {
          final works = data?.$1 ?? [];
          final selectedWork = data?.$2;
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Text(
                    'Работы представлены для автомобиля Toyota Mark II',
                    style: wm.textTheme.displaySmall,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => wm.toCarInfoScreen(
                            Car(
                                id: 1,
                                brand: 'Toyota',
                                model: 'Mark II',
                                year: 2014),
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                Image.asset('assets/toyota.png').image,
                          ),
                        ),
                        TextButton(
                          onPressed: wm.toMyCarsScreen,
                          child: Text('Выбрать другое авто'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 12)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  sliver: SliverList.separated(
                    itemBuilder: (_, index) {
                      final work = works[index];
                      return AspectRatio(
                        aspectRatio: 300 / 70,
                        child: GestureDetector(
                          onTap: wm.toWorkDetailsScreen,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: wm.theme.colorScheme.onBackground),
                                borderRadius: BorderRadius.circular(10)),
                            color: AppColor.whiteF8,
                            elevation: 0.3,
                            child: Center(
                              child: Text(
                                work.name ?? '',
                                style: wm.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, index) => const SizedBox(height: 12),
                    itemCount: works.length,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
