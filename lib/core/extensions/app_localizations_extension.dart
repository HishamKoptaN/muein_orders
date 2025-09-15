import 'package:mubin_orders/l10n/app_localizations.dart';
import 'package:mubin_orders/l10n/app_localizations_en.dart';

/// Extension on AppLocalizations to provide fallback values automatically
extension AppLocalizationsExtension on AppLocalizations? {
  /// Get English fallback values
  static AppLocalizations? _englishFallback;

  /// Initialize English fallback (call this in main.dart)
  static void initializeEnglishFallback() {
    try {
      _englishFallback = AppLocalizationsEn('en');
    } catch (e) {
      // If English localization fails to initialize, keep it null
      _englishFallback = null;
    }
  }

  /// Get value with English fallback
  T _getWithFallback<T>(T Function(AppLocalizations) getter, T fallback) {
    try {
      if (this != null) {
        return getter(this!);
      }
    } catch (e) {
      // If current localization fails, try English fallback
      if (_englishFallback != null) {
        try {
          return getter(_englishFallback!);
        } catch (e) {
          // If English also fails, return hardcoded fallback
        }
      }
    }
    return fallback;
  }

  /// Get email hint with fallback
  String get emailHint => _getWithFallback((l) => l.emailHint, 'Email');

  /// Get password with fallback
  String get password => _getWithFallback((l) => l.password, 'Password');

  /// Get forgot password with fallback
  String get forgotPassword =>
      _getWithFallback((l) => l.forgotPassword, 'Forgot Password?');

  /// Get login with fallback
  String get login => _getWithFallback((l) => l.login, 'Login');

  /// Get or with fallback
  String get or => _getWithFallback((l) => l.or, 'or');

  /// Get not have account with fallback
  String get notHaveAccount =>
      _getWithFallback((l) => l.not_have_account, "Don't have an account?");

  /// Get sign up with fallback
  String get signUp => _getWithFallback((l) => l.signUp, 'Sign Up');

  /// Get first name with fallback
  String get firstName => _getWithFallback((l) => l.firstName, 'First Name');

  /// Get last name with fallback
  String get lastName => _getWithFallback((l) => l.lastName, 'Last Name');

  /// Get field required with fallback
  String get fieldRequired =>
      _getWithFallback((l) => l.fieldRequired, 'This field is required');

  /// Get account created with fallback
  String get accountCreated =>
      _getWithFallback((l) => l.accountCreated, 'Account created successfully');

  /// Get error creating account with fallback
  String get errorCreatingAccount =>
      _getWithFallback((l) => l.errorCreatingAccount, 'Error creating account');

  /// Get add with fallback
  String get add => _getWithFallback((l) => l.add, 'Add');

  /// Get welcome with fallback
  String get welcome =>
      _getWithFallback((l) => l.welcome, 'Welcome to Mubin Orders');

  /// Get already have account with fallback
  String get alreadyHaveAccount =>
      _getWithFallback((l) => l.alreadyHaveAccount, 'Already have an account?');

  /// Get confirm password hint with fallback
  String get confirmPasswordHint =>
      _getWithFallback((l) => l.confirmPasswordHint, 'Confirm Password');

  /// Get confirm password required with fallback
  String get confirmPasswordRequired => _getWithFallback(
      (l) => l.confirmPasswordRequired, 'Please confirm your password');

  /// Get confirm password with fallback
  String get confirmPassword =>
      _getWithFallback((l) => l.confirmPassword, 'Confirm Password');

  /// Get passwords do not match with fallback
  String get passwordsDoNotMatch =>
      _getWithFallback((l) => l.passwordsDoNotMatch, 'Passwords do not match');

  /// Get email required with fallback
  String get emailRequired =>
      _getWithFallback((l) => l.emailRequired, 'Email is required');

  /// Get create account with fallback
  String get createAccount =>
      _getWithFallback((l) => l.createAccount, 'Create Account');

  /// Get first name required with fallback
  String get firstNameRequired =>
      _getWithFallback((l) => l.firstNameRequired, 'First name is required');

  /// Get loading with fallback
  String get loading => _getWithFallback((l) => l.loading, 'Loading...');

  /// Get log out with fallback
  String get logOut => _getWithFallback((l) => l.log_out, 'Log Out');

  /// Get are you sure with fallback
  String get areYouSure => _getWithFallback(
      (l) => l.areYouSure, 'Are you sure you want to log out?');

  /// Get next with fallback
  String get next => _getWithFallback((l) => l.next, 'Next');

  /// Get start with fallback
  String get start => _getWithFallback((l) => l.start, 'Get Started');

  /// Get ok with fallback
  String get ok => _getWithFallback((l) => l.ok, 'OK');

  /// Get required with fallback
  String get required => _getWithFallback((l) => l.required, 'Required');

  /// Get successfully with fallback
  String get successfully =>
      _getWithFallback((l) => l.successfully, 'Successfully');

  /// Get unexpected error with fallback
  String get unexpectedError =>
      _getWithFallback((l) => l.unexpected_error, 'Unexpected error occurred');

