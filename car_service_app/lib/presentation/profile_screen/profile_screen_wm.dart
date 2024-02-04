import 'package:car_service_app/util/wm_base.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract interface class IProfileScreenWidgetModel
    implements IWidgetModel, IThemeProvider {}

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
}
