// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:car_service_app/data/service/cart_service.dart' as _i3;
import 'package:car_service_app/data/service/catalog_service.dart' as _i4;
import 'package:car_service_app/data/service/order_service.dart' as _i6;
import 'package:car_service_app/data/service/profile_service.dart' as _i7;
import 'package:car_service_app/internal/di/register_module.dart' as _i8;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.CartService>(registerModule.cartService);
    gh.singleton<_i4.CatalogService>(registerModule.catalogService);
    gh.factory<_i5.Dio>(() => _i8.RegisterModule.dio);
    gh.singleton<_i6.OrderService>(registerModule.orderService);
    gh.singleton<_i7.ProfileService>(registerModule.profileService);
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
