import 'package:auto_route/annotations.dart';
import 'package:car_service_app/app/app_text.dart';
import 'package:car_service_app/presentation/profile_screen/components/order/active_orders_list.dart';
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
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          localizations.profileTitle,
          style: AppText.title,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: GestureDetector(
              onTap: wm.toEditingProfile,
              child: SvgPicture.asset(
                'assets/svg/light/edit.svg',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                UserDataElement(
                  userName: 'Вадим Шафоростов',
                  logoutTap: wm.logout,
                ),
                // const Spacer(flex: 3),
                // // todo condition on preorder
                // if (true)
                //   SettingElement(
                //     picture: "assets/svg/preorder_work_detail.svg",
                //     paramName: localizations.completeRegistration,
                //     onTap: wm.toOrderScreen,
                //   ),
                const SizedBox(height: 30),
                SettingElement(
                  picture: 'assets/svg/light/car.svg',
                  paramName: localizations.myCars,
                  onTap: wm.openMyCars,
                ),
                const SizedBox(height: 30),
                SettingElement(
                  picture: "assets/svg/light/work_selection.svg",
                  paramName: localizations.selectWork,
                  onTap: wm.openWorksScreen,
                ),
                const SizedBox(height: 30),
                SettingElement(
                  picture: "assets/svg/light/works_history.svg",
                  paramName: localizations.worksHistory,
                  onTap: wm.toCompleteWorksScreen,
                ),
                // TextButton(
                //   onPressed: () => wm.router.navigate(OrderRoute()),
                //   child: Text('shortcut'),
                // ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          ActiveOrdersList(),
        ],
      ),
    );
  }
}
