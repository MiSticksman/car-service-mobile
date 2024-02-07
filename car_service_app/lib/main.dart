import 'package:car_service_app/app/app.dart';
import 'package:car_service_app/app/app_starter.dart';
import 'package:car_service_app/internal/di/configure_dependencies.dart';
import 'package:car_service_app/internal/di/register_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => startApp();

Future<void> startApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  configureDependencies();
  await initServices();
  runApp(AppStarter(child: CarServiceApp()));
}
