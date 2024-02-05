import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_screen_model.dart';
import 'order_screen_widget.dart';

abstract interface class IOrderScreenWidgetModel implements IWidgetModel {
}

OrderScreenWidgetModel defaultOrderScreenWidgetModelFactory(BuildContext context) {
  return OrderScreenWidgetModel(OrderScreenModel());
}

// TODO: cover with documentation
/// Default widget model for OrderScreenWidget
class OrderScreenWidgetModel extends WidgetModel<OrderScreenWidget, OrderScreenModel>
    implements IOrderScreenWidgetModel {

  OrderScreenWidgetModel(OrderScreenModel model) : super(model);
}
