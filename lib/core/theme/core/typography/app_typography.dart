import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/res_font_extension.dart';
import '../extensions/theme_ext.dart';

abstract final class AppTypography {
  static const fontFamily = 'Almarai';
  static TextTheme getTextTheme({required BuildContext context}) {
    return TextTheme(
      //    Hero title، عنوان الصفحة الرئيسية، Landing page hero، أرقام ضخمة جدًا
      displayLarge: TextStyle(fontSize: 26.sp.rf(context), fontWeight: .bold),
      //! -8              Hero titles، عناوين رئيسية كبيرة، أرقام/إحصائيات بارزة
      displayMedium: TextStyle(fontSize: 18.sp.rf(context), fontWeight: .bold),
      //! -8              Hero titles، عناوين رئيسية كبيرة، أرقام/إحصائيات بارزة
      displaySmall: TextStyle(fontSize: 12.sp.rf(context), fontWeight: .bold),
      //!                 Hero titles، عناوين رئيسية كبيرة، أرقام/إحصائيات بارزة
      headlineLarge: TextStyle(
        fontSize: 28.sp.rf(context),
        fontWeight: .w700,
        height: 1.1,
      ),
      //! -8                عنوان صفحة متوسط، عنوان Modal/Dialog، عنوان Card مهم
      headlineMedium: TextStyle(fontSize: 20.sp.rf(context), fontWeight: .w700),
      //! -8                   عناوين Sections، Card headings، عناوين فرعية مهمة
      headlineSmall: TextStyle(fontSize: 12.sp.rf(context), fontWeight: .w700),
      //!                        AppBar title، عنوان Card، عنوان Dialog، اسم قسم
      titleLarge: TextStyle(fontSize: 18.sp.rf(context), fontWeight: .w700),
      //! -4                List item title، عنوان Form section، عنوان Card صغير
      titleMedium: TextStyle(fontSize: 14.sp.rf(context), fontWeight: .w600),
      //! -2                      عناوين عناصر صغيرة، Navigation، معلومات ثانوية
      titleSmall: TextStyle(fontSize: 12.sp.rf(context), fontWeight: .w500),
      //!                         عناوين عناصر صغيرة، Navigation، معلومات ثانوية
      bodyLarge: TextStyle(
        fontSize: 14.sp.rf(context),
        height: 1.6,
        fontWeight: .w600,
      ),
      //! -2                      وصف ثانوي، Hint، Supporting text، List content
      bodyMedium: TextStyle(
        fontSize: 12.sp.rf(context),
        height: 1.6,
        fontWeight: .w600,
      ),
      //! -2                        Caption، metadata، timestamps، نص مساعد صغير
      bodySmall: TextStyle(
        fontSize: 10.sp.rf(context),
        height: 1.6,
        fontWeight: .w600,
      ),
      //!                               Button text، TextButton، Tab، عناصر تحكم
      labelLarge: TextStyle(fontSize: 14.sp.rf(context), fontWeight: .w600),
      //! -2                               Chip، Badge، Filter، Navigation صغيرة
      labelMedium: TextStyle(fontSize: 12.sp.rf(context), fontWeight: .w600),
      //! -2                          Badge صغير، metadata، overline-like labels
      labelSmall: TextStyle(fontSize: 10.sp.rf(context), fontWeight: .w600),
    );
  }
}
