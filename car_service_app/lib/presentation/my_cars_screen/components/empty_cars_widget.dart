import 'package:car_service_app/presentation/my_cars_screen/my_cars_screen.dart';
import 'package:flutter/material.dart';

class EmptyCarsWidget extends StatelessWidget {
  final IMyCarsScreenWidgetModel wm;

  const EmptyCarsWidget({
    super.key,
    required this.wm,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              wm.localizations.emptyCarList,
              style: wm.textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: wm.toBrandSelection,
            child: Center(
              child: Text(wm.localizations.addCar),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
