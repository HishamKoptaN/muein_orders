import 'package:flutter/material.dart';

class AppColors {
  // ====== Color Scheme ======
  
  // Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    // Primary Colors
    primary: Color(0xFF2D9CDB), // الأزرق الأساسي
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFB2DFDB),
    onPrimaryContainer: Color(0xFF002114),
    
    // Secondary Colors
    secondary: Color(0xFFFF7043), // البرتقالي
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDBCF),
    onSecondaryContainer: Color(0xFF2C1609),
    
    // Tertiary Colors
    tertiary: Color(0xFF6750A4),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFEADDFF),
    onTertiaryContainer: Color(0xFF21005D),
    
    // Error Colors
    error: Color(0xFFD32F2F), // أحمر خطأ
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    
    // Surface & Background
    surface: Color(0xFFFFFFFF), // سطح
    onSurface: Color(0xFF1C1B1F), // لون النص على السطح
    surfaceVariant: Color(0xFFE1E2EC), // سطح متغير
    onSurfaceVariant: Color(0xFF45464F), // لون النص على السطح المتغير
    background: Color(0xFFF5F5F5), // خلفية الصفحة
    onBackground: Color(0xFF1C1B1F), // لون النص على الخلفية
    
    // Outline & Shadow
    outline: Color(0xFF79747E),
    outlineVariant: Color(0xFFCAC4D0),
    shadow: Color(0xFF000000),
    scrim: Color(0x73000000),
    
    // Inverse Colors
    inverseSurface: Color(0xFF313033),
    onInverseSurface: Color(0xFFF4EFF4),
    inversePrimary: Color(0xFF4FD8C7),
  );
  
  // Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    // Primary Colors
    primary: Color(0xFF4FD8C7),
    onPrimary: Color(0xFF003731),
    primaryContainer: Color(0xFF005048),
    onPrimaryContainer: Color(0xFF71F5E4),
    
    // Secondary Colors
    secondary: Color(0xFFFFB59E),
    onSecondary: Color(0xFF4A2818),
    secondaryContainer: Color(0xFF643D2C),
    onSecondaryContainer: Color(0xFFFFDBCF),
    
    // Tertiary Colors
    tertiary: Color(0xFFD0BCFF),
    onTertiary: Color(0xFF3F2B6B),
    tertiaryContainer: Color(0xFF564683),
    onTertiaryContainer: Color(0xFFEADDFF),
    
    // Error Colors
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    
    // Surface & Background
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFFE6E1E6),
    surfaceVariant: Color(0xFF45464F),
    onSurfaceVariant: Color(0xFFC8C5D0),
    background: Color(0xFF101418),
    onBackground: Color(0xFFE1E2E8),
    
    // Outline & Shadow
    outline: Color(0xFF938F99),
    outlineVariant: Color(0xFF49454F),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    
    // Inverse Colors
    inverseSurface: Color(0xFFE6E1E6),
    onInverseSurface: Color(0xFF313033),
    inversePrimary: Color(0xFF006A60),
  );
  
  // ====== Semantic Colors ======
  
  // Status Colors
  static const Color success = Color(0xFF4CAF50); // أخضر نجاح
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color successContainer = Color(0xFFC8E6C9);
  
  static const Color warning = Color(0xFFED6C02); // تحذير
  static const Color onWarning = Color(0xFFFFFFFF);
  static const Color warningContainer = Color(0xFFFFE0B2);
  
  static const Color info = Color(0xFF0288D1); // معلومات
  static const Color onInfo = Color(0xFFFFFFFF);
  static const Color infoContainer = Color(0xFFB3E5FC);
  
  // Order Status Colors
  static const Color orderPending = Color(0xFFFFB74D);
  static const Color orderInProgress = Color(0xFF42A5F5);
  static const Color orderCompleted = success;
  static Color get orderCancelled => error;
  
  // ====== Utility Colors ======
  
  // Text Colors
  static const Color textPrimary = Color(0xFF1C1B1F); // نص أساسي
  static const Color textSecondary = Color(0xFF4F4F4F); // نص ثانوي
  static const Color textHint = Color(0xFF757575); // نص تلميحات
  static const Color textDisabled = Color(0xFF9E9E9E); // نص معطل
  
  // Border Colors
  static const Color border = Color(0xFFE0E0E0); // حدود
  static const Color borderLight = Color(0xFFEEEEEE); // حدود فاتحة
  
  // Overlay & Scrim
  static const Color overlay = Color(0x80000000); // طبقة تغطية سوداء شفافة
  
  // Shadow & Elevation
  static const Color shadowLight = Color(0x1A000000); // ظل خفيف
  static const Color shadowMedium = Color(0x33000000); // ظل متوسط
  static const Color shadowDark = Color(0x4D000000); // ظل داكن
  
  // Background Variants
  static const Color backgroundVariant = Color(0xFFE8F4FD); // خلفية متغيرة
  
  // Grey Scale
  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey900 = Color(0xFF212121);
  
  // Transparent
  static const Color transparent = Color(0x00000000);
  
  // Social Colors
  static const Color facebookBlue = Color(0xFF1877F2);
  static const Color twitterBlue = Color(0xFF1DA1F2);
  static const Color googleRed = Color(0xFFDB4437);
  static const Color linkedInBlue = Color(0xFF0A66C2);
  
  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF2D9CDB), Color(0xFF1E88E5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  // ====== Alias for backward compatibility ======
  static Color get primary => lightColorScheme.primary;
  static Color get onPrimary => lightColorScheme.onPrimary;
  static Color get primaryContainer => lightColorScheme.primaryContainer;
  static Color get onPrimaryContainer => lightColorScheme.onPrimaryContainer;
  
  static Color get secondary => lightColorScheme.secondary;
  static Color get onSecondary => lightColorScheme.onSecondary;
  static Color get secondaryContainer => lightColorScheme.secondaryContainer;
  static Color get onSecondaryContainer => lightColorScheme.onSecondaryContainer;
  
  static Color get error => lightColorScheme.error;
  static Color get onError => lightColorScheme.onError;
  static Color get errorContainer => lightColorScheme.errorContainer;
  static Color get onErrorContainer => lightColorScheme.onErrorContainer;
  
  static Color get surface => lightColorScheme.surface;
  static Color get onSurface => lightColorScheme.onSurface;
  static Color get surfaceVariant => lightColorScheme.surfaceVariant;
  static Color get onSurfaceVariant => lightColorScheme.onSurfaceVariant;
  
  static Color get background => lightColorScheme.background;
  static Color get onBackground => lightColorScheme.onBackground;
  
  static Color get outline => lightColorScheme.outline;
  static Color get outlineVariant => lightColorScheme.outlineVariant;
  static Color get shadow => lightColorScheme.shadow;
  static Color get scrim => lightColorScheme.scrim;
  
  // Neutral Colors
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  
  // Additional Colors (Material Design Palette)
  static const Color red = Color(0xFFD32F2F);
  static const Color pink = Color(0xFFC2185B);
  static const Color purple = Color(0xFF7B1FA2);
  static const Color deepPurple = Color(0xFF512DA8);
  static const Color indigo = Color(0xFF303F9F);
  static const Color blue = Color(0xFF1976D2);
  static const Color lightBlue = Color(0xFF0288D1);
  static const Color cyan = Color(0xFF0097A7);
  static const Color teal = Color(0xFF00796B);
  static const Color green = Color(0xFF388E3C);
  static const Color lightGreen = Color(0xFF689F38);
  static const Color lime = Color(0xFFAFB42B);
  static const Color yellow = Color(0xFFFFA000);
  static const Color amber = Color(0xFFFFC107);
  static const Color orange = Color(0xFFFF9800);
  static const Color deepOrange = Color(0xFFF4511E);
  static const Color brown = Color(0xFF5D4037);
  static const Color blueGrey = Color(0xFF455A64);
  
  // Status Aliases
  static const Color uploading = warning;
  static const Color uploaded = success;
  static const Color failed = Color(0xFFD32F2F); // Same as light theme error color
  static const Color pending = grey500;
  
  // Additional Gradients
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFFFF7043), Color(0xFFF4511E)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: <Color>[Color(0xFFF5F5F5), Color(0xFFE8F4FD)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
