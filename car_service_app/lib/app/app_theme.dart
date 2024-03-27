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
          onBackground: AppColor.black21,
          secondary: AppColor.white,
          onSecondary: AppColor.orange,
          error: AppColor.white,
          onError: AppColor.white,
          surface: AppColor.whiteF8,
          onSurface: AppColor.black,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColor.black,
            fontSize: 14,
          ),
          bodyLarge: TextStyle(
            color: AppColor.black,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          displayLarge: TextStyle(
            color: AppColor.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          displayMedium: TextStyle(
            color: AppColor.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          displaySmall: TextStyle(
            color: AppColor.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: TextStyle(
            color: AppColor.black,
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(AppColor.black),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColor.lightGrayEB
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
          iconTheme: IconThemeData(color: AppColor.black),
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
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 0,
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.bold16,
            disabledForegroundColor: AppColor.white,
            minimumSize: const Size(250, 50),
            maximumSize: const Size(320, 50),
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
        dropdownMenuTheme: const DropdownMenuThemeData(
          textStyle: AppText.normal16,
        ),
      ),
    );
  }
}
