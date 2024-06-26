import 'package:auto_route/annotations.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.profileTitle),

      ),
    );
  }
}
