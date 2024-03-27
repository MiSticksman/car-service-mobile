import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/domain/model/work/work.dart';
import 'package:car_service_app/internal/logger.dart';
import 'package:car_service_app/presentation/car_info_screen/car_info_screen_widget.dart';
import 'package:car_service_app/presentation/my_cars_screen/my_cars_screen.dart';
import 'package:car_service_app/presentation/work_details_screen/work_details_screen.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'works_screen_model.dart';
import 'works_screen_widget.dart';

abstract interface class IWorksScreenWidgetModel implements IWidgetModel, IThemeProvider {

  EntityStateNotifier<(List<Work>, Work?)> get worksState;

  void toWorkDetailsScreen();
  void toCarInfoScreen(Car car);
  void toMyCarsScreen();
}

WorksScreenWidgetModel defaultWorksScreenWidgetModelFactory(BuildContext context) {
  return WorksScreenWidgetModel(WorksScreenModel());
}

// TODO: cover with documentation
/// Default widget model for WorksScreenWidget
class WorksScreenWidgetModel extends WidgetModel<WorksScreenWidget, WorksScreenModel>
    with ThemeProvider
    implements IWorksScreenWidgetModel {

  WorksScreenWidgetModel(super.model);

  @override
  final EntityStateNotifier<(List<Work>, Work?)> worksState =
  EntityStateNotifier();

  @override
  void initWidgetModel() {
    worksState.loading();
    try {
      final cars = <Work>[
        Work(id: 1, name: 'Замена масла'),
        Work(id: 1, name: 'Замена фильтров'),
        Work(id: 1, name: 'Очистка двигателя'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),
        Work(id: 1, name: 'Замена тормозных колодок'),

      ];
      worksState.content((cars, cars.firstOrNull));

    } catch (e, s) {
      logger.e(
        'Cars loading error',
        error: e,
        stackTrace: s,
      );
    }
    super.initWidgetModel();
  }

  @override
  void dispose() {
    worksState.dispose();
    super.dispose();
  }

  @override
  Future<void> toCarInfoScreen(Car car) async {
    await showCupertinoModalBottomSheet(
      useRootNavigator: true,
      enableDrag: true,
      context: router.navigatorKey.currentContext!,
      builder: (context) => CarInfoScreenWidget(
        car: car,
      ),
    );
  }
  @override
  Future<void> toWorkDetailsScreen() async {
    await showCupertinoModalBottomSheet(
      useRootNavigator: true,
      enableDrag: false,
      context: router.navigatorKey.currentContext!,
      builder: (context) => const WorkDetailsScreenWidget(),
    );
  }

  @override
  Future<void> toMyCarsScreen() async {
    await showCupertinoModalBottomSheet(
      useRootNavigator: true,
      isDismissible: false,
      enableDrag: false,
      context: router.navigatorKey.currentContext!,
      builder: (_) => const MyCarsScreenWidget(),
    );
  }
}
