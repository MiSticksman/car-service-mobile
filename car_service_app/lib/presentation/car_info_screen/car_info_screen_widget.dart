import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'car_info_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CarInfoScreen module
class CarInfoScreenWidget extends ElementaryWidget<ICarInfoScreenWidgetModel> {
  final Car car;
  const CarInfoScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCarInfoScreenWidgetModelFactory,
    required this.car,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICarInfoScreenWidgetModel wm) {
    final localizations = wm.localizations;
    const border = OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: AppColor.transparent),
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(localizations.carInfo),
        actions: const [CloseButton()],
      ),
      body: UnfocusWidget(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${car.brand}',
                        style: wm.textTheme.displayLarge,
                      ),
                        SizedBox(
                          width: 130,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () => wm.deleteCar(car.id),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.orange,
                                padding: EdgeInsets.zero),
                            child: Text(localizations.deleteCar),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      '${car.model} ${car.year}',
                      style: wm.textTheme.displayMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                      width: 130,
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: wm.mileageController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: border,
                                focusedErrorBorder: border,
                                disabledBorder: border,
                                enabledBorder: border,
                                border: border,
                                filled: true,
                                fillColor: AppColor.lightGrayEB,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                hintText: localizations.mileage,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            localizations.kilometers,
                            style: wm.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    maxLines: null,
                    controller: wm.descriptionController,
                    decoration: InputDecoration(
                      focusedBorder: border,
                      focusedErrorBorder: border,
                      disabledBorder: border,
                      enabledBorder: border,
                      border: border,
                      filled: true,
                      fillColor: AppColor.lightGrayEB,
                      contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 30),
                      hintText: localizations.carDescription,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 16,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(localizations.done),
        ),
      ),
    );
  }
}
