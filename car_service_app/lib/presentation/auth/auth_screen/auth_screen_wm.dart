import 'package:car_service_app/app/app.dart';
import 'package:car_service_app/presentation/ui_util/snack_bar.dart';
import 'package:car_service_app/router/app_router.dart';
import 'package:car_service_app/router/app_router_export.dart';
import 'package:car_service_app/util/wm_base.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract interface class IAuthScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  TextEditingController get phoneController;

  MaskTextInputFormatter get phoneMaskedController;

  void getCode();
}

AuthScreenWidgetModel defaultAuthScreenWidgetModelFactory(
    BuildContext context) {
  return AuthScreenWidgetModel(AuthScreenModel());
}

// TODO: cover with documentation
/// Default widget model for AuthScreenWidget
class AuthScreenWidgetModel
    extends WidgetModel<AuthScreenWidget, AuthScreenModel>
    with ThemeProvider
    implements IAuthScreenWidgetModel {
  AuthScreenWidgetModel(super.model);

  @override
  final TextEditingController phoneController = TextEditingController();

  @override
  final MaskTextInputFormatter phoneMaskedController = MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );

  final RegExp phoneRegExp = RegExp(r'(^(?:[+0]9)?[0-9]{11}$)');

  String get phoneUnmasked =>
      phoneController.text.replaceAll(RegExp(r'[^0-9]'), '');

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Future<void> getCode() async {
    if (!_validatePhone()) {
      return;
    }
    // запрос на бек
    // auth = false;
    if (auth) {
      router.navigate(ConfirmPhoneRoute());
    } else {
      router.navigate(
        RegisterRoute(phone: phoneController.text),
      );
    }
  }

  bool _validatePhone() {
    bool validate = true;
    if (phoneController.text.isEmpty) {
      validate = false;
    } else {
      final phoneValid = phoneRegExp.hasMatch(phoneUnmasked);
      validate &= phoneValid;
    }
    if (!validate) {
      context.showSnackBar(localizations.incorrectPhoneFormat);
    }
    return validate;
  }
}
