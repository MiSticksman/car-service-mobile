import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_text.dart';
import 'package:car_service_app/presentation/profile_screen/components/setting_element.dart';
import 'package:car_service_app/presentation/profile_screen/components/user_data_element.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Row(
                  children: [
                    Text(
                      localizations.profileTitle,
                      style: AppText.title,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: wm.toEditingProfile,
                      child: SvgPicture.asset('assets/svg/edit.svg'),
                    ),
                  ],
                ),
              ),
              UserDataElement(
                userName: 'Вадим Шафоростов',
                logoutTap: wm.logout,
              ),
              const SizedBox(height: 44),
              // todo condition on preorder
              if (true)
                SettingElement(
                  picture: "assets/svg/preorder_work_detail.svg",
                  paramName: localizations.completeRegistration,
                  onTap: wm.toOrderScreen,
                ),
              const SizedBox(height: 28),
              SettingElement(
                picture: 'assets/svg/car.svg',
                paramName: localizations.myCars,
                onTap: wm.openMyCars,
              ),
              const SizedBox(height: 28),
              SettingElement(
                picture: "assets/svg/work_selection.svg",
                paramName: localizations.selectWork,
                onTap: wm.toWorksScreen,
              ),
              const SizedBox(height: 28),
              SettingElement(
                picture: "assets/svg/works_history.svg",
                paramName: localizations.worksHistory,
                onTap: wm.toCompleteWorksScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
