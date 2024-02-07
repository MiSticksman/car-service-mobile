import 'package:car_service_app/domain/dto/catalog/category_response.dart';
import 'package:car_service_app/domain/url/catalog_url.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;


  @GET(CatalogUrl.categories)
  Future<List<CategoryResponse>> fetchCatalogCategories({
    @Query('parent_id') int? parentId,
});
}
