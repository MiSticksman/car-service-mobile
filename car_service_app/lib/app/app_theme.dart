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
          primary: AppColor.blackF1,
          onPrimary: AppColor.white,
          secondary: AppColor.white,
          onSecondary: AppColor.grayText,
          error: AppColor.white,
          onError: AppColor.white,
          surface: AppColor.whiteF8,
          onSurface: AppColor.green,
          brightness: Brightness.light,
          tertiary: AppColor.greyD9,
          // onTertiary:
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: AppColor.blackText,
            fontSize: 16,
          ),
          bodyMedium: TextStyle(
            color: AppColor.blackText,
            fontSize: 18,
          ),
          bodyLarge: TextStyle(
            color: AppColor.blackText,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          displaySmall: TextStyle(
            color: AppColor.blackText,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
            color: AppColor.blackText,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          displayLarge: TextStyle(
            color: AppColor.blackText,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: TextStyle(
            color: AppColor.blackText,
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.all(AppColor.green),
        ),
        dividerTheme: const DividerThemeData(color: AppColor.grayText),
        disabledColor: AppColor.grey,
        scaffoldBackgroundColor: AppColor.whiteF8,
        cardTheme: const CardTheme(
          clipBehavior: Clip.hardEdge,
          color: AppColor.white,
        ),
        appBarTheme: const AppBarTheme(
          toolbarHeight: 44,
          elevation: 0,
          centerTitle: true,
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColor.whiteF8,
          foregroundColor: AppColor.blackText,
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
            backgroundColor: AppColor.green,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 0,
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.bold18,
            disabledForegroundColor: AppColor.grayText,
            minimumSize: const Size(250, 50),
            maximumSize: const Size(400, 50),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            foregroundColor: AppColor.blackF1,
            backgroundColor: AppColor.white,
            side: const BorderSide(
              width: 2,
              color: AppColor.orange,
            ),
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.bold18,
            minimumSize: const Size(250, 50),
            maximumSize: const Size(400, 50),
          ),
        ),
        dropdownMenuTheme: const DropdownMenuThemeData(
          textStyle: AppText.normal16,
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith(
                (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColor.green;
              }
              return AppColor.transparent;
            },
          ),
          checkColor: WidgetStateProperty.resolveWith(
                (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColor.white;
              }
              return AppColor.transparent;
            },
          ),
          side: const BorderSide(
            width: 2,
            color: AppColor.grayText,
          ),
        ),
      ),
    );
  }

  factory AppTheme.dark() {
    return AppTheme._(
      ThemeData(
        useMaterial3: true,
        fontFamily: 'Montserrat',
        colorScheme: const ColorScheme.dark(
          primary: AppColor.whiteF1,
          onPrimary: AppColor.black21,
          secondary: AppColor.white,
          onSecondary: AppColor.orange,
          tertiary: AppColor.brown,
          onTertiary: AppColor.paleBrown,
          error: AppColor.white,
          onError: AppColor.brightOrange,
          surface: AppColor.whiteF8,
          onSurface: AppColor.white,
          brightness: Brightness.light,
          secondaryContainer: AppColor.lightGrayEB,
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          displaySmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          displayLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          titleLarge: TextStyle(
            color: AppColor.orange,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith(
                (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColor.orange;
              }
              return AppColor.superDuperGray;
            },
          ),
        ),
        dividerTheme: const DividerThemeData(color: AppColor.brown),
        disabledColor: AppColor.grey,
        scaffoldBackgroundColor: AppColor.black21,
        cardTheme: const CardTheme(
          clipBehavior: Clip.hardEdge,
          color: AppColor.white,
        ),
        appBarTheme: const AppBarTheme(
          toolbarHeight: 44,
          elevation: 0,
          centerTitle: true,
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColor.black21,
          foregroundColor: AppColor.white,
          titleTextStyle: AppText.title,
          iconTheme: IconThemeData(color: AppColor.grayText),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColor.white,
            backgroundColor: AppColor.brown,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 0,
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.bold16,
            disabledForegroundColor: AppColor.white,
            minimumSize: const Size(250, 50),
            maximumSize: const Size(400, 50),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            foregroundColor: AppColor.white,
            backgroundColor: AppColor.orange,
            side: const BorderSide(
              width: 2,
              color: AppColor.orange,
            ),
            fixedSize: const Size.fromHeight(50),
            textStyle: AppText.medium16,
            minimumSize: const Size(250, 50),
            maximumSize: const Size(400, 50),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColor.white,
            backgroundColor: AppColor.transparent,
          ),
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: AppText.normal16,
          menuStyle: const MenuStyle(
            backgroundColor: WidgetStatePropertyAll(AppColor.paleBrown),
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
          ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: AppText.normal16.copyWith(
              color: AppColor.white,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.orange,
              ),
            ),
            activeIndicatorBorder: const BorderSide(
              color: AppColor.orange,
            ),
            outlineBorder: const BorderSide(
              color: AppColor.orange,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.orange,
              ),
            ),
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith(
                (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColor.orange;
              }
              return AppColor.transparent;
            },
          ),
          checkColor: WidgetStateProperty.resolveWith(
                (states) {
              if (states.contains(WidgetState.selected)) {
                return AppColor.white;
              }
              return AppColor.transparent;
            },
          ),
          side: const BorderSide(
            width: 1,
            color: AppColor.superDuperGray,
          ),
        ),
      ),
    );
  }
}
