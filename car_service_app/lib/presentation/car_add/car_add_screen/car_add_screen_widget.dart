import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/ui_util/custom_text_field.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:elementary_helper/elementary_helper.dart';

// TODO: cover with documentation
/// Main widget for CarAddScreen module
@RoutePage()
class CarAddScreenWidget extends ElementaryWidget<ICarAddScreenWidgetModel> {
  final Car? car;

  const CarAddScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCarAddScreenWidgetModelFactory,
    this.car,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICarAddScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 10.0,
            ),
            child: CircleAvatar(
              backgroundColor: theme.colorScheme.onSecondary,
              child: IconButton(
                onPressed: wm.toProfile,
                icon: const Icon(Icons.person),
              ),
            ),
          ),
          title: Text(localizations.choosingCarConf),
          actions: const [CloseWidget()],
        ),
        body: Builder(
          builder: (context) {
            final dropDownWidth = MediaQuery.of(context).size.width - 50;
            return UnfocusWidget(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
                    child: Text(
                      'Volkswagen Passat CC',
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
                              width: dropDownWidth,
                              controller: wm.yearController,
                              enableFilter: true,
                              requestFocusOnTap: true,
                              onSelected: (year) =>
                                  wm.selectYear(year ?? years.first),
                              textStyle: wm.textTheme.bodyLarge?.copyWith(
                                color: wm.theme.colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                              label: Text(
                                localizations.year,
                                style: wm.textTheme.bodyMedium?.copyWith(
                                  color: wm.theme.colorScheme.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              dropdownMenuEntries:
                                  years.map<DropdownMenuEntry<int>>(
                                (year) {
                                  return DropdownMenuEntry(
                                    value: year,
                                    label: year.toString(),
                                    style: ButtonStyle(
                                      textStyle: WidgetStatePropertyAll(
                                        wm.textTheme.bodyMedium?.copyWith(
                                          color:
                                              wm.theme.colorScheme.onSecondary,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      backgroundColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.background,
                                      ),
                                      overlayColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.tertiary,
                                      ),
                                      surfaceTintColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.background,
                                      ),
                                    ),
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
                              width: dropDownWidth,
                              controller: wm.engineController,
                              enableFilter: true,
                              requestFocusOnTap: true,
                              onSelected: (engine) => wm.selectEngine(),
                              textStyle: wm.textTheme.bodyLarge?.copyWith(
                                color: wm.theme.colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                              label: Text(
                                localizations.engine,
                                style: wm.textTheme.bodyMedium?.copyWith(
                                  color: wm.theme.colorScheme.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              dropdownMenuEntries:
                                  engines.map<DropdownMenuEntry<int?>>(
                                (engine) {
                                  return DropdownMenuEntry(
                                    value: engine.id,
                                    label: engine.name ?? '',
                                    style: ButtonStyle(
                                      textStyle: WidgetStatePropertyAll(
                                        wm.textTheme.bodyMedium?.copyWith(
                                            color: wm
                                                .theme.colorScheme.onSecondary,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      backgroundColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.background,
                                      ),
                                      overlayColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.tertiary,
                                      ),
                                      surfaceTintColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.background,
                                      ),
                                    ),
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
                              width: dropDownWidth,
                              controller: wm.transmissionController,
                              enableFilter: true,
                              requestFocusOnTap: true,
                              onSelected: (transmission) {},
                              textStyle: wm.textTheme.bodyLarge?.copyWith(
                                color: wm.theme.colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                              label: Text(
                                localizations.transmission,
                                style: wm.textTheme.bodyMedium?.copyWith(
                                  color: wm.theme.colorScheme.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              dropdownMenuEntries:
                                  engines.map<DropdownMenuEntry<int?>>(
                                (transmission) {
                                  return DropdownMenuEntry(
                                    value: transmission.id,
                                    label: transmission.name ?? '',
                                    style: ButtonStyle(
                                      textStyle: WidgetStatePropertyAll(
                                        wm.textTheme.bodyMedium?.copyWith(
                                          color:
                                              wm.theme.colorScheme.onSecondary,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      backgroundColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.background,
                                      ),
                                      overlayColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.tertiary,
                                      ),
                                      surfaceTintColor: WidgetStatePropertyAll(
                                        wm.theme.colorScheme.background,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            );
                          },
                        ),
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
            );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 70.0,
            vertical: 24,
          ),
          child: ElevatedButton(
            onPressed: wm.addCar,
            child: Text(localizations.done),
          ),
        ),
      ),
    );
  }
}
