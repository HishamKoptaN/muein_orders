import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ak.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ff.dart';
import 'app_localizations_lg.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_yo.dart';

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

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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
    Locale('ar'),
    Locale('en'),
    Locale('ak'),
    Locale('ff'),
    Locale('yo'),
    Locale('sw'),
    Locale('lg')
  ];

  /// No description provided for @upload_videos.
  ///
  /// In en, this message translates to:
  /// **'Download videos'**
  String get upload_videos;

  /// No description provided for @welcometoMubinOrders.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Mobin Talabat'**
  String get welcometoMubinOrders;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @indevedual.
  ///
  /// In en, this message translates to:
  /// **'individual'**
  String get indevedual;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructions;

  /// No description provided for @indveduals.
  ///
  /// In en, this message translates to:
  /// **'Vocabulary'**
  String get indveduals;

  /// No description provided for @wearehappytohaveyoujoinourstore.
  ///
  /// In en, this message translates to:
  /// **'We are glad to have you join our store.'**
  String get wearehappytohaveyoujoinourstore;

  /// No description provided for @gettoknowtheapplicationinterface.
  ///
  /// In en, this message translates to:
  /// **'Get to know the application interface'**
  String get gettoknowtheapplicationinterface;

  /// No description provided for @hereyouwillfindtasksrequestsalertsandfilters.
  ///
  /// In en, this message translates to:
  /// **'Here you\'\'ll find tasks, requests, alerts, and filters.'**
  String get hereyouwillfindtasksrequestsalertsandfilters;

  /// No description provided for @documentationWithPhotosAndVideos.
  ///
  /// In en, this message translates to:
  /// **'Documentation with photos and videos'**
  String get documentationWithPhotosAndVideos;

  /// No description provided for @makeSureTheImagesAreClearTheNumberOfCopiesOfTheQuranAndTheOrderCostsAreClearBeforeSending.
  ///
  /// In en, this message translates to:
  /// **'Ensure the clarity of the images, the number of copies of the Holy Quran, and the cost of the order before sending.'**
  String
      get makeSureTheImagesAreClearTheNumberOfCopiesOfTheQuranAndTheOrderCostsAreClearBeforeSending;

  /// No description provided for @we_are_happy_to_have_you_join_our_store.
  ///
  /// In en, this message translates to:
  /// **'We are happy to have you join our store.'**
  String get we_are_happy_to_have_you_join_our_store;

  /// No description provided for @get_to_know_the_application_interface.
  ///
  /// In en, this message translates to:
  /// **'Get to know the application interface'**
  String get get_to_know_the_application_interface;

  /// No description provided for @here_you_will_find_tasks_requests_alerts_and_filters.
  ///
  /// In en, this message translates to:
  /// **'Here you will find tasks, requests, alerts, and filters.'**
  String get here_you_will_find_tasks_requests_alerts_and_filters;

  /// No description provided for @documentation_with_photos_and_videos.
  ///
  /// In en, this message translates to:
  /// **'Documentation with photos and videos'**
  String get documentation_with_photos_and_videos;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'send'**
  String get send;

  /// No description provided for @uploadingDocument.
  ///
  /// In en, this message translates to:
  /// **'Upload documentation'**
  String get uploadingDocument;

  /// No description provided for @documentationIsBeingUploaded.
  ///
  /// In en, this message translates to:
  /// **'Documentation is being uploaded'**
  String get documentationIsBeingUploaded;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phone;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'finished'**
  String get done;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get orders;

  /// No description provided for @package.
  ///
  /// In en, this message translates to:
  /// **'pack'**
  String get package;

  /// No description provided for @there_are_no_results_for_this_search.
  ///
  /// In en, this message translates to:
  /// **'No results found for this search'**
  String get there_are_no_results_for_this_search;

  /// No description provided for @documentations.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documentations;

  /// No description provided for @show_documentations.
  ///
  /// In en, this message translates to:
  /// **'View documents'**
  String get show_documentations;

  /// No description provided for @execution_number.
  ///
  /// In en, this message translates to:
  /// **'Execution number'**
  String get execution_number;

  /// No description provided for @add_documentation.
  ///
  /// In en, this message translates to:
  /// **'Add documents'**
  String get add_documentation;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'location'**
  String get location;

  /// No description provided for @selectLocation.
  ///
  /// In en, this message translates to:
  /// **'Locate'**
  String get selectLocation;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'to set'**
  String get select;

  /// No description provided for @count.
  ///
  /// In en, this message translates to:
  /// **'number'**
  String get count;

  /// No description provided for @registerAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Register an account'**
  String get registerAnAccount;

  /// No description provided for @noMoreDocs.
  ///
  /// In en, this message translates to:
  /// **'There are no other documentations.'**
  String get noMoreDocs;

  /// No description provided for @kinia_name.
  ///
  /// In en, this message translates to:
  /// **'Kenya'**
  String get kinia_name;

  /// No description provided for @smoal_name.
  ///
  /// In en, this message translates to:
  /// **'Somalia'**
  String get smoal_name;

  /// No description provided for @tanzania.
  ///
  /// In en, this message translates to:
  /// **'Tanzania'**
  String get tanzania;

  /// No description provided for @home_title.
  ///
  /// In en, this message translates to:
  /// **'house'**
  String get home_title;

  /// No description provided for @main.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get main;

  /// No description provided for @add_order.
  ///
  /// In en, this message translates to:
  /// **'Add a request'**
  String get add_order;

  /// No description provided for @order_place.
  ///
  /// In en, this message translates to:
  /// **'place'**
  String get order_place;

  /// No description provided for @order_id.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get order_id;

  /// No description provided for @order_number.
  ///
  /// In en, this message translates to:
  /// **'order number'**
  String get order_number;

  /// No description provided for @client_id.
  ///
  /// In en, this message translates to:
  /// **'Customer ID'**
  String get client_id;

  /// No description provided for @enter_order_id.
  ///
  /// In en, this message translates to:
  /// **'Enter order ID'**
  String get enter_order_id;

  /// No description provided for @place_hint.
  ///
  /// In en, this message translates to:
  /// **'Village/Mosque/School'**
  String get place_hint;

  /// No description provided for @add_video.
  ///
  /// In en, this message translates to:
  /// **'Add video'**
  String get add_video;

  /// No description provided for @add_picure.
  ///
  /// In en, this message translates to:
  /// **'Add a photo'**
  String get add_picure;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'addition'**
  String get add;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'download...'**
  String get loading;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLanguage;

  /// No description provided for @login_text.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login_text;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailHint;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email required'**
  String get emailRequired;

  /// No description provided for @phoneNumberHint.
  ///
  /// In en, this message translates to:
  /// **'phone number'**
  String get phoneNumberHint;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'phone number'**
  String get phoneNumber;

  /// No description provided for @countryHint.
  ///
  /// In en, this message translates to:
  /// **'nation'**
  String get countryHint;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPasswordHint;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPassword;

  /// No description provided for @remember_me.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get remember_me;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get log_out;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get areYouSure;

  /// No description provided for @file_pick_failed.
  ///
  /// In en, this message translates to:
  /// **'File selection failed'**
  String get file_pick_failed;

  /// No description provided for @order_saving.
  ///
  /// In en, this message translates to:
  /// **'Saving request...'**
  String get order_saving;

  /// No description provided for @order__is_sharing.
  ///
  /// In en, this message translates to:
  /// **'Request for participation...'**
  String get order__is_sharing;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'to fail'**
  String get failed;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @request_time_out.
  ///
  /// In en, this message translates to:
  /// **'The request has expired.'**
  String get request_time_out;

  /// No description provided for @change_language.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get change_language;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arab'**
  String get arabic;

  /// No description provided for @addDocumentation.
  ///
  /// In en, this message translates to:
  /// **'Add documentation'**
  String get addDocumentation;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'success'**
  String get success;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Closes'**
  String get close;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'required'**
  String get required;

  /// No description provided for @order_added_successfully.
  ///
  /// In en, this message translates to:
  /// **'The request has been added successfully.'**
  String get order_added_successfully;

  /// No description provided for @order_addition_failed.
  ///
  /// In en, this message translates to:
  /// **'Request addition failed'**
  String get order_addition_failed;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'nation'**
  String get country;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select country'**
  String get selectCountry;

  /// No description provided for @passwordsDontMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDontMatch;

  /// No description provided for @firstNameRequired.
  ///
  /// In en, this message translates to:
  /// **'First name is required'**
  String get firstNameRequired;

  /// No description provided for @secondNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Second name required'**
  String get secondNameRequired;

  /// No description provided for @reset_link_sent.
  ///
  /// In en, this message translates to:
  /// **'Reset link sent'**
  String get reset_link_sent;

  /// No description provided for @enter_valid_email_password.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address and password.'**
  String get enter_valid_email_password;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @phoneRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number required'**
  String get phoneRequired;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password required'**
  String get passwordRequired;

  /// No description provided for @passwordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long.'**
  String get passwordMinLength;

  /// No description provided for @confirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password confirmation required'**
  String get confirmPasswordRequired;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Do you already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @confirmYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm your password'**
  String get confirmYourPassword;

  /// No description provided for @request_saving.
  ///
  /// In en, this message translates to:
  /// **'Saving request...'**
  String get request_saving;

  /// No description provided for @order_is_sharing.
  ///
  /// In en, this message translates to:
  /// **'Request for participation...'**
  String get order_is_sharing;

  /// No description provided for @successfully.
  ///
  /// In en, this message translates to:
  /// **'Successfully'**
  String get successfully;

  /// No description provided for @data_dont_saved.
  ///
  /// In en, this message translates to:
  /// **'Data not saved'**
  String get data_dont_saved;

  /// No description provided for @data_saved.
  ///
  /// In en, this message translates to:
  /// **'Stored data'**
  String get data_saved;

  /// No description provided for @order_id_exists.
  ///
  /// In en, this message translates to:
  /// **'Order ID already exists'**
  String get order_id_exists;

  /// No description provided for @select_files.
  ///
  /// In en, this message translates to:
  /// **'Select files'**
  String get select_files;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Exhibition'**
  String get gallery;

  /// No description provided for @cant_be_embty.
  ///
  /// In en, this message translates to:
  /// **'It cannot be empty.'**
  String get cant_be_embty;

  /// No description provided for @please_enter_all_data.
  ///
  /// In en, this message translates to:
  /// **'Please enter all data'**
  String get please_enter_all_data;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get ok;

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

  /// No description provided for @luganda_uganda.
  ///
  /// In en, this message translates to:
  /// **'Luganda - Uganda'**
  String get luganda_uganda;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred.'**
  String get unexpected_error;

  /// No description provided for @notHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'\'t have an account?'**
  String get notHaveAccount;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @enterYourEmailToResetPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to receive a password reset link.'**
  String get enterYourEmailToResetPassword;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'He follows'**
  String get follow;

  /// No description provided for @confirm_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirm_password_hint;

  /// No description provided for @instead.
  ///
  /// In en, this message translates to:
  /// **'instead of'**
  String get instead;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'skip'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'the next'**
  String get next;

  /// No description provided for @documentationAndReviewIsUnderway.
  ///
  /// In en, this message translates to:
  /// **'Documented and under review'**
  String get documentationAndReviewIsUnderway;

  /// No description provided for @not_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'\'t have an account?'**
  String get not_have_account;

  /// No description provided for @errorLoadingOnboarding.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while loading the directive content.'**
  String get errorLoadingOnboarding;

  /// No description provided for @onboardingWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Mobin Talabat'**
  String get onboardingWelcomeTitle;

  /// No description provided for @onboardingWelcomeDescription.
  ///
  /// In en, this message translates to:
  /// **'The comprehensive solution for order management and documentation'**
  String get onboardingWelcomeDescription;

  /// No description provided for @onboardingTrackingTitle.
  ///
  /// In en, this message translates to:
  /// **'Track your orders'**
  String get onboardingTrackingTitle;

  /// No description provided for @onboardingTrackingDescription.
  ///
  /// In en, this message translates to:
  /// **'Monitor your orders in real time with our intuitive tracking system.'**
  String get onboardingTrackingDescription;

  /// No description provided for @doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration.
  ///
  /// In en, this message translates to:
  /// **'Do not delete locally stored photo and video files used to document an application until they are approved by the administration.'**
  String
      get doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration;

  /// No description provided for @doNotDeleteTheDocumentationFiles.
  ///
  /// In en, this message translates to:
  /// **'Do not delete the documentation files.'**
  String get doNotDeleteTheDocumentationFiles;

  /// No description provided for @onboardingDocumentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Document management'**
  String get onboardingDocumentsTitle;

  /// No description provided for @onboardingDocumentsDescription.
  ///
  /// In en, this message translates to:
  /// **'Store and access all your important documents in one secure place.'**
  String get onboardingDocumentsDescription;

  /// No description provided for @do_not_delete_the_locally_stored_photo_and_video_files_used_to_document_an_application_until_they_are_approved_by_the_administration.
  ///
  /// In en, this message translates to:
  /// **'Do not delete locally stored photo and video files used to document an application until they are approved by the administration.'**
  String
      get do_not_delete_the_locally_stored_photo_and_video_files_used_to_document_an_application_until_they_are_approved_by_the_administration;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Helps'**
  String get help;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get createAccount;

  /// No description provided for @passwordResetEmailSentTo.
  ///
  /// In en, this message translates to:
  /// **'A password reset email has been sent to {email}.'**
  String passwordResetEmailSentTo(Object email);

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Do you already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending.
  ///
  /// In en, this message translates to:
  /// **'Ensure the clarity of the images and the correct number of copies of the Holy Quran before sending'**
  String
      get make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending;

  /// No description provided for @failure.
  ///
  /// In en, this message translates to:
  /// **'to fail'**
  String get failure;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get accepted;

  /// No description provided for @approval.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get approval;

  /// No description provided for @itHasNotBeenDocumentedUntilNow.
  ///
  /// In en, this message translates to:
  /// **'Not yet verified'**
  String get itHasNotBeenDocumentedUntilNow;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'subscription'**
  String get signUp;

  /// No description provided for @apPasswordResetLinkHasBeenSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'A password reset link has been sent to your email.'**
  String get apPasswordResetLinkHasBeenSentToYourEmail;

  /// No description provided for @signUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Create a new account'**
  String get signUpTitle;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'first name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'last name'**
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

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'never'**
  String get start;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'e-mail'**
  String get email;

  /// No description provided for @errorCreatingAccount.
  ///
  /// In en, this message translates to:
  /// **'Account creation error'**
  String get errorCreatingAccount;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotPassword;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select language'**
  String get selectLanguage;

  /// No description provided for @numberOfRequests.
  ///
  /// In en, this message translates to:
  /// **'Number of requests'**
  String get numberOfRequests;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'the name'**
  String get name;

  /// No description provided for @welcomeLine1.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcomeLine1;

  /// No description provided for @welcomeLine2.
  ///
  /// In en, this message translates to:
  /// **'to'**
  String get welcomeLine2;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get signIn;

  /// No description provided for @followUp.
  ///
  /// In en, this message translates to:
  /// **'tracking'**
  String get followUp;

  /// No description provided for @aLinkWillBeSentToYouToResetYourPassword.
  ///
  /// In en, this message translates to:
  /// **'A link will be sent to you to reset your password.'**
  String get aLinkWillBeSentToYouToResetYourPassword;

  /// No description provided for @onboardingPage1Title.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get onboardingPage1Title;

  /// No description provided for @onboardingPage1Description.
  ///
  /// In en, this message translates to:
  /// **'We are pleased to have you join our store.'**
  String get onboardingPage1Description;

  /// No description provided for @onboardingPage2Title.
  ///
  /// In en, this message translates to:
  /// **'Explore the app interface'**
  String get onboardingPage2Title;

  /// No description provided for @onboardingPage2Description.
  ///
  /// In en, this message translates to:
  /// **'Here you will find tasks, commands, alerts, and filters.'**
  String get onboardingPage2Description;

  /// No description provided for @aPasswordResetLinkHasBeenSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'A password reset link has been sent to your email.'**
  String get aPasswordResetLinkHasBeenSentToYourEmail;

  /// No description provided for @onboardingPage3Title.
  ///
  /// In en, this message translates to:
  /// **'Documentation with photos and videos'**
  String get onboardingPage3Title;

  /// No description provided for @onboardingPage3Description.
  ///
  /// In en, this message translates to:
  /// **'Ensure the clarity of the images and the correct number of copies of the Holy Quran before sending'**
  String get onboardingPage3Description;

  /// No description provided for @sticker.
  ///
  /// In en, this message translates to:
  /// **'poster'**
  String get sticker;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'finished'**
  String get finished;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get inProgress;

  /// No description provided for @theEnd.
  ///
  /// In en, this message translates to:
  /// **'The end'**
  String get theEnd;

  /// No description provided for @noOrders.
  ///
  /// In en, this message translates to:
  /// **'No requests'**
  String get noOrders;

  /// No description provided for @documented.
  ///
  /// In en, this message translates to:
  /// **'Documented'**
  String get documented;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'to request'**
  String get order;

  /// No description provided for @expenses.
  ///
  /// In en, this message translates to:
  /// **'expenses'**
  String get expenses;

  /// No description provided for @documentingTheRequest.
  ///
  /// In en, this message translates to:
  /// **'Documenting the request'**
  String get documentingTheRequest;

  /// No description provided for @documentationProgress.
  ///
  /// In en, this message translates to:
  /// **'Documentation progress'**
  String get documentationProgress;

  /// No description provided for @notDocumented.
  ///
  /// In en, this message translates to:
  /// **'Not verified'**
  String get notDocumented;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'hanging'**
  String get pending;

  /// No description provided for @uploading.
  ///
  /// In en, this message translates to:
  /// **'Uploading'**
  String get uploading;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'complete'**
  String get completed;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'mistake'**
  String get error;

  /// No description provided for @retryFailedUploads.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryFailedUploads;

  /// No description provided for @retryFailedUploadsDescription.
  ///
  /// In en, this message translates to:
  /// **'Do you want to retry uploading all failed requests?'**
  String get retryFailedUploadsDescription;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get unknown;

  /// No description provided for @startUpload.
  ///
  /// In en, this message translates to:
  /// **'Start uploading'**
  String get startUpload;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'cancellation'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'save'**
  String get save;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @pendingDescription.
  ///
  /// In en, this message translates to:
  /// **'Waiting to be uploaded'**
  String get pendingDescription;

  /// No description provided for @uploadingDescription.
  ///
  /// In en, this message translates to:
  /// **'Uploading now'**
  String get uploadingDescription;

  /// No description provided for @completedDescription.
  ///
  /// In en, this message translates to:
  /// **'Uploaded successfully'**
  String get completedDescription;

  /// No description provided for @failedDescription.
  ///
  /// In en, this message translates to:
  /// **'Failed to upload'**
  String get failedDescription;

  /// No description provided for @unknownDescription.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get unknownDescription;

  /// No description provided for @cancelAllUploads.
  ///
  /// In en, this message translates to:
  /// **'Cancel all uploads'**
  String get cancelAllUploads;

  /// No description provided for @stopMonitoring.
  ///
  /// In en, this message translates to:
  /// **'Stop monitoring'**
  String get stopMonitoring;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'the language'**
  String get language;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @welcomeLine.
  ///
  /// In en, this message translates to:
  /// **'Welcome to'**
  String get welcomeLine;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ak',
        'ar',
        'en',
        'ff',
        'lg',
        'sw',
        'yo'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ak':
      return AppLocalizationsAk();
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'ff':
      return AppLocalizationsFf();
    case 'lg':
      return AppLocalizationsLg();
    case 'sw':
      return AppLocalizationsSw();
    case 'yo':
      return AppLocalizationsYo();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
