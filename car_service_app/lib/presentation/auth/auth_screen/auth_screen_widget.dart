import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthScreen module
@RoutePage()
class AuthScreenWidget extends ElementaryWidget<IAuthScreenWidgetModel> {
  const AuthScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return UnfocusWidget(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    localizations.loginOrRegister,
                    textAlign: TextAlign.center,
                    style: wm.theme.textTheme.displayLarge?.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 27),
                ValidatedTextField(
                  controller: wm.phoneController,
                  label: localizations.phoneNumber,
                  hintText: '+7 (900) 000-00-00',
                  keyboardType: TextInputType.number,
                  inputFormatters: [wm.phoneMaskedController],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: wm.getCode,
                    child: Text(localizations.getCode),
                  ),
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
