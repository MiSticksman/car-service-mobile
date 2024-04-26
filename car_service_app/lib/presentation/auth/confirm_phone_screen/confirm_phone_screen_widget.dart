import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'confirm_phone_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ConfirmPhoneScreen module

@RoutePage()
class ConfirmPhoneScreenWidget extends ElementaryWidget<IConfirmPhoneScreenWidgetModel> {
  const ConfirmPhoneScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultConfirmPhoneScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IConfirmPhoneScreenWidgetModel wm) {
    return Container();
  }
}
