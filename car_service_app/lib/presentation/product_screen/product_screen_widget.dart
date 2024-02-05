import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'product_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProductScreen module
@RoutePage()
class ProductScreenWidget extends ElementaryWidget<IProductScreenWidgetModel> {
  const ProductScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProductScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProductScreenWidgetModel wm) {
    return Container();
  }
}
