import 'package:car_service_app/data/service/profile_service.dart';
import 'package:car_service_app/domain/manager/profile_manager.dart';
import 'package:car_service_app/internal/di/configure_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
class AppStarter extends StatelessWidget {
  const AppStarter({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ProfileManager(getIt.get<ProfileService>()),
      child: child,
    );
  }
}
