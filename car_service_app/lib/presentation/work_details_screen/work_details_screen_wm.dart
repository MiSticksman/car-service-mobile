import 'package:car_service_app/domain/model/work/car_work_detail.dart';
import 'package:car_service_app/internal/logger.dart';
import 'package:car_service_app/presentation/ui_util/snack_bar.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'work_details_screen_model.dart';
import 'work_details_screen_widget.dart';

abstract interface class IWorkDetailsScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  EntityStateNotifier<(List<CarWorkDetail>, List<CarWorkDetail>)>
      get carWorksDetailsState;
}

WorkDetailsScreenWidgetModel defaultWorkDetailsScreenWidgetModelFactory(
    BuildContext context) {
  return WorkDetailsScreenWidgetModel(WorkDetailsScreenModel());
}

// TODO: cover with documentation
/// Default widget model for WorkDetailsScreenWidget
class WorkDetailsScreenWidgetModel
    extends WidgetModel<WorkDetailsScreenWidget, WorkDetailsScreenModel>
    with ThemeProvider
    implements IWorkDetailsScreenWidgetModel {
  WorkDetailsScreenWidgetModel(super.model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadCarWorksDetails();
  }

  Future<void> loadCarWorksDetails() async {
    carWorksDetailsState.loading();
    await Future.delayed(Duration(seconds: 1));
    try {
      final carWorksDetails = <CarWorkDetail>[
        CarWorkDetail(
          id: 1,
          name: 'Замена масла',
          picture: 'https://ir-2.ozone.ru/s3/multimedia-c/wc1000/6640768164.jpg',
          url:
              'https://www.ozon.ru/product/filtr-vozdushnyy-felix-2110-12-v-s-setkoy-dlya-a-m-vaz-lada-inzhektor-727818702/?advert=ldUGiLXyCFXaJsE-SMR1f_04qK_TSDkyaiDAsakHD1K-fRRRdUEbXNkXq01dV-BRZ4CcqMOuzFy8QVddoe40n46yIMkpUNi2ec3lVs52aSNhc2ur-DzWf8hT28XG97fMzrLxX-dW_Tn86w_ehNW2DDOow7nvt7gPxO6ooFhJ1rupDhZ6yGd1RBOGX0BwO-lyyMvhx8dR4LuX0QSxN2FGUxFT0375pYcOPBukhkmgJuuMUpDTQUe_-Ei0LmkgSZ0RbD-6w9-UR5888cqCdXuFqtjzu3o6KNlFvJlgNexq8WGUsOnG2x_eOgvVday4zYTVfM10ZGL6MlZoa5o6eB3sV39v2qBn&avtc=1&avte=2&avts=1713891446&keywords=%D0%B2%D0%B0%D0%B7+2112+%D1%84%D0%B8%D0%BB%D1%8C%D1%82%D1%80',
          price: 369,
          isOriginal: true,
        ),
        CarWorkDetail(id: 2, name: 'Замена масла', url: '', price: 2),
        CarWorkDetail(id: 3, name: 'Замена масла', url: '', price: 3),
      ];
      carWorksDetailsState.content((carWorksDetails, []));
    } catch (e, s) {
      carWorksDetailsState.error();
      logger.e(
        'Car works details loading error',
        error: e,
        stackTrace: s,
      );
      context.showSnackBar('Car works details loading error');
    }
  }

  @override
  final EntityStateNotifier<(List<CarWorkDetail>, List<CarWorkDetail>)>
      carWorksDetailsState = EntityStateNotifier();
}
