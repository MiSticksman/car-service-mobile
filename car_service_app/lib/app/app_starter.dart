import 'package:car_service_app/data/service/profile_service.dart';
import 'package:car_service_app/domain/use_case/profile_use_case.dart';
import 'package:car_service_app/internal/di/configure_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppStarter extends StatelessWidget {
  const AppStarter({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ProfileUseCase(getIt.get<ProfileService>()),
      child: child,
    );
  }
}
