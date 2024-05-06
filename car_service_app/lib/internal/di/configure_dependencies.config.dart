// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:car_service_app/domain/manager/order_manager.dart' as _i4;
import 'package:car_service_app/domain/manager/profile_manager.dart' as _i3;
import 'package:car_service_app/internal/di/register_module.dart' as _i6;
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
    gh.singleton<_i3.ProfileManager>(() => registerModule.profileManager);
    gh.singleton<_i4.OrderManager>(() => registerModule.orderManager);
    gh.singleton<_i5.Dio>(() => registerModule.buildDio());
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
