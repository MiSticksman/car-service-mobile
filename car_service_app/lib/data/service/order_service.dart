import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'order_service.g.dart';

@RestApi()
abstract class OrderService {
  factory OrderService(Dio dio, {String baseUrl}) = _OrderService;
}