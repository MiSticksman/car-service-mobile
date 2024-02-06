import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'cart_service.g.dart';

@RestApi()
abstract class CartService {
  factory CartService(Dio dio, {String baseUrl}) = _CartService;
}
