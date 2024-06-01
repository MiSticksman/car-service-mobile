import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/work_details_screen/components/work_detail_card.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'work_details_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for WorkDetailsScreen module
@RoutePage()
class WorkDetailsScreenWidget
    extends ElementaryWidget<IWorkDetailsScreenWidgetModel> {
  const WorkDetailsScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultWorkDetailsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IWorkDetailsScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(localizations.detailsSelection),
          automaticallyImplyLeading: false,
          actions: const [CloseWidget()],
        ),
        body: EntityStateNotifierBuilder(
          listenableEntityState: wm.carWorksDetailsState,
          loadingBuilder: (_, __) => const LoadingIndicator(),
          errorBuilder: (_, __, ___) =>
              const ErrorLoadingDataWidget(text: 'Ошибка при загрузке деталей'),
          builder: (BuildContext context, data) {
            final carWorksDetails = data?.$1 ?? [];
            final selectedWorksDetails = data?.$2 ?? [];
            if (carWorksDetails.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 1),
                    Flexible(
                      child: Text(
                        'Пусто',
                        textAlign: TextAlign.center,
                        style: wm.textTheme.bodyLarge,
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 130.0),
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Text(
                                localizations.carDetailsDescription,
                                textAlign: TextAlign.center,
                                style: wm.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 30.0,
                            ),
                            child: Text(
                              localizations.foundDetails,
                              textAlign: TextAlign.center,
                              style: wm.textTheme.displayMedium?.copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        SliverList.separated(
                          itemCount: carWorksDetails.length,
                          itemBuilder: (_, index) {
                            final carDetail = carWorksDetails[index];
                            final selected =
                                selectedWorksDetails.contains(carDetail);
                            return AspectRatio(
                              aspectRatio: 160 / 50,
                              child: WorkDetailCard(
                                wm: wm,
                                carDetail: carDetail,
                                selected: selected,
                              ),
                            );
                          },
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 12),
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                          ),
                          child: Text(
                            localizations.toOrderDescription,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 16.0,
                          ),
                          child: ElevatedButton(
                            onPressed: selectedWorksDetails.isEmpty
                                ? null
                                : wm.toOrderScreen,
                            child: Text(localizations.done),
                          ),
                        ),
                      ],
                    ),
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
