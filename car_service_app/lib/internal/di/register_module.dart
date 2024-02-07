import 'package:car_service_app/data/service/cart_service.dart';
import 'package:car_service_app/data/service/catalog_service.dart';
import 'package:car_service_app/data/service/order_service.dart';
import 'package:car_service_app/data/service/profile_service.dart';
import 'package:car_service_app/internal/dio_configurator.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

Future<void> initServices() async {
  final dio = RegisterModule.dio;
  initDio(dio: dio);
}

@module
abstract class RegisterModule {
  static final Dio dio = Dio();

  final ProfileService _profileService = ProfileService(dio);

  @singleton
  ProfileService get profileService => _profileService;

  final CartService _cartService = CartService(dio);
  @singleton
  CartService get cartService => _cartService;

  final CatalogService _catalogService = CatalogService(dio);
  @singleton
  CatalogService get catalogService => _catalogService;

  final OrderService _orderService = OrderService(dio);
  @singleton
  OrderService get orderService => _orderService;

}
