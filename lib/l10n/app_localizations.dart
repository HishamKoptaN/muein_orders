import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_lg.dart';
import 'app_localizations_sw.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('lg'),
    Locale('lg', 'UG'),
    Locale('sw'),
    Locale('sw', 'KE'),
    Locale('sw', 'TZ')
  ];

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get signUpTitle;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequired;

  /// No description provided for @accountCreated.
  ///
  /// In en, this message translates to:
  /// **'Account created successfully'**
  String get accountCreated;

  /// No description provided for @errorCreatingAccount.
  ///
  /// In en, this message translates to:
  /// **'Error creating account'**
  String get errorCreatingAccount;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @add_documentation.
  ///
  /// In en, this message translates to:
  /// **'Add Documentation'**
  String get add_documentation;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Mubin Orders'**
  String get welcome;

  /// No description provided for @add_documentations_view.
  ///
  /// In en, this message translates to:
  /// **'===================================  add_documentations_view  ============================================'**
  String get add_documentations_view;

  /// No description provided for @add_order.
  ///
  /// In en, this message translates to:
  /// **'Add Order'**
  String get add_order;

  /// No description provided for @add_picure.
  ///
  /// In en, this message translates to:
  /// **'Add Picture'**
  String get add_picure;

  /// No description provided for @add_video.
  ///
  /// In en, this message translates to:
  /// **'Add Video'**
  String get add_video;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @cant_be_embty.
  ///
  /// In en, this message translates to:
  /// **'Cannot be empty'**
  String get cant_be_embty;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @change_language.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get change_language;

  /// No description provided for @client_id.
  ///
  /// In en, this message translates to:
  /// **'Client ID'**
  String get client_id;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get follow;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPasswordHint;

  /// No description provided for @confirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get confirmPasswordRequired;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @confirmYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmYourPassword;

  /// No description provided for @confirm_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password_hint;

  /// No description provided for @count.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get count;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @countryHint.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get countryHint;

  /// No description provided for @data_dont_saved.
  ///
  /// In en, this message translates to:
  /// **'Data not saved'**
  String get data_dont_saved;

  /// No description provided for @data_saved.
  ///
  /// In en, this message translates to:
  /// **'Data saved successfully'**
  String get data_saved;

  /// No description provided for @documentations.
  ///
  /// In en, this message translates to:
  /// **'Documentations'**
  String get documentations;

  /// No description provided for @documentations_view.
  ///
  /// In en, this message translates to:
  /// **'================================  documentations_view  ============================================'**
  String get documentations_view;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @passwordsDontMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDontMatch;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailHint;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @enter_order_id.
  ///
  /// In en, this message translates to:
  /// **'Enter Order ID'**
  String get enter_order_id;

  /// No description provided for @enter_valid_email_password.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid email and password'**
  String get enter_valid_email_password;

  /// No description provided for @execution_number.
  ///
  /// In en, this message translates to:
  /// **'Execution Number'**
  String get execution_number;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @file_pick_failed.
  ///
  /// In en, this message translates to:
  /// **'File selection failed'**
  String get file_pick_failed;

  /// No description provided for @firstNameRequired.
  ///
  /// In en, this message translates to:
  /// **'First name is required'**
  String get firstNameRequired;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @home_title.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_title;

  /// No description provided for @instead.
  ///
  /// In en, this message translates to:
  /// **'instead'**
  String get instead;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @kinia_name.
  ///
  /// In en, this message translates to:
  /// **'Kenya'**
  String get kinia_name;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get log_out;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get areYouSure;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @login_text.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login_text;

  /// No description provided for @make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending.
  ///
  /// In en, this message translates to:
  /// **'Make sure the images are clear and the number of copies of the Quran is correct before sending'**
  String
      get make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get start;

  /// No description provided for @get_to_know_the_application_interface.
  ///
  /// In en, this message translates to:
  /// **'Get to know the application interface'**
  String get get_to_know_the_application_interface;

  /// No description provided for @here_you_will_find_tasks_requests_alerts_and_filters.
  ///
  /// In en, this message translates to:
  /// **'Here you will find tasks, requests, alerts, and filters'**
  String get here_you_will_find_tasks_requests_alerts_and_filters;

  /// No description provided for @we_are_happy_to_have_you_join_our_store.
  ///
  /// In en, this message translates to:
  /// **'We are happy to have you join our store!'**
  String get we_are_happy_to_have_you_join_our_store;

  /// No description provided for @luganda_uganda.
  ///
  /// In en, this message translates to:
  /// **'Luganda - Uganda'**
  String get luganda_uganda;

  /// No description provided for @not_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get not_have_account;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @order__is_sharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing Order'**
  String get order__is_sharing;

  /// No description provided for @order_added_successfully.
  ///
  /// In en, this message translates to:
  /// **'Order Added Successfully'**
  String get order_added_successfully;

  /// No description provided for @order_addition_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to Add Order'**
  String get order_addition_failed;

  /// No description provided for @order_id.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get order_id;

  /// No description provided for @order_id_exists.
  ///
  /// In en, this message translates to:
  /// **'Order ID already exists'**
  String get order_id_exists;

  /// No description provided for @order_is_sharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing Order'**
  String get order_is_sharing;

  /// No description provided for @order_number.
  ///
  /// In en, this message translates to:
  /// **'Order Number'**
  String get order_number;

  /// No description provided for @order_place.
  ///
  /// In en, this message translates to:
  /// **'Place'**
  String get order_place;

  /// No description provided for @order_saving.
  ///
  /// In en, this message translates to:
  /// **'Saving Order'**
  String get order_saving;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @orders_view.
  ///
  /// In en, this message translates to:
  /// **'========================================  orders_view  ============================================'**
  String get orders_view;

  /// No description provided for @package.
  ///
  /// In en, this message translates to:
  /// **'Package'**
  String get package;

  /// No description provided for @passwordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordMinLength;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone;

  /// No description provided for @phoneNumberHint.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumberHint;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @phoneRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get phoneRequired;

  /// No description provided for @place_hint.
  ///
  /// In en, this message translates to:
  /// **'Village/Mosque/School'**
  String get place_hint;

  /// No description provided for @please_enter_all_data.
  ///
  /// In en, this message translates to:
  /// **'Please enter all required information'**
  String get please_enter_all_data;

  /// No description provided for @remember_me.
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get remember_me;

  /// No description provided for @request_saving.
  ///
  /// In en, this message translates to:
  /// **'Saving Request'**
  String get request_saving;

  /// No description provided for @request_time_out.
  ///
  /// In en, this message translates to:
  /// **'Request Timeout'**
  String get request_time_out;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @reset_link_sent.
  ///
  /// In en, this message translates to:
  /// **'Password reset link sent'**
  String get reset_link_sent;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @secondNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Last name is required'**
  String get secondNameRequired;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectCountry;

  /// No description provided for @select_files.
  ///
  /// In en, this message translates to:
  /// **'Select Files'**
  String get select_files;

  /// No description provided for @show_documentations.
  ///
  /// In en, this message translates to:
  /// **'Show Documentations'**
  String get show_documentations;

  /// No description provided for @smoal_name.
  ///
  /// In en, this message translates to:
  /// **'Somalia'**
  String get smoal_name;

  /// No description provided for @successfully.
  ///
  /// In en, this message translates to:
  /// **'Successfully'**
  String get successfully;

  /// No description provided for @swahili_kenya.
  ///
  /// In en, this message translates to:
  /// **'Swahili - Kenya'**
  String get swahili_kenya;

  /// No description provided for @swahili_tanzania.
  ///
  /// In en, this message translates to:
  /// **'Swahili - Tanzania'**
  String get swahili_tanzania;

  /// No description provided for @tanzania.
  ///
  /// In en, this message translates to:
  /// **'Tanzania'**
  String get tanzania;

  /// No description provided for @there_are_no_results_for_this_search.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get there_are_no_results_for_this_search;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error occurred'**
  String get unexpected_error;

  /// No description provided for @upload_videos.
  ///
  /// In en, this message translates to:
  /// **'Upload Videos'**
  String get upload_videos;

  /// No description provided for @documentation_with_photos_and_videos.
  ///
  /// In en, this message translates to:
  /// **'Documentation with photos and videos'**
  String get documentation_with_photos_and_videos;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'lg', 'sw'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'lg':
      {
        switch (locale.countryCode) {
          case 'UG':
            return AppLocalizationsLgUg();
        }
        break;
      }
    case 'sw':
      {
        switch (locale.countryCode) {
          case 'KE':
            return AppLocalizationsSwKe();
          case 'TZ':
            return AppLocalizationsSwTz();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'lg':
      return AppLocalizationsLg();
    case 'sw':
      return AppLocalizationsSw();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
