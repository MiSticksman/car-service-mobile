import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderScreen module
@RoutePage()
class OrderScreenWidget extends ElementaryWidget<IOrderScreenWidgetModel> {
  const OrderScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOrderScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOrderScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.detailsSelection),
        automaticallyImplyLeading: false,
        actions: const [CloseWidget()],
      ),
      body: Container(
        child: Center(
          child: Text('order'),
        ),
      ),
    );
  }
}
