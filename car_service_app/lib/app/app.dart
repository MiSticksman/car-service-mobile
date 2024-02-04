import 'package:car_service_app/app/app_theme.dart';
import 'package:car_service_app/domain/use_case/cart_use_case.dart';
import 'package:car_service_app/generated/app_localizations.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarServiceApp extends StatelessWidget {
  CarServiceApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => CartUseCase())
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        theme: AppTheme.light().themeData,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
