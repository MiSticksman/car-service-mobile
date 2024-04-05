import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/domain/model/work/work.dart';
import 'package:car_service_app/presentation/work_details_screen/components/empty_works_widget.dart';
import 'package:car_service_app/presentation/works_screen/components/work_card.dart';
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
    final theme = wm.theme;
    return SafeArea(
      child: Scaffold(
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
            final selectedWorks = data?.$2 ?? [];
            // if (selectedCar == null) {
            //   return EmptyWorksWidget(
            //     addCar: wm.toCarAddScreen,
            //   );
            // }
            return Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 16,
                right: 16,
              ),
              child: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Text(
                          '${localizations.presentedWorks} Toyota Mark II',
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
                                child: Text(localizations.selectAnotherCar),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 12)),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        sliver: SliverList.separated(
                          itemBuilder: (_, index) {
                            final work = works[index];
                            final selected = selectedWorks.contains(work);
                            return AspectRatio(
                              aspectRatio: 300 / 70,
                              child: WorkCard(
                                work: work,
                                onTap: () => wm.selectWork(work),
                                selected: selected,
                                theme: theme,
                              ),
                            );
                          },
                          separatorBuilder: (_, index) =>
                              const SizedBox(height: 12),
                          itemCount: works.length,
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 70,
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: OutlinedButton(
                        onPressed: selectedWorks.isEmpty
                            ? null
                            : wm.toWorkDetailsScreen,
                        child: Text(localizations.selectDetails),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
