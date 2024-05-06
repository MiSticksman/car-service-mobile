import 'package:car_service_app/domain/manager/order_manager.dart';
import 'package:car_service_app/domain/model/map/service_dto.dart';
import 'package:car_service_app/domain/model/order/date_interval.dart';
import 'package:car_service_app/domain/model/order/time_interval.dart';
import 'package:car_service_app/internal/di/configure_dependencies.dart';
import 'package:car_service_app/presentation/map_screen/map_screen.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rxdart/rxdart.dart' hide TimeInterval;
import 'order_screen_model.dart';
import 'order_screen_widget.dart';

abstract interface class IOrderScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  BehaviorSubject<ServiceDto?> get selectedServiceController;

  EntityStateNotifier<(List<DateInterval>, DateInterval?)> get datesState;
  EntityStateNotifier<(List<TimeInterval>, TimeInterval?)> get timesState;

  void showMap();

  void selectDate(DateInterval date);

  void selectTime(TimeInterval time);
}

OrderScreenWidgetModel defaultOrderScreenWidgetModelFactory(
    BuildContext context) {
  return OrderScreenWidgetModel(
    model: OrderScreenModel(),
    orderManager: getIt<OrderManager>(),
  );
}

// TODO: cover with documentation
/// Default widget model for OrderScreenWidget
class OrderScreenWidgetModel
    extends WidgetModel<OrderScreenWidget, OrderScreenModel>
    with ThemeProvider
    implements IOrderScreenWidgetModel {
  final OrderManager orderManager;

  OrderScreenWidgetModel({
    required OrderScreenModel model,
    required this.orderManager,
  }) : super(model);

  @override
  BehaviorSubject<ServiceDto?> get selectedServiceController =>
      orderManager.selectedServiceController;

  @override
  final EntityStateNotifier<(List<DateInterval>, DateInterval?)> datesState =
      EntityStateNotifier();

  @override
  final EntityStateNotifier<(List<TimeInterval>, TimeInterval?)> timesState =
  EntityStateNotifier();

  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  @override
  void initWidgetModel() {
    datesState.addListener(loadTimesIntervals);
    super.initWidgetModel();
  }

  @override
  void dispose() {
    clearData();
    datesState.removeListener(loadTimesIntervals);
    super.dispose();
  }

  void clearData() {
    selectedServiceController.add(null);
  }

  @override
  Future<void> showMap() async {
    final service = await showCupertinoModalBottomSheet<ServiceDto?>(
      context: context,
      enableDrag: false,
      builder: (_) => const MapScreenWidget(),
    );
    orderManager.selectedServiceController.add(service);
    loadDatesIntervals();
  }

  Future<void> loadDatesIntervals() async {
    datesState.loading();
    final dates = [
      DateInterval(data: '7 мая'),
      DateInterval(data: '8 мая'),
      DateInterval(data: '11 мая'),
    ];
    datesState.content((dates, dates.firstOrNull));
  }

  @override
  Future<void> selectDate(DateInterval date) async {
    final dates = datesState.value.data?.$1 ?? [];
    datesState.content((dates, date));
    // await loadTimesIntervals();
  }

  Future<void> loadTimesIntervals() async {
    timesState.loading();
    final times = [
      TimeInterval(data: '10:00 - 13:00'),
      TimeInterval(data: '14:00 - 15:30'),
      TimeInterval(data: '17:00 - 19:00'),
    ];
    timesState.content((times, times.firstOrNull));
  }

  @override
  Future<void> selectTime(TimeInterval time) async {
    final times = timesState.value.data?.$1 ?? [];
    timesState.content((times, time));
  }

  String stringToDateLocalized(String dateString) {
    final date = dateFormat.parse(dateString);

    String newMonth = DateFormat('MMMM', 'ru').format(date);
    if (date.month == 5) {
      return DateFormat('d MMMM', 'ru').format(date);
    }
    return '${date.day} ${newMonth.substring(0, 3)}.';
  }
}