  /// Get retry with fallback
  String get retry => _getWithFallback((l) => l.retry, 'Retry');

  /// Get close with fallback
  String get close => _getWithFallback((l) => l.close, 'Close');

  /// Get done with fallback
  String get done => _getWithFallback((l) => l.done, 'Done');

  /// Get failed with fallback
  String get failed => _getWithFallback((l) => l.failed, 'Failed');

  /// Get settings with fallback
  String get settings => _getWithFallback((l) => l.settings, 'Settings');

  /// Get help with fallback
  String get help => _getWithFallback((l) => l.help, 'Help');

  /// Get home title with fallback
  String get homeTitle => _getWithFallback((l) => l.home_title, 'Home');

  /// Get orders with fallback
  String get orders => _getWithFallback((l) => l.orders, 'Orders');

  /// Get order id with fallback
  String get orderId => _getWithFallback((l) => l.order_id, 'Order ID');

  /// Get order number with fallback
  String get orderNumber =>
      _getWithFallback((l) => l.order_number, 'Order Number');

  /// Get add order with fallback
  String get addOrder => _getWithFallback((l) => l.add_order, 'Add Order');

  /// Get order added successfully with fallback
  String get orderAddedSuccessfully => _getWithFallback(
      (l) => l.order_added_successfully, 'Order Added Successfully');

  /// Get order addition failed with fallback
  String get orderAdditionFailed =>
      _getWithFallback((l) => l.order_addition_failed, 'Failed to Add Order');

  /// Get order id exists with fallback
  String get orderIdExists =>
      _getWithFallback((l) => l.order_id_exists, 'Order ID already exists');

  /// Get order saving with fallback
  String get orderSaving =>
      _getWithFallback((l) => l.order_saving, 'Saving Order');

  /// Get order sharing with fallback
  String get orderSharing =>
      _getWithFallback((l) => l.order_is_sharing, 'Sharing Order');

  /// Get phone with fallback
  String get phone => _getWithFallback((l) => l.phone, 'Phone Number');

  /// Get phone number hint with fallback
  String get phoneNumberHint =>
      _getWithFallback((l) => l.phoneNumberHint, 'Phone Number');

  /// Get phone number with fallback
  String get phoneNumber =>
      _getWithFallback((l) => l.phoneNumber, 'Phone Number');

  /// Get phone required with fallback
  String get phoneRequired =>
      _getWithFallback((l) => l.phoneRequired, 'Phone number is required');

  /// Get country with fallback
  String get country => _getWithFallback((l) => l.country, 'Country');

  /// Get country hint with fallback
  String get countryHint => _getWithFallback((l) => l.countryHint, 'Country');

  /// Get select country with fallback
  String get selectCountry =>
      _getWithFallback((l) => l.selectCountry, 'Select Country');

  /// Get location with fallback
  String get location => _getWithFallback((l) => l.location, 'Location');

  /// Get place hint with fallback
  String get placeHint =>
      _getWithFallback((l) => l.place_hint, 'Village/Mosque/School');

  /// Get package with fallback
  String get package => _getWithFallback((l) => l.package, 'Package');

  /// Get count with fallback
  String get count => _getWithFallback((l) => l.count, 'Count');

  /// Get execution number with fallback
  String get executionNumber =>
      _getWithFallback((l) => l.execution_number, 'Execution Number');

  /// Get enter order id with fallback
  String get enterOrderId =>
      _getWithFallback((l) => l.enter_order_id, 'Enter Order ID');

  /// Get please enter all data with fallback
  String get pleaseEnterAllData => _getWithFallback(
      (l) => l.please_enter_all_data, 'Please enter all required information');

  /// Get remember me with fallback
  String get rememberMe =>
      _getWithFallback((l) => l.remember_me, 'Remember Me');

  /// Get request saving with fallback
  String get requestSaving =>
      _getWithFallback((l) => l.request_saving, 'Saving Request');

  /// Get request time out with fallback
  String get requestTimeOut =>
      _getWithFallback((l) => l.request_time_out, 'Request Timeout');

  /// Get reset link sent with fallback
  String get resetLinkSent =>
      _getWithFallback((l) => l.reset_link_sent, 'Password reset link sent');

  /// Get second name required with fallback
  String get secondNameRequired =>
      _getWithFallback((l) => l.secondNameRequired, 'Last name is required');

  /// Get select files with fallback
  String get selectFiles =>
      _getWithFallback((l) => l.select_files, 'Select Files');

  /// Get there are no results for this search with fallback
  String get thereAreNoResultsForThisSearch => _getWithFallback(
      (l) => l.there_are_no_results_for_this_search, 'No results found');

  /// Get upload videos with fallback
  String get uploadVideos =>
      _getWithFallback((l) => l.upload_videos, 'Upload Videos');

  /// Get add picture with fallback
  String get addPicture => _getWithFallback((l) => l.add_picure, 'Add Picture');

