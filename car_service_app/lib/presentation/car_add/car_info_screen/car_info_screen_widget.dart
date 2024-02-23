import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'car_info_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CarInfoScreen module
@RoutePage()
class CarInfoScreenWidget extends ElementaryWidget<ICarInfoScreenWidgetModel> {
  const CarInfoScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCarInfoScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICarInfoScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(localizations.carInfo),
        actions: const [CloseButton()],
      ),
      body: Column(
        children: [
          // DropdownMenu(dropdownMenuEntries: dropdownMenuEntries),
          Text('adada'),
        ],
      ),
    );
  }
}
