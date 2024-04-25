import 'package:car_service_app/domain/model/car/car.dart';
import 'package:car_service_app/domain/model/work/work.dart';
import 'package:car_service_app/internal/logger.dart';
import 'package:car_service_app/presentation/car_add/brand_selection_screen/brand_selection_screen.dart';
import 'package:car_service_app/presentation/car_add/car_add_screen/car_add_screen.dart';
import 'package:car_service_app/presentation/car_info_screen/car_info_screen_widget.dart';
import 'package:car_service_app/presentation/my_cars_screen/my_cars_screen.dart';
import 'package:car_service_app/presentation/ui_util/snack_bar.dart';
import 'package:car_service_app/presentation/work_details_screen/work_details_screen.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'works_screen_model.dart';
import 'works_screen_widget.dart';

abstract interface class IWorksScreenWidgetModel
    implements IWidgetModel, IThemeProvider {

  EntityStateNotifier<(List<Work>, List<Work>)> get worksState;

  void toCarAddScreen();

  void selectWork(Work work);

  void toWorkDetailsScreen();

  void toCarInfoScreen(Car car);

  void toMyCarsScreen();
}

WorksScreenWidgetModel defaultWorksScreenWidgetModelFactory(
    BuildContext context) {
  return WorksScreenWidgetModel(WorksScreenModel());
}

// TODO: cover with documentation
/// Default widget model for WorksScreenWidget
class WorksScreenWidgetModel
    extends WidgetModel<WorksScreenWidget, WorksScreenModel>
    with ThemeProvider
    implements IWorksScreenWidgetModel {

  WorksScreenWidgetModel(super.model);

  @override
  final EntityStateNotifier<(List<Work>, List<Work>)> worksState =
  EntityStateNotifier();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadCarWorks();
  }

  Future<void> loadCarWorks() async {
    worksState.loading();
    try {
      final cars = <Work>[
        Work(id: 1, name: 'Замена масла'),
        Work(id: 2, name: 'Замена фильтров'),
        Work(id: 3, name: 'Ремонт кузова'),
        Work(id: 4, name: 'Замена тормозных колодок'),
        Work(id: 5, name: 'Работы по проверке электрики и электроники'),
        Work(id: 6, name: 'Техническое обслуживание'),
        Work(id: 7, name: 'Покраска кузова'),
        Work(id: 8, name: 'Сезонное техническое обслуживание'),
      ];
      worksState.content((cars, []));
    } catch (e, s) {
      worksState.error();
      logger.e(
        'Car works loading error',
        error: e,
        stackTrace: s,
      );
      context.showSnackBar('Car works loading error');
    }
  }

  @override
  void dispose() {
    worksState.dispose();
    super.dispose();
  }

  @override
  void toCarAddScreen() {
    router.navigate(BrandSelectionRoute());
  }

  @override
  void selectWork(Work work) {
    final works = worksState.value.data!.$1;
    final selectedWorks = worksState.value.data?.$2 ?? [];
    if (selectedWorks.contains(work)) {
      selectedWorks.remove(work);
    } else {
      selectedWorks.add(work);
    }
    worksState.content((works, selectedWorks));
  }

  @override
  void toCarInfoScreen(Car car) {
    router.navigate(CarInfoRoute(car: car));
  }

  @override
  void toWorkDetailsScreen() {
    router.navigate(WorkDetailsRoute());
  }

  @override
  void toMyCarsScreen() {
    router.navigate(MyCarsRoute());
  }
}
