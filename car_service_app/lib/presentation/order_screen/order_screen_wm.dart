import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_screen_model.dart';
import 'order_screen_widget.dart';

abstract interface class IOrderScreenWidgetModel implements IWidgetModel, IThemeProvider {
}

OrderScreenWidgetModel defaultOrderScreenWidgetModelFactory(BuildContext context) {
  return OrderScreenWidgetModel(OrderScreenModel());
}

// TODO: cover with documentation
/// Default widget model for OrderScreenWidget
class OrderScreenWidgetModel extends WidgetModel<OrderScreenWidget, OrderScreenModel>
    with ThemeProvider
    implements IOrderScreenWidgetModel {

  OrderScreenWidgetModel(OrderScreenModel model) : super(model);
}