  /// Get add video with fallback
  String get addVideo => _getWithFallback((l) => l.add_video, 'Add Video');

  /// Get camera with fallback
  String get camera => _getWithFallback((l) => l.camera, 'Camera');

  /// Get gallery with fallback
  String get gallery => _getWithFallback((l) => l.gallery, 'Gallery');

  /// Get select language with fallback
  String get selectLanguage =>
      _getWithFallback((l) => l.selectLanguage, 'Select Language');

  /// Get change language with fallback
  String get changeLanguage =>
      _getWithFallback((l) => l.changeLanguage, 'Change Language');

  /// Get english with fallback
  String get english => _getWithFallback((l) => l.english, 'English');

  /// Get arabic with fallback
  String get arabic => _getWithFallback((l) => l.arabic, 'Arabic');

  /// Get follow with fallback
  String get follow => _getWithFallback((l) => l.follow, 'Continue');

  /// Get instead with fallback
  String get instead => _getWithFallback((l) => l.instead, 'instead');

  /// Get invalid email with fallback
  String get invalidEmail =>
      _getWithFallback((l) => l.invalidEmail, 'Invalid email');

  /// Get password min length with fallback
  String get passwordMinLength => _getWithFallback(
      (l) => l.passwordMinLength, 'Password must be at least 8 characters');

  /// Get password required with fallback
  String get passwordRequired =>
      _getWithFallback((l) => l.passwordRequired, 'Password is required');

  /// Get enter valid email password with fallback
  String get enterValidEmailPassword => _getWithFallback(
      (l) => l.enter_valid_email_password,
      'Please enter valid email and password');

  /// Get cant be empty with fallback
  String get cantBeEmpty =>
      _getWithFallback((l) => l.cant_be_embty, 'Cannot be empty');

  /// Get data dont saved with fallback
  String get dataDontSaved =>
      _getWithFallback((l) => l.data_dont_saved, 'Data not saved');

  /// Get data saved with fallback
  String get dataSaved =>
      _getWithFallback((l) => l.data_saved, 'Data saved successfully');

  /// Get file pick failed with fallback
  String get filePickFailed =>
      _getWithFallback((l) => l.file_pick_failed, 'File selection failed');

  /// Get make sure the images are clear with fallback
  String get makeSureImagesClear => _getWithFallback(
      (l) => l
          .make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending,
      'Make sure the images are clear and the number of copies of the Quran is correct before sending');

  /// Get get to know the application interface with fallback
  String get getToKnowApplicationInterface => _getWithFallback(
      (l) => l.get_to_know_the_application_interface,
      'Get to know the application interface');

  /// Get here you will find tasks with fallback
  String get hereYouWillFindTasks => _getWithFallback(
      (l) => l.here_you_will_find_tasks_requests_alerts_and_filters,
      'Here you will find tasks, requests, alerts and filters');

  /// Get we are happy to have you with fallback
  String get weAreHappyToHaveYou => _getWithFallback(
      (l) => l.we_are_happy_to_have_you_join_our_store,
      'We are happy to have you join our store!');

  /// Get documentation with photos and videos with fallback
  String get documentationWithPhotosAndVideos => _getWithFallback(
      (l) => l.documentation_with_photos_and_videos,
      'Documentation with photos and videos');

  /// Get show documentations with fallback
  String get showDocumentations =>
      _getWithFallback((l) => l.show_documentations, 'Show Documentations');

  /// Get add documentation with fallback
  String get addDocumentation =>
      _getWithFallback((l) => l.add_documentation, 'Add Documentation');

  /// Get documentations with fallback
  String get documentations =>
      _getWithFallback((l) => l.documentations, 'Documentations');

  /// Get documentations view with fallback
  String get documentationsView =>
      _getWithFallback((l) => l.documentations_view, 'Documentations View');

  /// Get add documentations view with fallback
  String get addDocumentationsView => _getWithFallback(
      (l) => l.add_documentations_view, 'Add Documentations View');

  /// Get orders view with fallback
  String get ordersView =>
      _getWithFallback((l) => l.orders_view, 'Orders View');

  /// Get client id with fallback
  String get clientId => _getWithFallback((l) => l.client_id, 'Client ID');

  /// Get kinia name with fallback
  String get kiniaName => _getWithFallback((l) => l.kinia_name, 'Kenya');

  /// Get smoal name with fallback
  String get smoalName => _getWithFallback((l) => l.smoal_name, 'Somalia');

  /// Get tanzania with fallback
  String get tanzania => _getWithFallback((l) => l.tanzania, 'Tanzania');

  /// Get swahili kenya with fallback
  String get swahiliKenya =>
      _getWithFallback((l) => l.swahili_kenya, 'Swahili - Kenya');

  /// Get swahili tanzania with fallback
  String get swahiliTanzania =>
      _getWithFallback((l) => l.swahili_tanzania, 'Swahili - Tanzania');

  /// Get luganda uganda with fallback
  String get lugandaUganda =>
      _getWithFallback((l) => l.luganda_uganda, 'Luganda - Uganda');
}
