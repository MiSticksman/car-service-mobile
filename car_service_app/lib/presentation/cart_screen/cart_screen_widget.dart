import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'cart_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CartScreen module
@RoutePage()
class CartScreenWidget extends ElementaryWidget<ICartScreenWidgetModel> {
  const CartScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartScreenWidgetModel wm) {
    return Container();
  }
}
