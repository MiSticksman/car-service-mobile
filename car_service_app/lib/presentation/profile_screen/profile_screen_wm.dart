import 'package:car_service_app/presentation/my_cars_screen/my_cars_screen.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract interface class IProfileScreenWidgetModel
    implements IWidgetModel, IThemeProvider {

  void toEditingProfile();
  void openMyCars();
}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(
    BuildContext context) {
  return ProfileScreenWidgetModel(ProfileScreenModel());
}

// TODO: cover with documentation
/// Default widget model for ProfileScreenWidget
class ProfileScreenWidgetModel
    extends WidgetModel<ProfileScreenWidget, ProfileScreenModel>
    with ThemeProvider
    implements IProfileScreenWidgetModel {
  ProfileScreenWidgetModel(super.model);

  @override
  void toEditingProfile() {
    router.navigate(EditingProfileRoute());
  }
  @override
  Future<void> openMyCars() async {
    // router.push(MyCarsRoute());
    await showCupertinoModalBottomSheet(
      useRootNavigator: true,
      isDismissible: false,
      enableDrag: false,
      context: router.navigatorKey.currentContext!,
      builder: (_) => const MyCarsScreenWidget(),
    );
  }
}
