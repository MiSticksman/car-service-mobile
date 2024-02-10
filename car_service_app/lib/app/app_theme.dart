import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/app/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  final ThemeData themeData;

  AppTheme._(this.themeData);

  factory AppTheme.light() {
    return AppTheme._(
      ThemeData(
        useMaterial3: false,
        fontFamily: 'Montserrat',
        colorScheme: const ColorScheme(
          primary: AppColor.white,
          onPrimary: AppColor.white,
          background: AppColor.red,
          onBackground: AppColor.red,
          secondary: AppColor.white,
          onSecondary: AppColor.white,
          error: AppColor.white,
          onError: AppColor.white,
          surface: AppColor.white,
          onSurface: AppColor.white,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColor.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: AppColor.white,
          titleTextStyle: AppText.title,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.white,
            disabledBackgroundColor: AppColor.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            elevation: 0,
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.medium12.copyWith(
              color: AppColor.white,
            ),
            disabledForegroundColor: AppColor.white,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            foregroundColor: AppColor.white,
            backgroundColor: Colors.transparent,
            side: const BorderSide(
              width: 1,
              color: AppColor.white,
            ),
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.medium14.copyWith(
              color: AppColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
