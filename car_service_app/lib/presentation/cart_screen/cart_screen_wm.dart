import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'cart_screen_model.dart';
import 'cart_screen_widget.dart';

abstract interface class ICartScreenWidgetModel
    implements IWidgetModel, IThemeProvider {}

CartScreenWidgetModel defaultCartScreenWidgetModelFactory(
    BuildContext context) {
  return CartScreenWidgetModel(CartScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CartScreenWidget
class CartScreenWidgetModel
    extends WidgetModel<CartScreenWidget, CartScreenModel>
    with ThemeProvider
    implements ICartScreenWidgetModel {
  CartScreenWidgetModel(super.model);
}
