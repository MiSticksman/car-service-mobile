import 'package:car_service_app/data/service/cart_service.dart';
import 'package:car_service_app/data/service/catalog_service.dart';
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

  @singleton
  ProfileService profileService = ProfileService(dio);

  @singleton
  CartService cartService = CartService(dio);

  @singleton
  CatalogService catalogService = CatalogService(dio);


}