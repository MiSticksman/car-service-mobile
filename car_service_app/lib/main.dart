import 'package:car_service_app/app/app.dart';
import 'package:car_service_app/app/app_starter.dart';
import 'package:car_service_app/internal/di/configure_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() => startApp();

Future<void> startApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  await dotenv.load(fileName: ".env");
  configureDependencies();
  runApp(AppStarter(child: CarServiceApp()));

}

