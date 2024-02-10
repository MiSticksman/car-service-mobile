import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get catalogTab => 'Catalog';

  @override
  String get cartTab => 'Cart';

  @override
  String get profileTab => 'Profile';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get cartTitle => 'Cart';

  @override
  String get profileTitle => 'My account';

  @override
  String get myCars => 'My cars';

  @override
  String get car => 'Car';

  @override
  String get choosingCarBrand => 'Choosing car brand';

  @override
  String get choosingCarModel => 'Choosing car model';

  @override
  String get carInfo => 'Car information';

  @override
  String get carBrandHintText => 'brand name';

  @override
  String get carModelHintText => 'model name';
}
