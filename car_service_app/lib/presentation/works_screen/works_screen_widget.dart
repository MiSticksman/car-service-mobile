import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
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
    return Container();
  }
}
