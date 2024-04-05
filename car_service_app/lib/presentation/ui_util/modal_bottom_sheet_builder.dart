import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Route<T> modalBottomSheetBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  return CupertinoModalBottomSheetRoute(
    settings: page,
    enableDrag: false,
    expanded: false,
    builder: (context) => child,
  );
}
