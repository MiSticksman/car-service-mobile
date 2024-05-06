import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'order_service.g.dart';

@RestApi()
abstract class OrderService {

  @factoryMethod
  factory OrderService(Dio dio) => _OrderService(dio);
}