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
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 150.0),
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
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
                                        year: 2014,
                                      ),
                                    ),
                                    child: CarCard(
                                      width: 140,
                                      height: 120,
                                    ),
                                  ),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Toyota Mark II',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            wm.textTheme.bodyLarge?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '1996',
                                        style:
                                            wm.textTheme.bodyLarge?.copyWith(
                                          color:
                                              theme.colorScheme.onSecondary,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      CustomTextButton(
                                        onTap: wm.toMyCarsScreen,
                                        text: localizations.selectAnotherCar,
                                        iconData: Icons.change_circle,
                                      ),
                                    ],
                                  ),
                                  const Spacer(flex: 10),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Divider(),
                            ],
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
                                const SizedBox(height: 8),
                            itemCount: works.length,
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(height: 50),
                        ),
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
                              color: theme.colorScheme.primary,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 16,
                          ),
                          child: ElevatedButton(
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
