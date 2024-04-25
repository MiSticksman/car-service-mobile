import 'package:auto_route/annotations.dart';
import 'package:car_service_app/presentation/ui_util/close_widget.dart';
import 'package:car_service_app/presentation/ui_util/unfocus.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'editing_profile_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for EditingProfileScreen module
@RoutePage()
class EditingProfileScreenWidget
    extends ElementaryWidget<IEditingProfileScreenWidgetModel> {
  const EditingProfileScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultEditingProfileScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IEditingProfileScreenWidgetModel wm) {
    final localizations = wm.localizations;
    final textTheme = wm.theme.textTheme;
    return SafeArea(
      child: UnfocusWidget(
        child: Scaffold(
          appBar: AppBar(
            title: Text(localizations.myData),
            actions: const [CloseWidget()],
            automaticallyImplyLeading: false,
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
                  controller: wm.phoneController,
                  label: localizations.phoneNumber,
                  hintText: '+7 (900) 000-00-00',
                  keyboardType: TextInputType.number,
                  inputFormatters: [wm.phoneMaskedController],
                ),
                const SizedBox(height: 20),
                ValidatedTextField(
                  controller: wm.emailController,
                  label: localizations.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 50,
                  ),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: wm.saveData,
                      child: Text(localizations.save),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
