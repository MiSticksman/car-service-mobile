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
        useMaterial3: true,
        fontFamily: 'Montserrat',
        colorScheme: const ColorScheme(
          primary: AppColor.black1F,
          onPrimary: AppColor.white,
          background: AppColor.whiteF8,
          onBackground: AppColor.red,
          secondary: AppColor.white,
          onSecondary: AppColor.white,
          error: AppColor.white,
          onError: AppColor.white,
          surface: AppColor.white,
          onSurface: AppColor.white,
          brightness: Brightness.light,
        ),
        disabledColor: AppColor.grey,
        scaffoldBackgroundColor: AppColor.whiteF8,
        cardTheme: const CardTheme(
          clipBehavior: Clip.hardEdge,
          color: AppColor.white,
        ),
        appBarTheme: const AppBarTheme(
          toolbarHeight: 50,
          elevation: 0,
          centerTitle: true,
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColor.whiteF8,
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
            foregroundColor: AppColor.white,
            backgroundColor: AppColor.black1F,
            disabledBackgroundColor: AppColor.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 0,
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.bold16,
            disabledForegroundColor: AppColor.white,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
