import 'package:auto_route/auto_route.dart';
import 'package:car_service_app/presentation/editing_profile_screen/editing_profile_screen.dart';
import 'package:car_service_app/presentation/my_cars_screen/my_cars_screen.dart';
import 'package:car_service_app/presentation/works_screen/works_screen.dart';
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

  void toWorksScreen();

  void toOrderScreen();

  void toCompleteWorksScreen();
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
  Future<void> toEditingProfile() async {
    router.navigate(EditingProfileRoute());
    // await showCupertinoModalBottomSheet(
    //   useRootNavigator: true,
    //   isDismissible: false,
    //   enableDrag: false,
    //   context: router.navigatorKey.currentContext!,
    //   builder: (_) => const EditingProfileScreenWidget(),
    // );
  }

  @override
  Future<void> openMyCars() async {
    router.navigate(MyCarsRoute());
    // await showCupertinoModalBottomSheet(
    //   useRootNavigator: true,
    //   isDismissible: false,
    //   enableDrag: false,
    //   context: router.navigatorKey.currentContext!,
    //   builder: (_) => const MyCarsScreenWidget(),
    // );
  }

  @override
  Future<void> toWorksScreen() async {
    context.router.navigate(WorksRoute());
    // showCupertinoModalBottomSheet(
    //   useRootNavigator: true,
    //   isDismissible: false,
    //   enableDrag: false,
    //   context: router.navigatorKey.currentContext!,
    //   builder: (_) => const WorksScreenWidget(),
    // );
  }

  @override
  void toOrderScreen() {}

  @override
  void toCompleteWorksScreen() {}
}
