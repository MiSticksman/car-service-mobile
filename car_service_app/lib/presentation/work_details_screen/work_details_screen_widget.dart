import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'work_details_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for WorkDetailsScreen module
class WorkDetailsScreenWidget extends ElementaryWidget<IWorkDetailsScreenWidgetModel> {
  const WorkDetailsScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultWorkDetailsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IWorkDetailsScreenWidgetModel wm) {
    return Container();
  }
}
