import 'package:car_service_app/data/service/catalog_service.dart';
import 'package:car_service_app/util/lifecycle_component.dart';



class CatalogUseCase implements LifeCycleComponent {
  final CatalogService catalogService;

  CatalogUseCase(
    this.catalogService,
  );

  @override
  void init() {
    // TODO: implement init
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
