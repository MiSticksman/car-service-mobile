import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/presentation/ui_util/car_card.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/ui_util/custom_text_button.dart';
import 'package:car_service_app/presentation/works_screen/components/work_card.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';

import 'components/empty_works_widget.dart';

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
          actions: const [CloseWidget()],
        ),
        body: EntityStateNotifierBuilder(
          listenableEntityState: wm.worksState,
          loadingBuilder: (_, __) => const LoadingIndicator(),
          errorBuilder: (_, __, ___) =>
              const ErrorLoadingDataWidget(text: 'Ошибка при загрузке работ'),
          builder: (BuildContext context, data) {
            final works = data?.$1 ?? [];
            final selectedWorks = data?.$2 ?? [];
            if (works.isEmpty) {
              return EmptyWorksWidget(
                addCar: wm.toCarAddScreen,
              );
            }
            return Padding(
              padding: const EdgeInsets.only(
                top: 21,
                left: 18,
                right: 18,
              ),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100.0),
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => wm.toCarInfoScreen(
                                        Car(
                                            id: 1,
                                            brand: 'Toyota',
                                            model: 'Mark II',
                                            year: 2014),
                                      ),
                                      child: CarCard(
                                        width: 80,
                                        height: 70,
                                      ),
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Toyota Mark',
                                          style: wm.textTheme.bodySmall,
                                        ),
                                        Text(
                                          '1996',
                                          style:
                                              wm.textTheme.bodySmall?.copyWith(
                                            color: theme.colorScheme.onTertiary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 3),
                                    CustomTextButton(
                                      onTap: wm.toMyCarsScreen,
                                      text: localizations.selectAnotherCar,
                                      iconData: Icons.search,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Divider(),
                              ],
                            ),
                          ),
                        ),
                        const SliverToBoxAdapter(child: SizedBox(height: 10)),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          sliver: SliverList.separated(
                            itemBuilder: (_, index) {
                              final work = works[index];
                              final selected = selectedWorks.contains(work);
                              return WorkCard(
                                work: work,
                                onTap: () => wm.selectWork(work),
                                selected: selected,
                                theme: theme,
                              );
                            },
                            separatorBuilder: (_, index) =>
                                const SizedBox(height: 12),
                            itemCount: works.length,
                          ),
                        ),
                        // SliverToBoxAdapter(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(
                        //       top: 18.0,
                        //       bottom: 22.0,
                        //     ),
                        //     child: Text(
                        //       localizations.toWorksDetailsDescription,
                        //       textAlign: TextAlign.center,
                        //       style: theme.textTheme.bodySmall?.copyWith(
                        //         color: theme.colorScheme.onBackground,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // SliverToBoxAdapter(
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(
                        //       left: 20.0,
                        //       right: 20.0,
                        //       bottom: 16.0,
                        //     ),
                        //     child: OutlinedButton(
                        //       onPressed: selectedWorks.isEmpty
                        //           ? null
                        //           : wm.toWorkDetailsScreen,
                        //       child: Text(localizations.done),
                        //     ),
                        //   ),
                        // ),
                        const SliverToBoxAdapter(child: SizedBox(height: 50)),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 18.0,
                            bottom: 22.0,
                          ),
                          child: Text(
                            localizations.toWorksDetailsDescription,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 16
                          ),
                          child: OutlinedButton(
                            onPressed: selectedWorks.isEmpty
                                ? null
                                : wm.toWorkDetailsScreen,
                            child: Text(localizations.selectDetails),
                          ),
                        ),
                      ],
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
