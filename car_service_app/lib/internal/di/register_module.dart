import 'package:car_service_app/data/service/order_service.dart';
import 'package:car_service_app/data/service/profile_service.dart';
import 'package:car_service_app/domain/manager/order_manager.dart';
import 'package:car_service_app/domain/manager/profile_manager.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio buildDio() {
    final dio = Dio();
    const timeout = Duration(seconds: 30);

    dio.options
      ..baseUrl = ''
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    );

    return dio;
  }

  @singleton
  ProfileManager get profileManager => ProfileManager(
        ProfileService(
          buildDio(),
        ),
      );

  @singleton
  OrderManager get orderManager => OrderManager(
        OrderService(
          buildDio(),
        ),
      );
}
