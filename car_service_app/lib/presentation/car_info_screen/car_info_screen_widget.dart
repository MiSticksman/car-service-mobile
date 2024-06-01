import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/presentation/ui_util/car_card.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/ui_util/custom_text_button.dart';
import 'package:car_service_app/presentation/ui_util/custom_text_field.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'car_info_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CarInfoScreen module
@RoutePage()
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
    final theme = wm.theme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(localizations.carInfo),
          actions: const [CloseWidget()],
        ),
        body: UnfocusWidget(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CarCard(
                          width: 180,
                          height: 160,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${car.brand} ${car.model}',
                              style: wm.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '${car.year}',
                              style: wm.textTheme.bodyLarge?.copyWith(
                                color: theme.colorScheme.onSecondary,
                              ),
                            ),
                            const SizedBox(height: 8),
                            CustomTextButton(
                              onTap: () => wm.deleteCar(car.id),
                              text: localizations.deleteCar,
                              iconData: Icons.delete_outline,
                            ),
                          ],
                        ),
                        const Spacer(flex: 10),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Divider(indent: 17, endIndent: 17),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Двигатель: ', style: wm.textTheme.displayLarge),
                        Text(
                          '1JZ-GE',
                          style: wm.textTheme.displayMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Text('Трансмиссия: ', style: wm.textTheme.displayLarge),
                        Text(
                          'АКПП 4',
                          style: wm.textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: SizedBox(
                        width: 150,
                        height: 60,
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                controller: wm.mileageController,
                                keyboardType: TextInputType.number,
                                hintText: localizations.mileage,
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
                    CustomTextField(
                      controller: wm.descriptionController,
                      maxLines: null,
                      hintText: localizations.carDescription,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 70.0,
            vertical: 24,
          ),
          child: ElevatedButton(
            onPressed: wm.complete,
            child: Text(localizations.done),
          ),
        ),
      ),
    );
  }
}
