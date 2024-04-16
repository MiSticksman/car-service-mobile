import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Route<T> modalBottomSheetBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  return CupertinoModalBottomSheetRoute(
    settings: page,
    containerBuilder: (context, _, child) => Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        child: SizedBox(
          width: double.infinity,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true, //Remove top Safe Area
            child: CupertinoUserInterfaceLevel(
              data: CupertinoUserInterfaceLevelData.elevated,
              child: child,
            ),
          ),
        ),
      ),
    ),
    enableDrag: true,
    expanded: false,
    builder: (context) => child,
  );
}
