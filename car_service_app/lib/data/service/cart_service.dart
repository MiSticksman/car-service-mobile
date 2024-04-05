import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'cart_service.g.dart';

@RestApi()
abstract class CartService {

  @factoryMethod
  factory CartService(Dio dio) => _CartService(dio);


}
