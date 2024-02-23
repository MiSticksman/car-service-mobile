import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'model_selection_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ModelSelectionScreen module
@RoutePage()
class ModelSelectionScreenWidget extends ElementaryWidget<IModelSelectionScreenWidgetModel> {
  const ModelSelectionScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultModelSelectionScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IModelSelectionScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(localizations.choosingCarModel),
        actions: const [CloseButton()],
      ),
      body: Column(
        children: [
          SearchWidget(
            controller: wm.searchController,
            hintText: localizations.carModelHintText,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {},
                child: Text('x5m'),
              );
            },
            itemCount: 30,
          ),
        ],
      ),
    );
  }
}
