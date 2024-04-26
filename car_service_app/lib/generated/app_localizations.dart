import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @catalogTab.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get catalogTab;

  /// No description provided for @worksTab.
  ///
  /// In en, this message translates to:
  /// **'Works'**
  String get worksTab;

  /// No description provided for @cartTab.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cartTab;

  /// No description provided for @profileTab.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTab;

  /// No description provided for @catalogTitle.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get catalogTitle;

  /// No description provided for @cartTitle.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cartTitle;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// No description provided for @myCars.
  ///
  /// In en, this message translates to:
  /// **'My cars'**
  String get myCars;

  /// No description provided for @car.
  ///
  /// In en, this message translates to:
  /// **'Car'**
  String get car;

  /// No description provided for @choosingCarBrand.
  ///
  /// In en, this message translates to:
  /// **'Choosing car brand'**
  String get choosingCarBrand;

  /// No description provided for @choosingCarModel.
  ///
  /// In en, this message translates to:
  /// **'Choosing car model'**
  String get choosingCarModel;

  /// No description provided for @choosingCarConf.
  ///
  /// In en, this message translates to:
  /// **'Choosing car configuration'**
  String get choosingCarConf;

  /// No description provided for @carInfo.
  ///
  /// In en, this message translates to:
  /// **'Car information'**
  String get carInfo;

  /// No description provided for @carBrandHintText.
  ///
  /// In en, this message translates to:
  /// **'brand name'**
  String get carBrandHintText;

  /// No description provided for @carModelHintText.
  ///
  /// In en, this message translates to:
  /// **'model name'**
  String get carModelHintText;

  /// No description provided for @addCar.
  ///
  /// In en, this message translates to:
  /// **'Add car'**
  String get addCar;

  /// No description provided for @selectModel.
  ///
  /// In en, this message translates to:
  /// **'Select model'**
  String get selectModel;

  /// No description provided for @selectYear.
  ///
  /// In en, this message translates to:
  /// **'Select year'**
  String get selectYear;

  /// No description provided for @further.
  ///
  /// In en, this message translates to:
  /// **'Further'**
  String get further;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @emptyCarList.
  ///
  /// In en, this message translates to:
  /// **'The list of your cars is empty'**
  String get emptyCarList;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'year'**
  String get year;

  /// No description provided for @engine.
  ///
  /// In en, this message translates to:
  /// **'engine'**
  String get engine;

  /// No description provided for @transmission.
  ///
  /// In en, this message translates to:
  /// **'transmission'**
  String get transmission;

  /// No description provided for @equipment.
  ///
  /// In en, this message translates to:
  /// **'equipment'**
  String get equipment;

  /// No description provided for @carDescription.
  ///
  /// In en, this message translates to:
  /// **'add a description for the car'**
  String get carDescription;

  /// No description provided for @mileage.
  ///
  /// In en, this message translates to:
  /// **'mileage'**
  String get mileage;

  /// No description provided for @kilometers.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get kilometers;

  /// No description provided for @deleteCar.
  ///
  /// In en, this message translates to:
  /// **'Delete car'**
  String get deleteCar;

  /// No description provided for @removal.
  ///
  /// In en, this message translates to:
  /// **'Removal'**
  String get removal;

  /// No description provided for @removeQuestion.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to remove the car?'**
  String get removeQuestion;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @getCode.
  ///
  /// In en, this message translates to:
  /// **'Get the code'**
  String get getCode;

  /// No description provided for @myData.
  ///
  /// In en, this message translates to:
  /// **'My data'**
  String get myData;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @surname.
  ///
  /// In en, this message translates to:
  /// **'Surname'**
  String get surname;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @selectWork.
  ///
  /// In en, this message translates to:
  /// **'Select work'**
  String get selectWork;

  /// No description provided for @emptyWorksText.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t added any cars yet. To see the list of jobs, add your car'**
  String get emptyWorksText;

  /// No description provided for @completeRegistration.
  ///
  /// In en, this message translates to:
  /// **'Complete registration of an entry in the service'**
  String get completeRegistration;

  /// No description provided for @worksHistory.
  ///
  /// In en, this message translates to:
  /// **'Works done'**
  String get worksHistory;

  /// No description provided for @workSelection.
  ///
  /// In en, this message translates to:
  /// **'Workы'**
  String get workSelection;

  /// No description provided for @presentedWorks.
  ///
  /// In en, this message translates to:
  /// **'The works are presented for the car'**
  String get presentedWorks;

  /// No description provided for @selectAnotherCar.
  ///
  /// In en, this message translates to:
  /// **'Change car'**
  String get selectAnotherCar;

  /// No description provided for @toWorksDetailsDescription.
  ///
  /// In en, this message translates to:
  /// **'To go to the list of parts for the selected works, click «Done»'**
  String get toWorksDetailsDescription;

  /// No description provided for @selectDetails.
  ///
  /// In en, this message translates to:
  /// **'Select details'**
  String get selectDetails;

  /// No description provided for @detailsSelection.
  ///
  /// In en, this message translates to:
  /// **'Details and consumables'**
  String get detailsSelection;

  /// No description provided for @foundDetails.
  ///
  /// In en, this message translates to:
  /// **'A list of the parts that we found for the selected works'**
  String get foundDetails;

  /// No description provided for @carDetailsDescription.
  ///
  /// In en, this message translates to:
  /// **'To sign up for the service, specify which parts you will use and order them yourself on the marketplace'**
  String get carDetailsDescription;

  /// No description provided for @originalDetail.
  ///
  /// In en, this message translates to:
  /// **'Original part'**
  String get originalDetail;

  /// No description provided for @toOrderDescription.
  ///
  /// In en, this message translates to:
  /// **'To proceed to the recording in the service click «Done»'**
  String get toOrderDescription;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
