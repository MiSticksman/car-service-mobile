import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(localizations.choosingCarModel),
        actions: const [CloseButton()],
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
                return GestureDetector(
                  onTap: (){},
                  child: Card(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('x5m'),
                    ),
                  ),
                );
              },
              childCount: 30,
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
          onPressed: wm.toCarAdd,
          child: Text(localizations.selectYear),
        ),
      ),
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
