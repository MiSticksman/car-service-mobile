import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/work_details_screen/components/work_detail_card.dart';
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
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 21.0,
                        bottom: 24.0,
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
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            localizations.carDetailsDescription,
                            textAlign: TextAlign.center,
                            style: wm.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onBackground,
                            ),
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                  ),
                  SliverList.separated(
                    itemCount: carWorksDetails.length,
                    itemBuilder: (_, index) {
                      final carDetail = carWorksDetails[index];
                      return AspectRatio(
                        aspectRatio: 160 / 50,
                        child: WorkDetailCard(
                          wm: wm,
                          carDetail: carDetail,
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 26.0,
                        horizontal: 24.0,
                      ),
                      child: Text(
                        localizations.toOrderDescription,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        bottom: 16.0,
                      ),
                      child: OutlinedButton(
                        onPressed: null,
                        child: Text(localizations.done),
                      ),
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
