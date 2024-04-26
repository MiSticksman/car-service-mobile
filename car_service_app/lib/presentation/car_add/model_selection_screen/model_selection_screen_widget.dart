import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model_selection_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ModelSelectionScreen module
@RoutePage()
class ModelSelectionScreenWidget
    extends ElementaryWidget<IModelSelectionScreenWidgetModel> {
  const ModelSelectionScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultModelSelectionScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IModelSelectionScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return EntityStateNotifierBuilder(
      listenableEntityState: wm.modelsState,
      builder: (BuildContext context, data) {
        final models = data?.$1 ?? [];
        final selectedModel = data?.$2;
        return SafeArea(
          child: UnfocusWidget(
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text(localizations.choosingCarModel),
                actions: const [CloseWidget()],
              ),
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SearchWidget(
                      controller: wm.searchController,
                      hintText: localizations.carModelHintText,
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      top: 23.0,
                      left: 20,
                      right: 20,
                    ),
                    sliver: SliverGrid.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 23,
                        crossAxisSpacing: 28,
                      ),
                      itemBuilder: (_, index) {
                        final model = models[index];
                        final selected = selectedModel == model;
                        return GestureDetector(
                          onTap: () => wm.onModelTap(model),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                                  color: wm.theme.colorScheme.tertiary,
                                  border: selected ? Border.all(
                                    width: 3,
                                    color: wm.theme.colorScheme.onBackground,
                                  ) : null,
                                ),
                                child: const Center(
                                  child: Text('x5m'),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: models.length,
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90.0,
                  vertical: 24,
                ),
                child: OutlinedButton(
                  onPressed: selectedModel == null ? null : wm.toCarAdd,
                  child: Text(localizations.further),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
