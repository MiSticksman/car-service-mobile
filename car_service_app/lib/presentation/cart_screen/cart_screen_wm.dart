import 'package:car_service_app/domain/use_case/cart_use_case.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_screen_model.dart';
import 'cart_screen_widget.dart';

abstract interface class ICartScreenWidgetModel
    implements IWidgetModel, IThemeProvider {

  CartUseCase get cartUseCase;
}

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

  @override
  CartUseCase get cartUseCase => context.read<CartUseCase>();
}
