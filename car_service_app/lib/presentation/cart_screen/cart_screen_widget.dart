import 'package:auto_route/auto_route.dart';
import 'package:car_service_app/generated/app_localizations.dart';
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
    final AppLocalizations localizations = wm.localizations;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.cartTitle),
      ),
      body: Container(child: Center(child: Text(wm.cartUseCase.test),),),
    );
  }
}
