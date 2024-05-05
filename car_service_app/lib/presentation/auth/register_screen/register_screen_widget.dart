import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/ui_util/app_bar_leading.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'register_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for RegisterScreen module

@RoutePage()
class RegisterScreenWidget
    extends ElementaryWidget<IRegisterScreenWidgetModel> {
  final String phone;
  const RegisterScreenWidget({
    Key? key,
    required this.phone,
    WidgetModelFactory wmFactory = defaultRegisterScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IRegisterScreenWidgetModel wm) {
    final localizations = wm.localizations;
    return UnfocusWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(localizations.registration),
          leading: const AppBarLeading(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValidatedTextField(
                controller: wm.nameController,
                label: localizations.name,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              ValidatedTextField(
                controller: wm.surnameController,
                label: localizations.surname,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              ValidatedTextField(
                readonly: true,
                controller: wm.phoneController,
                label: localizations.phoneNumber,
                keyboardType: TextInputType.number,
                inputFormatters: [wm.phoneMaskedController],
              ),
              const SizedBox(height: 20),
              ValidatedTextField(
                controller: wm.emailController,
                label: localizations.email,
                keyboardType: TextInputType.emailAddress,
              ),
              Row(
                children: [
                  // Radio(value: value, groupValue: groupValue, onChanged: (b){}),
                  Text(''),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: ElevatedButton(
                    onPressed: wm.register,
                    child: Text(localizations.register),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
