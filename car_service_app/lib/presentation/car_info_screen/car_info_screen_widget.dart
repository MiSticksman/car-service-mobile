import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'car_info_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for CarInfoScreen module
@RoutePage()
class CarInfoScreenWidget extends ElementaryWidget<ICarInfoScreenWidgetModel> {
  final Car? car;

  const CarInfoScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCarInfoScreenWidgetModelFactory,
    this.car,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICarInfoScreenWidgetModel wm) {
    final localizations = wm.localizations;
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 0,
        color: AppColor.transparent
      ),
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
              child: Text(
                car?.brand ?? '',
                style: wm.textTheme.displayLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EntityStateNotifierBuilder(
                    listenableEntityState: wm.yearsState,
                    builder: (_, data) {
                      final years = data?.$1 ?? [];
                      return DropdownMenu(
                        controller: wm.yearController,
                        enableFilter: true,
                        requestFocusOnTap: true,
                        onSelected: (year) =>
                            wm.selectYear(year ?? years.first),
                        label: Text(localizations.year),
                        dropdownMenuEntries: years.map<DropdownMenuEntry<int>>(
                          (year) {
                            return DropdownMenuEntry(
                              value: year,
                              label: year.toString(),
                              // leadingIcon: Icon(icon.icon),
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  EntityStateNotifierBuilder(
                    listenableEntityState: wm.enginesState,
                    builder: (_, data) {
                      final engines = data?.$1 ?? [];
                      return DropdownMenu(
                        width: 300,
                        controller: wm.engineController,
                        enableFilter: true,
                        requestFocusOnTap: true,
                        onSelected: (engine) => wm.selectEngine(),
                        label: Text(localizations.engine),
                        dropdownMenuEntries:
                            engines.map<DropdownMenuEntry<int?>>(
                          (engine) {
                            return DropdownMenuEntry(
                              value: engine.id,
                              label: engine.name ?? '',
                              // leadingIcon: Icon(icon.icon),
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  EntityStateNotifierBuilder(
                    listenableEntityState: wm.transmissionsState,
                    builder: (_, data) {
                      final engines = data?.$1 ?? [];
                      return DropdownMenu(
                        width: 300,
                        controller: wm.transmissionController,
                        enableFilter: true,
                        requestFocusOnTap: true,
                        onSelected: (transmission) {},
                        label: Text(localizations.transmission),
                        dropdownMenuEntries:
                            engines.map<DropdownMenuEntry<int?>>(
                          (transmission) {
                            return DropdownMenuEntry(
                              value: transmission.id,
                              label: transmission.name ?? '',
                              // leadingIcon: Icon(icon.icon),
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                  const SizedBox(height: 90),
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
                      contentPadding: const EdgeInsets.fromLTRB(
                        12, 0, 12, 30
                      ),
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
