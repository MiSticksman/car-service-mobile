import 'package:car_service_app/data/service/cart_service.dart';
import 'package:car_service_app/util/lifecycle_component.dart';

class CartUseCase implements LifeCycleComponent {
  final CartService cartService;

  CartUseCase(
    this.cartService,
  );

  final test = 'test';

  @override
  void init() {
    // TODO: implement init
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
