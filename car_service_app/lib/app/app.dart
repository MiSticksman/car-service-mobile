import 'package:car_service_app/app/app_theme.dart';
import 'package:car_service_app/generated/app_localizations.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:flutter/material.dart';


var auth = true;

class CarServiceApp extends StatelessWidget {
  CarServiceApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      theme: AppTheme.light().themeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
