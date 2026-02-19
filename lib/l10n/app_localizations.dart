import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ak.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ff.dart';
import 'app_localizations_fr.dart';
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
    Locale('fr'),
    Locale('lg'),
  ];

  /// No description provided for @upload_videos.
  ///
  /// In en, this message translates to:
  /// **'تحميل مقاطع الفيديو'**
  String get upload_videos;

  /// No description provided for @welcometoMueinOrders.
  ///
  /// In en, this message translates to:
  /// **'مرحباً بكم في طلبات موبين'**
  String get welcometoMueinOrders;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'مرحباً'**
  String get welcome;

  /// No description provided for @indevedual.
  ///
  /// In en, this message translates to:
  /// **'فردي'**
  String get indevedual;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'التعليمات'**
  String get instructions;

  /// No description provided for @indveduals.
  ///
  /// In en, this message translates to:
  /// **'المفردات'**
  String get indveduals;

  /// No description provided for @wearehappytohaveyoujoinourstore.
  ///
  /// In en, this message translates to:
  /// **'نحن سعداء بانضمامك لمتجرنا.'**
  String get wearehappytohaveyoujoinourstore;

  /// No description provided for @gettoknowtheapplicationinterface.
  ///
  /// In en, this message translates to:
  /// **'تعرف على واجهة التطبيق'**
  String get gettoknowtheapplicationinterface;

  /// No description provided for @hereyouwillfindtasksrequestsalertsandfilters.
  ///
  /// In en, this message translates to:
  /// **'ستجد هنا المهام والطلبات والتنبيهات والمرشحات.'**
  String get hereyouwillfindtasksrequestsalertsandfilters;

  /// No description provided for @documentationWithPhotosAndVideos.
  ///
  /// In en, this message translates to:
  /// **'التوثيق بالصور والفيديوهات'**
  String get documentationWithPhotosAndVideos;

  /// No description provided for @makeSureTheImagesAreClearTheNumberOfCopiesOfTheQuranAndTheOrderCostsAreClearBeforeSending.
  ///
  /// In en, this message translates to:
  /// **'تأكد من وضوح الصور وعدد نسخ القرآن الكريم وتكاليف الطلب قبل الإرسال.'**
  String
  get makeSureTheImagesAreClearTheNumberOfCopiesOfTheQuranAndTheOrderCostsAreClearBeforeSending;

  /// No description provided for @we_are_happy_to_have_you_join_our_store.
  ///
  /// In en, this message translates to:
  /// **'سعيدين بانضمامك إلى متجر مبين'**
  String get we_are_happy_to_have_you_join_our_store;

  /// No description provided for @get_to_know_the_application_interface.
  ///
  /// In en, this message translates to:
  /// **'تعرف على واجهة التطبيق'**
  String get get_to_know_the_application_interface;

  /// No description provided for @here_you_will_find_tasks_requests_alerts_and_filters.
  ///
  /// In en, this message translates to:
  /// **'ستجد هنا المهام والطلبات والتنبيهات والمرشحات'**
  String get here_you_will_find_tasks_requests_alerts_and_filters;

  /// No description provided for @documentation_with_photos_and_videos.
  ///
  /// In en, this message translates to:
  /// **'التوثيق بالصور والفيديوهات'**
  String get documentation_with_photos_and_videos;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'أرسال'**
  String get send;

  /// No description provided for @uploadingDocument.
  ///
  /// In en, this message translates to:
  /// **'رفع التوثيق'**
  String get uploadingDocument;

  /// No description provided for @documentationIsBeingUploaded.
  ///
  /// In en, this message translates to:
  /// **'جاري رفع التوثيق'**
  String get documentationIsBeingUploaded;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'رقم التليفون'**
  String get phone;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'منتهي'**
  String get done;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'طلبات'**
  String get orders;

  /// No description provided for @package.
  ///
  /// In en, this message translates to:
  /// **'حزمة'**
  String get package;

  /// No description provided for @there_are_no_results_for_this_search.
  ///
  /// In en, this message translates to:
  /// **'لم يتم العثور على نتائج لهذا البحث'**
  String get there_are_no_results_for_this_search;

  /// No description provided for @documentations.
  ///
  /// In en, this message translates to:
  /// **'الوثائق'**
  String get documentations;

  /// No description provided for @show_documentations.
  ///
  /// In en, this message translates to:
  /// **'عرض الوثائق'**
  String get show_documentations;

  /// No description provided for @show_documentation.
  ///
  /// In en, this message translates to:
  /// **'عرض التوثيق'**
  String get show_documentation;

  /// No description provided for @execution_number.
  ///
  /// In en, this message translates to:
  /// **'رقم التنفيذ'**
  String get execution_number;

  /// No description provided for @add_documentation.
  ///
  /// In en, this message translates to:
  /// **'إضافة الوثائق'**
  String get add_documentation;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'موقع'**
  String get location;

  /// No description provided for @selectLocation.
  ///
  /// In en, this message translates to:
  /// **'تحديد الموقع'**
  String get selectLocation;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'تحديد'**
  String get select;

  /// No description provided for @count.
  ///
  /// In en, this message translates to:
  /// **'عدد'**
  String get count;

  /// No description provided for @registerAnAccount.
  ///
  /// In en, this message translates to:
  /// **'تسجيل حساب'**
  String get registerAnAccount;

  /// No description provided for @noMoreDocs.
  ///
  /// In en, this message translates to:
  /// **'لا يوجد توثيقات أخرى.'**
  String get noMoreDocs;

  /// No description provided for @kinia_name.
  ///
  /// In en, this message translates to:
  /// **'كينيا'**
  String get kinia_name;

  /// No description provided for @smoal_name.
  ///
  /// In en, this message translates to:
  /// **'الصومال'**
  String get smoal_name;

  /// No description provided for @tanzania.
  ///
  /// In en, this message translates to:
  /// **'تنزانيا'**
  String get tanzania;

  /// No description provided for @home_title.
  ///
  /// In en, this message translates to:
  /// **'بيت'**
  String get home_title;

  /// No description provided for @main.
  ///
  /// In en, this message translates to:
  /// **'الرئيسية'**
  String get main;

  /// No description provided for @add_order.
  ///
  /// In en, this message translates to:
  /// **'إضافة طلب'**
  String get add_order;

  /// No description provided for @order_place.
  ///
  /// In en, this message translates to:
  /// **'مكان'**
  String get order_place;

  /// No description provided for @order_id.
  ///
  /// In en, this message translates to:
  /// **'معرف الطلب'**
  String get order_id;

  /// No description provided for @order_number.
  ///
  /// In en, this message translates to:
  /// **'رقم الطلب'**
  String get order_number;

  /// No description provided for @client_id.
  ///
  /// In en, this message translates to:
  /// **'معرف العميل'**
  String get client_id;

  /// No description provided for @enter_order_id.
  ///
  /// In en, this message translates to:
  /// **'أدخل معرف الطلب'**
  String get enter_order_id;

  /// No description provided for @place_hint.
  ///
  /// In en, this message translates to:
  /// **'قرية/مسجد/مدرسة'**
  String get place_hint;

  /// No description provided for @add_video.
  ///
  /// In en, this message translates to:
  /// **'إضافة فيديو'**
  String get add_video;

  /// No description provided for @add_picure.
  ///
  /// In en, this message translates to:
  /// **'أضف صورة'**
  String get add_picure;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'اضافة'**
  String get add;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'تحميل...'**
  String get loading;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'تغيير اللغة'**
  String get changeLanguage;

  /// No description provided for @login_text.
  ///
  /// In en, this message translates to:
  /// **'تسجيل الدخول'**
  String get login_text;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'تسجيل الدخول'**
  String get login;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'البريد إلكتروني'**
  String get emailHint;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'البريد الإلكتروني مطلوب'**
  String get emailRequired;

  /// No description provided for @phoneNumberHint.
  ///
  /// In en, this message translates to:
  /// **'رقم الهاتف'**
  String get phoneNumberHint;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'رقم الهاتف'**
  String get phoneNumber;

  /// No description provided for @countryHint.
  ///
  /// In en, this message translates to:
  /// **'دولة'**
  String get countryHint;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'تأكيد كلمة المرور'**
  String get confirmPasswordHint;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'تأكيد كلمة المرور'**
  String get confirmPassword;

  /// No description provided for @remember_me.
  ///
  /// In en, this message translates to:
  /// **'تذكرنى'**
  String get remember_me;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'تسجيل الخروج'**
  String get log_out;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'هل أنت متأكد أنك تريد تسجيل الخروج؟'**
  String get areYouSure;

  /// No description provided for @file_pick_failed.
  ///
  /// In en, this message translates to:
  /// **'فشل اختيار الملف'**
  String get file_pick_failed;

  /// No description provided for @order_saving.
  ///
  /// In en, this message translates to:
  /// **'جاري حفظ الطلب...'**
  String get order_saving;

  /// No description provided for @order__is_sharing.
  ///
  /// In en, this message translates to:
  /// **'طلب المشاركة...'**
  String get order__is_sharing;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'فشل'**
  String get failed;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'أو'**
  String get or;

  /// No description provided for @request_time_out.
  ///
  /// In en, this message translates to:
  /// **'انتهت مهلة الطلب'**
  String get request_time_out;

  /// No description provided for @change_language.
  ///
  /// In en, this message translates to:
  /// **'تغيير اللغة'**
  String get change_language;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'عربي'**
  String get arabic;

  /// No description provided for @addDocumentation.
  ///
  /// In en, this message translates to:
  /// **'إضافة توثيق'**
  String get addDocumentation;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'نجاح'**
  String get success;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'إنجليزي'**
  String get english;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'يغلق'**
  String get close;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'مطلوب'**
  String get required;

  /// No description provided for @order_added_successfully.
  ///
  /// In en, this message translates to:
  /// **'تمت إضافة الطلب بنجاح'**
  String get order_added_successfully;

  /// No description provided for @order_addition_failed.
  ///
  /// In en, this message translates to:
  /// **'فشلت إضافة الطلب'**
  String get order_addition_failed;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'دولة'**
  String get country;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'اختر البلد'**
  String get selectCountry;

  /// No description provided for @passwordsDontMatch.
  ///
  /// In en, this message translates to:
  /// **'كلمات المرور غير متطابقة'**
  String get passwordsDontMatch;

  /// No description provided for @firstNameRequired.
  ///
  /// In en, this message translates to:
  /// **'الاسم الأول مطلوب'**
  String get firstNameRequired;

  /// No description provided for @secondNameRequired.
  ///
  /// In en, this message translates to:
  /// **'الاسم الثاني مطلوب'**
  String get secondNameRequired;

  /// No description provided for @reset_link_sent.
  ///
  /// In en, this message translates to:
  /// **'تم إرسال رابط إعادة التعيين'**
  String get reset_link_sent;

  /// No description provided for @enter_valid_email_password.
  ///
  /// In en, this message translates to:
  /// **'أدخل بريدًا إلكترونيًا وكلمة مرور صالحين'**
  String get enter_valid_email_password;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'بريد إلكتروني غير صالح'**
  String get invalidEmail;

  /// No description provided for @phoneRequired.
  ///
  /// In en, this message translates to:
  /// **'رقم الهاتف مطلوب'**
  String get phoneRequired;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'كلمة المرور مطلوبة'**
  String get passwordRequired;

  /// No description provided for @passwordMinLength.
  ///
  /// In en, this message translates to:
  /// **'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل'**
  String get passwordMinLength;

  /// No description provided for @confirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'تأكيد كلمة المرور مطلوب'**
  String get confirmPasswordRequired;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'هل لديك حساب بالفعل؟'**
  String get alreadyHaveAnAccount;

  /// No description provided for @confirmYourPassword.
  ///
  /// In en, this message translates to:
  /// **'تأكيد كلمة المرور الخاصة بك'**
  String get confirmYourPassword;

  /// No description provided for @request_saving.
  ///
  /// In en, this message translates to:
  /// **'جاري حفظ الطلب...'**
  String get request_saving;

  /// No description provided for @order_is_sharing.
  ///
  /// In en, this message translates to:
  /// **'طلب المشاركة...'**
  String get order_is_sharing;

  /// No description provided for @successfully.
  ///
  /// In en, this message translates to:
  /// **'بنجاح'**
  String get successfully;

  /// No description provided for @data_dont_saved.
  ///
  /// In en, this message translates to:
  /// **'لم يتم حفظ البيانات'**
  String get data_dont_saved;

  /// No description provided for @data_saved.
  ///
  /// In en, this message translates to:
  /// **'البيانات المحفوظة'**
  String get data_saved;

  /// No description provided for @order_id_exists.
  ///
  /// In en, this message translates to:
  /// **'معرف الطلب موجود بالفعل'**
  String get order_id_exists;

  /// No description provided for @select_files.
  ///
  /// In en, this message translates to:
  /// **'تحديد الملفات'**
  String get select_files;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'الكاميرا'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'المعرض'**
  String get gallery;

  /// No description provided for @cant_be_embty.
  ///
  /// In en, this message translates to:
  /// **'لا يمكن أن يكون فارغا'**
  String get cant_be_embty;

  /// No description provided for @please_enter_all_data.
  ///
  /// In en, this message translates to:
  /// **'الرجاء إدخال كافة البيانات'**
  String get please_enter_all_data;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'نعم'**
  String get ok;

  /// No description provided for @swahili_kenya.
  ///
  /// In en, this message translates to:
  /// **'السواحيلية - كينيا'**
  String get swahili_kenya;

  /// No description provided for @swahili_tanzania.
  ///
  /// In en, this message translates to:
  /// **'السواحيلية - تنزانيا'**
  String get swahili_tanzania;

  /// No description provided for @luganda_uganda.
  ///
  /// In en, this message translates to:
  /// **'لوجاندا - أوغندا'**
  String get luganda_uganda;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'إعادة المحاولة'**
  String get retry;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'حدث خطأ غير متوقع'**
  String get unexpected_error;

  /// No description provided for @notHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'ليس لديك حساب؟'**
  String get notHaveAccount;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'كلمات المرور غير متطابقة'**
  String get passwordsDoNotMatch;

  /// No description provided for @enterYourEmailToResetPassword.
  ///
  /// In en, this message translates to:
  /// **'أدخل بريدك الإلكتروني لتلقي رابط إعادة تعيين كلمة المرور'**
  String get enterYourEmailToResetPassword;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'يتبع'**
  String get follow;

  /// No description provided for @confirm_password_hint.
  ///
  /// In en, this message translates to:
  /// **'تأكيد كلمة المرور'**
  String get confirm_password_hint;

  /// No description provided for @instead.
  ///
  /// In en, this message translates to:
  /// **'بدلاً من'**
  String get instead;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'تخطى'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'التالي'**
  String get next;

  /// No description provided for @documentationAndReviewIsUnderway.
  ///
  /// In en, this message translates to:
  /// **'تم التوثيق وجاري المراجعه'**
  String get documentationAndReviewIsUnderway;

  /// No description provided for @not_have_account.
  ///
  /// In en, this message translates to:
  /// **'ليس لديك حساب؟'**
  String get not_have_account;

  /// No description provided for @errorLoadingOnboarding.
  ///
  /// In en, this message translates to:
  /// **'حدث خطأ أثناء تحميل محتوى التوجيه'**
  String get errorLoadingOnboarding;

  /// No description provided for @onboardingWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'مرحباً بكم في طلبات موبين'**
  String get onboardingWelcomeTitle;

  /// No description provided for @onboardingWelcomeDescription.
  ///
  /// In en, this message translates to:
  /// **'الحل الشامل لإدارة الطلبات والتوثيق'**
  String get onboardingWelcomeDescription;

  /// No description provided for @onboardingTrackingTitle.
  ///
  /// In en, this message translates to:
  /// **'تتبع طلباتك'**
  String get onboardingTrackingTitle;

  /// No description provided for @onboardingTrackingDescription.
  ///
  /// In en, this message translates to:
  /// **'قم بمراقبة طلباتك في الوقت الفعلي باستخدام نظام التتبع البديهي لدينا'**
  String get onboardingTrackingDescription;

  /// No description provided for @doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration.
  ///
  /// In en, this message translates to:
  /// **'لا تقم بحذف ملفات الصور والفيديو المخزنة محلياً المستخدمة لتوثيق طلب حتى يتم الموافقة عليها من قبل الإدارة'**
  String
  get doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration;

  /// No description provided for @doNotDeleteTheDocumentationFiles.
  ///
  /// In en, this message translates to:
  /// **'لا تقم بحذف ملفات التوثيق'**
  String get doNotDeleteTheDocumentationFiles;

  /// No description provided for @onboardingDocumentsTitle.
  ///
  /// In en, this message translates to:
  /// **'إدارة المستندات'**
  String get onboardingDocumentsTitle;

  /// No description provided for @onboardingDocumentsDescription.
  ///
  /// In en, this message translates to:
  /// **'قم بتخزين جميع مستنداتك المهمة والوصول إليها في مكان واحد آمن'**
  String get onboardingDocumentsDescription;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'يساعد'**
  String get help;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'إعدادات'**
  String get settings;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'إنشاء حساب'**
  String get createAccount;

  /// No description provided for @passwordResetEmailSentTo.
  ///
  /// In en, this message translates to:
  /// **'تم إرسال بريد إلكتروني لإعادة تعيين كلمة المرور إلى {email}'**
  String passwordResetEmailSentTo(Object email);

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'هل لديك حساب بالفعل؟'**
  String get alreadyHaveAccount;

  /// No description provided for @make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending.
  ///
  /// In en, this message translates to:
  /// **'تأكد من وضوح الصور و صحة عدد نسخ القرآن الكريم قبل الإرسال'**
  String
  get make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending;

  /// No description provided for @failure.
  ///
  /// In en, this message translates to:
  /// **'فشل'**
  String get failure;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'تم الموافقة'**
  String get accepted;

  /// No description provided for @approval.
  ///
  /// In en, this message translates to:
  /// **'تم الاعتماد'**
  String get approval;

  /// No description provided for @itHasNotBeenDocumentedUntilNow.
  ///
  /// In en, this message translates to:
  /// **'لم يتم التوثيق حتى الآن'**
  String get itHasNotBeenDocumentedUntilNow;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'اشتراك'**
  String get signUp;

  /// No description provided for @apPasswordResetLinkHasBeenSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'لقد تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني'**
  String get apPasswordResetLinkHasBeenSentToYourEmail;

  /// No description provided for @signUpTitle.
  ///
  /// In en, this message translates to:
  /// **'إنشاء حساب جديد'**
  String get signUpTitle;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'الاسم الأول'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'اسم العائلة'**
  String get lastName;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'هذه الخانة مطلوبه'**
  String get fieldRequired;

  /// No description provided for @accountCreated.
  ///
  /// In en, this message translates to:
  /// **'تم إنشاء الحساب بنجاح'**
  String get accountCreated;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'ابدأ'**
  String get start;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @errorCreatingAccount.
  ///
  /// In en, this message translates to:
  /// **'خطأ في إنشاء الحساب'**
  String get errorCreatingAccount;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'كلمة المرور'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'هل نسيت كلمة السر؟'**
  String get forgotPassword;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'اختر اللغة'**
  String get selectLanguage;

  /// No description provided for @numberOfRequests.
  ///
  /// In en, this message translates to:
  /// **'عدد الطلبات'**
  String get numberOfRequests;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'الاسم'**
  String get name;

  /// No description provided for @welcomeLine1.
  ///
  /// In en, this message translates to:
  /// **'مرحباً'**
  String get welcomeLine1;

  /// No description provided for @welcomeLine2.
  ///
  /// In en, this message translates to:
  /// **'ل'**
  String get welcomeLine2;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'تسجيل الدخول'**
  String get signIn;

  /// No description provided for @followUp.
  ///
  /// In en, this message translates to:
  /// **'متابعة'**
  String get followUp;

  /// No description provided for @aLinkWillBeSentToYouToResetYourPassword.
  ///
  /// In en, this message translates to:
  /// **'سيتم إرسال رابط إليك لإعادة تعيين كلمة المرور الخاصة بك'**
  String get aLinkWillBeSentToYouToResetYourPassword;

  /// No description provided for @onboardingPage1Title.
  ///
  /// In en, this message translates to:
  /// **'مرحباً'**
  String get onboardingPage1Title;

  /// No description provided for @onboardingPage1Description.
  ///
  /// In en, this message translates to:
  /// **'يسعدنا انضمامك إلى متجر مبين'**
  String get onboardingPage1Description;

  /// No description provided for @onboardingPage2Title.
  ///
  /// In en, this message translates to:
  /// **'اكتشف واجهة التطبيق'**
  String get onboardingPage2Title;

  /// No description provided for @onboardingPage2Description.
  ///
  /// In en, this message translates to:
  /// **'ستجد هنا المهام والأوامر والتنبيهات والمرشحات'**
  String get onboardingPage2Description;

  /// No description provided for @aPasswordResetLinkHasBeenSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'لقد تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني'**
  String get aPasswordResetLinkHasBeenSentToYourEmail;

  /// No description provided for @onboardingPage3Title.
  ///
  /// In en, this message translates to:
  /// **'التوثيق بالصور والفيديوهات'**
  String get onboardingPage3Title;

  /// No description provided for @onboardingPage3Description.
  ///
  /// In en, this message translates to:
  /// **'تأكد من وضوح الصور و صحة عدد نسخ القرآن الكريم قبل الإرسال'**
  String get onboardingPage3Description;

  /// No description provided for @sticker.
  ///
  /// In en, this message translates to:
  /// **'الملصق'**
  String get sticker;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'منتهي'**
  String get finished;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'الحالية'**
  String get current;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'جاري'**
  String get inProgress;

  /// No description provided for @theEnd.
  ///
  /// In en, this message translates to:
  /// **'المنتهية'**
  String get theEnd;

  /// No description provided for @noOrders.
  ///
  /// In en, this message translates to:
  /// **'لا يوجد طلبات'**
  String get noOrders;

  /// No description provided for @documented.
  ///
  /// In en, this message translates to:
  /// **'تم التوثيق'**
  String get documented;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'طلب'**
  String get order;

  /// No description provided for @expenses.
  ///
  /// In en, this message translates to:
  /// **'مصاريف'**
  String get expenses;

  /// No description provided for @documentingTheRequest.
  ///
  /// In en, this message translates to:
  /// **'توثيق الطلب'**
  String get documentingTheRequest;

  /// No description provided for @documentationProgress.
  ///
  /// In en, this message translates to:
  /// **'تقدم التوثيق'**
  String get documentationProgress;

  /// No description provided for @notDocumented.
  ///
  /// In en, this message translates to:
  /// **'لم يتم التوثيق'**
  String get notDocumented;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'معلق'**
  String get pending;

  /// No description provided for @uploading.
  ///
  /// In en, this message translates to:
  /// **'يتم الرفع'**
  String get uploading;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'مكتمل'**
  String get completed;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'خطأ'**
  String get error;

  /// No description provided for @retryFailedUploads.
  ///
  /// In en, this message translates to:
  /// **'إعادة المحاولة'**
  String get retryFailedUploads;

  /// No description provided for @retryFailedUploadsDescription.
  ///
  /// In en, this message translates to:
  /// **'هل تريد إعادة محاولة رفع جميع الطلبات الفاشلة؟'**
  String get retryFailedUploadsDescription;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'غير معروف'**
  String get unknown;

  /// No description provided for @startUpload.
  ///
  /// In en, this message translates to:
  /// **'بدء الرفع'**
  String get startUpload;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'إلغاء'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'حفظ'**
  String get save;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'تعديل الملف الشخصي'**
  String get editProfile;

  /// No description provided for @pendingDescription.
  ///
  /// In en, this message translates to:
  /// **'في انتظار الرفع'**
  String get pendingDescription;

  /// No description provided for @uploadingDescription.
  ///
  /// In en, this message translates to:
  /// **'يتم الرفع الآن'**
  String get uploadingDescription;

  /// No description provided for @completedDescription.
  ///
  /// In en, this message translates to:
  /// **'تم الرفع بنجاح'**
  String get completedDescription;

  /// No description provided for @failedDescription.
  ///
  /// In en, this message translates to:
  /// **'فشل في الرفع'**
  String get failedDescription;

  /// No description provided for @unknownDescription.
  ///
  /// In en, this message translates to:
  /// **'غير معروف'**
  String get unknownDescription;

  /// No description provided for @cancelAllUploads.
  ///
  /// In en, this message translates to:
  /// **'إلغاء جميع الرفع'**
  String get cancelAllUploads;

  /// No description provided for @stopMonitoring.
  ///
  /// In en, this message translates to:
  /// **'إيقاف المراقبة'**
  String get stopMonitoring;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'اللغة'**
  String get language;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'الملف الشخصي'**
  String get profile;

  /// No description provided for @welcomeLine.
  ///
  /// In en, this message translates to:
  /// **'مرحباً بكم \nفي'**
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
    'fr',
    'lg',
    'sw',
    'yo',
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
    case 'fr':
      return AppLocalizationsFr();
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
    'that was used.',
  );
}
