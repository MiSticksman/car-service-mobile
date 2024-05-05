import 'package:car_service_app/presentation/map_screen/map_screen.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'order_screen_model.dart';
import 'order_screen_widget.dart';

abstract interface class IOrderScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  void showMap();
}

OrderScreenWidgetModel defaultOrderScreenWidgetModelFactory(
    BuildContext context) {
  return OrderScreenWidgetModel(OrderScreenModel());
}

// TODO: cover with documentation
/// Default widget model for OrderScreenWidget
class OrderScreenWidgetModel
    extends WidgetModel<OrderScreenWidget, OrderScreenModel>
    with ThemeProvider
    implements IOrderScreenWidgetModel {
  OrderScreenWidgetModel(super.model);

  @override
  void showMap() {
    // router.navigate(MapRoute());
    showCupertinoModalBottomSheet(
      context: context,
      enableDrag: false,
      builder: (_) => const MapScreenWidget(),
    );
  }
}
