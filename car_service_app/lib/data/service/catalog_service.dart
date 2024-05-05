
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  @factoryMethod
  factory CatalogService(Dio dio) => _CatalogService(dio);

}
