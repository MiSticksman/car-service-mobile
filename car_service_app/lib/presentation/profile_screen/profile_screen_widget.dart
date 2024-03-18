import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/presentation/profile_screen/components/setting_element.dart';
import 'package:car_service_app/presentation/profile_screen/components/user_data_element.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileScreen module
@RoutePage()
class ProfileScreenWidget extends ElementaryWidget<IProfileScreenWidgetModel> {
  const ProfileScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final textTheme = wm.theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.profileTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              UserDataElement(userName: 'Вадим Шафоростов', onTap: () {}),
              const SizedBox(height: 30),
              SettingElement(
                picture: 'assets/car.png',
                paramName: localizations.myCars,
                onTap: wm.openMyCars,
              ),
              // SettingElement(
              //   picture: "",
              //   paramName: localizations.,
              //   onTap: onTap,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
