import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_finished_screen_model.dart';
import 'order_finished_screen_widget.dart';

abstract interface class IOrderFinishedScreenWidgetModel implements IWidgetModel {
}

OrderFinishedScreenWidgetModel defaultOrderFinishedScreenWidgetModelFactory(BuildContext context) {
  return OrderFinishedScreenWidgetModel(OrderFinishedScreenModel());
}

// TODO: cover with documentation
/// Default widget model for OrderFinishedScreenWidget
class OrderFinishedScreenWidgetModel extends WidgetModel<OrderFinishedScreenWidget, OrderFinishedScreenModel>
    implements IOrderFinishedScreenWidgetModel {

  OrderFinishedScreenWidgetModel(OrderFinishedScreenModel model) : super(model);
}
