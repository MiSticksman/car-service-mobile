import 'package:auto_route/auto_route.dart';
import 'package:car_service_app/app/app.dart';
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

  void logout();

  void openMyCars();

  void openWorksScreen();

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
  void toEditingProfile() {
    router.navigate(EditingProfileRoute());
  }

  @override
  Future<void> logout() async {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(localizations.logout),
        content: Text(localizations.logoutConfirmation),
        actions: [
          TextButton(
            onPressed: () => router.maybePop(),
            child: Text(localizations.no),
          ),
          TextButton(
            onPressed: _logout,
            child: Text(localizations.yes),
          ),
        ],
      ),
    );
  }

  Future<void> _logout() async {
    auth = false;
    await router.maybePop();
    router.root.pushAndPopUntil(
      AuthRoute(),
      predicate: (_) => false,
    );
  }

  @override
  void openMyCars() {
    router.navigate(MyCarsRoute());
  }

  @override
  void openWorksScreen() {
    context.router.navigate(WorksRoute());
  }

  @override
  void toOrderScreen() {}

  @override
  void toCompleteWorksScreen() {}
}
