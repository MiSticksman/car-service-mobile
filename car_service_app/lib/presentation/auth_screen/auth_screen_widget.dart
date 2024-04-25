import 'package:auto_route/annotations.dart';
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
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Войти или зарегистрироваться',
            style: wm.theme.textTheme.titleLarge,
          ),
          ValidatedTextField(
            controller: wm.phoneController,
            label: localizations.phoneNumber,
            hintText: '+7 (900) 000-00-00',
            keyboardType: TextInputType.number,
            inputFormatters: [wm.phoneMaskedController],
          ),
          ElevatedButton(
            onPressed: wm.getCode,
            child: Text(localizations.getCode),
          ),
        ],
      ),
    );
  }
}
