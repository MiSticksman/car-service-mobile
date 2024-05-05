import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/ui_util/app_bar_leading.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'confirm_phone_screen_wm.dart';
import 'package:pinput/pinput.dart';

// TODO: cover with documentation
/// Main widget for ConfirmPhoneScreen module

@RoutePage()
class ConfirmPhoneScreenWidget
    extends ElementaryWidget<IConfirmPhoneScreenWidgetModel> {
  const ConfirmPhoneScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultConfirmPhoneScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IConfirmPhoneScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return UnfocusWidget(
      child: Scaffold(
        appBar: AppBar(
          leading: const AppBarLeading(),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                localizations.confirmNumber,
                textAlign: TextAlign.center,
                style: wm.theme.textTheme.displayLarge?.copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 50.0,
                  ),
                  child: Text(
                    '${localizations.enterSms} +7 929 009 12 19',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onBackground,
                    ),
                  ),
                ),
              ),
              Pinput(
                controller: wm.pinController,
                onCompleted: (_) => wm.validatePin(),
              ),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
