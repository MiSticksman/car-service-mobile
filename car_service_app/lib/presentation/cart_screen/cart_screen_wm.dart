import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'cart_screen_model.dart';
import 'cart_screen_widget.dart';

abstract interface class ICartScreenWidgetModel implements IWidgetModel {
}

CartScreenWidgetModel defaultCartScreenWidgetModelFactory(BuildContext context) {
  return CartScreenWidgetModel(CartScreenModel());
}

// TODO: cover with documentation
/// Default widget model for CartScreenWidget
class CartScreenWidgetModel extends WidgetModel<CartScreenWidget, CartScreenModel>
    implements ICartScreenWidgetModel {

  CartScreenWidgetModel(super.model);
}
