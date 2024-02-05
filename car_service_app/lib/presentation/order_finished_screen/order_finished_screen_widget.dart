import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_finished_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderFinishedScreen module
@RoutePage()
class OrderFinishedScreenWidget extends ElementaryWidget<IOrderFinishedScreenWidgetModel> {
  const OrderFinishedScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOrderFinishedScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOrderFinishedScreenWidgetModel wm) {
    return Container();
  }
}
