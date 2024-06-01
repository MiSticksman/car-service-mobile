import 'package:car_service_app/domain/model/work/car_work_detail.dart';
import 'package:car_service_app/internal/logger.dart';
import 'package:car_service_app/presentation/ui_util/snack_bar.dart';
import 'package:car_service_app/router/app_router.dart';
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

  void selectWorkDetail(CarWorkDetail workDetail);

  void toOrderScreen();
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
          name: 'Фильтр воздушный',
          picture:
              'https://ir-2.ozone.ru/s3/multimedia-c/wc1000/6640768164.jpg',
          url:
              'https://www.ozon.ru/product/filtr-vozdushnyy-felix-2110-12-v-s-setkoy-dlya-a-m-vaz-lada-inzhektor-727818702/?advert=ldUGiLXyCFXaJsE-SMR1f_04qK_TSDkyaiDAsakHD1K-fRRRdUEbXNkXq01dV-BRZ4CcqMOuzFy8QVddoe40n46yIMkpUNi2ec3lVs52aSNhc2ur-DzWf8hT28XG97fMzrLxX-dW_Tn86w_ehNW2DDOow7nvt7gPxO6ooFhJ1rupDhZ6yGd1RBOGX0BwO-lyyMvhx8dR4LuX0QSxN2FGUxFT0375pYcOPBukhkmgJuuMUpDTQUe_-Ei0LmkgSZ0RbD-6w9-UR5888cqCdXuFqtjzu3o6KNlFvJlgNexq8WGUsOnG2x_eOgvVday4zYTVfM10ZGL6MlZoa5o6eB3sV39v2qBn&avtc=1&avte=2&avts=1713891446&keywords=%D0%B2%D0%B0%D0%B7+2112+%D1%84%D0%B8%D0%BB%D1%8C%D1%82%D1%80',
          price: 369,
          isOriginal: true,
        ),
        CarWorkDetail(
          id: 2,
          name: 'НТК NORD OIL Масло моторное 5W-30 Синтетическое 5 л',
          picture: 'https://ir.ozone.ru/s3/multimedia-x/wc1000/6827207073.jpg',
          url:
          'https://www.ozon.ru/product/ntk-nord-oil-maslo-motornoe-5w-30-sinteticheskoe-5-l-1091708981/?advert=16U1OgNCOJFtlQUQqn70RX2-YiTYVSk4Yy-hca7gqHa1-0mOCsjj68ceZif2r9c9UI70HOQ36VLpgP-2z1BwfJ3g7QF9Oelwe5NcvKpy0UjeO-JKXli-MoN5XFVdcziEnFToyD97TGLw7yOWnvcMeXnrCB2v3gOop7QRtfG8oYJwv1A7QWXFujv3V3_U8e8gUM6GtDflQHe7DNNRnE0Zn0vdfl7wO6cAkFjUBv_GyCu-4FVeReIfv77IbEW-njLOoVnfHehA9ETtNy4gnJJy3HwHVZiGlE7YDF7bnlfT0W9RNtU58r2JGXjl21uRHKF8QJCnrxTpoCy8vUlB1VSLh855obzm3w&avtc=1&avte=2&avts=1715107269&keywords=%D0%BC%D0%B0%D1%81%D0%BB%D0%BE+toyota+mark+2',
          isOriginal: true,
          price: 2432,
        ),
        CarWorkDetail(
          id: 3,
          name: 'Масло моторное синтетическое',
          picture: 'https://ir.ozone.ru/s3/multimedia-1-j/wc1000/6910921423.jpg',
          url:
              'https://www.ozon.ru/product/mirax-mx9-5w-40-maslo-motornoe-sinteticheskoe-5-l-1409734496/?advert=X56FYKDwxnwlqaVOUwqwq2v8mR_BhJ9wRMozcg52en-QAv4X244Vi2R63vlFoHZujI5nFJxnN6aXqt657demcbHo2XaGQOEmfFmEvCdF2hlSYml1DaHga5XjLE_KeqCoCPbdTtToWBN5V3M-p3PT6vVNAf7ni7SjxI4uKmXW003wt5BtdQKZlfWQlVEP7m23Eyz7r4Sr3h9qpoGHeQ3WzSVOc8MX82GueTuYxJKBM-wWrIBvNvxOhCkA&avtc=1&avte=2&avts=1714895667',
          price: 2119,
        ),
        CarWorkDetail(
          id: 4,
          name: 'Фильтр масляный',
          picture: 'https://ir.ozone.ru/s3/multimedia-2/wc1000/6645540926.jpg',
          url:
              'https://www.ozon.ru/product/vag-vw-audi-skoda-seat-filtr-maslyanyy-art-04e115561ac-1-sht-959324397/?advert=kZ1YmamtoZ33HZgH9xyYIjXJM2PSh7M1ZipL2WELPH57-hhFaUAgNuYNVv5PnbjAG2HDCdxjXLKQoZz2YdofGKaBIrApAYR7Nnz57qXwr96w3q12k8g7fK_Fbruntnon-rg6Z9yL_6J-AZusAdYQsTBN8avwMGKbePCt4T65lh9zHjzlxruQqoECt5pzVH1TeOmGRi0JcZCNKXBOhxDFa7KmnwswBIo0RTiPtHib1UreuT6s9pog1jI-SepzWDnOwrBKZN1KuIBAjHaYzdv4Y5GOkIYEXq4Z_Zww3ItsupdrW3D1GQ6Sb6bV45_ZgAZLqBst8w6Gj7G-D734FeovdSRm8RA3&avtc=1&avte=2&avts=1714895818&keywords=%D0%BC%D0%B0%D1%81%D0%BB%D1%8F%D0%BD%D1%8B%D0%B9+%D1%84%D0%B8%D0%BB%D1%8C%D1%82%D1%80+skoda+octavia+a7',
          price: 560,
        ),
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

  @override
  Future<void> selectWorkDetail(CarWorkDetail workDetail) async {
    final worksDetails = carWorksDetailsState.value.data!.$1;
    final selectedWorksDetails = carWorksDetailsState.value.data?.$2 ?? [];
    if (selectedWorksDetails.contains(workDetail)) {
      selectedWorksDetails.remove(workDetail);
    } else {
      selectedWorksDetails.add(workDetail);
    }
    carWorksDetailsState.content((worksDetails, selectedWorksDetails));
  }

  @override
  void toOrderScreen() {
    router.navigate(OrderRoute());
  }
}
