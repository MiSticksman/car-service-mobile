import 'package:auto_route/annotations.dart';
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
        automaticallyImplyLeading: false,
        title: Text(localizations.profileTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            children: [
              UserDataElement(
                userName: 'Вадим Шафоростов',
                onTap: wm.toEditingProfile,
              ),
              const SizedBox(height: 30),
              // todo condition on preorder
              if (true)
                SettingElement(
                  picture: "assets/svg/preorder_work_detail.svg",
                  paramName: localizations.completeRegistration,
                  onTap: wm.toOrderScreen,
                ),
              SettingElement(
                picture: 'assets/car.png',
                paramName: localizations.myCars,
                onTap: wm.openMyCars,
              ),
              SettingElement(
                picture: "assets/svg/tool.svg",
                paramName: localizations.selectWork,
                onTap: wm.toWorksScreen,
              ),
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
