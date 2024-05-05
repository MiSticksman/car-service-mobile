import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/my_cars_screen/components/empty_cars_widget.dart';
import 'package:car_service_app/presentation/ui_util/car_card.dart';
import 'package:car_service_app/presentation/ui_util/circle_button.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_cars_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for MyCarsScreen module
@RoutePage()
class MyCarsScreenWidget extends ElementaryWidget<IMyCarsScreenWidgetModel> {
  const MyCarsScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultMyCarsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IMyCarsScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.myCars),
        automaticallyImplyLeading: false,
        actions: const [CloseWidget()],
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.carsState,
        loadingBuilder: (_, __) => const LoadingIndicator(),
        errorBuilder: (_, __, ___) =>
            const ErrorLoadingDataWidget(text: 'Ошибка при загрузке машин'),
        builder: (context, data) {
          final cars = data?.$1 ?? [];
          final selectedCar = data?.$2;
          if (cars.isEmpty) {
            return EmptyCarsWidget(
              wm: wm,
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            localizations.addCar,
                            style: wm.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        CircleButton(onTap: wm.toBrandSelection),
                      ],
                    ),
                  ),
                ),
                SliverList.separated(
                  itemBuilder: (_, index) {
                    final car = cars[index];
                    final selected = car == selectedCar;
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 8,
                      child: InkWell(
                        onTap: () => wm.toCarInfo(car),
                        child: Container(
                          color: selected ? theme.colorScheme.tertiary : null,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 30.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return CarCard(
                                      height: constraints.maxHeight,
                                    );
                                  },
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Toyota Mark',
                                      style: wm.textTheme.bodyMedium,
                                    ),
                                    Text(
                                      '1996',
                                      style:
                                          wm.textTheme.bodyMedium?.copyWith(
                                        color: theme.colorScheme.onTertiary,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(flex: 2),
                                Transform.scale(
                                  scale: 1.3,
                                  child: Radio(
                                    // fillColor: MaterialStateProperty.all(AppColor.orange),
                                    value: car,
                                    groupValue: selectedCar,
                                    onChanged: (value) {
                                      wm.selectCar(car);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: cars.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
