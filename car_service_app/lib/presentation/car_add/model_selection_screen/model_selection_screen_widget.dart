import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
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
        return Scaffold(
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
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (_, index) {
                    final model = models[index];
                    return GestureDetector(
                      onTap: () => wm.onModelTap(model),
                      child: Stack(
                        children: [
                          Card(
                            color: selectedModel == model ? wm.theme.colorScheme.onSecondary : null,
                            child: const Center(
                              child: Text('x5m'),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: models.length,
                ),
              ),
              // SliverPersistentHeader(
              //   pinned: true,
              //   delegate: SliverButton(wm: wm),
              // ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 16,
            ),
            child: ElevatedButton(
              onPressed: selectedModel == null ? null : wm.toCarAdd,
              child: Text(localizations.further),
            ),
          ),
        );
      },
    );
  }
}

class SliverButton extends SliverPersistentHeaderDelegate {
  final IModelSelectionScreenWidgetModel wm;

  SliverButton({required this.wm});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ElevatedButton(
      onPressed: wm.toCarAdd,
      child: Text(''),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 60;

  @override
  // TODO: implement minExtent
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
