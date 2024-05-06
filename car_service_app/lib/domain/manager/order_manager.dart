import 'package:car_service_app/data/service/order_service.dart';
import 'package:car_service_app/domain/model/map/service_dto.dart';
import 'package:car_service_app/util/lifecycle_component.dart';
import 'package:rxdart/rxdart.dart';

class OrderManager implements LifeCycleComponent {
  final OrderService orderService;

  OrderManager(
    this.orderService,
  );

  final BehaviorSubject<ServiceDto?> selectedServiceController =
      BehaviorSubject.seeded(null);

  @override
  void init() {}

  @override
  void dispose() {
    selectedServiceController.close();
  }
}
