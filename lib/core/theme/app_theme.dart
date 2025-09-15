import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final colorScheme = AppColors.lightColorScheme;

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: 'Tajawal',
      // Global background
      scaffoldBackgroundColor: AppColors.brandBackground,

      // App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.brandBackground,
        foregroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        titleTextStyle: AppTextStyles.headlineMedium.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actionsIconTheme: const IconThemeData(color: Colors.white),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        elevation: 4,
        shadowColor: colorScheme.shadow.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        color: AppColors.brandBackgroundAlt,
        surfaceTintColor: Colors.transparent,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.brandMint,
          foregroundColor: Colors.white,
          elevation: 2,
          minimumSize: Size(332.w, 60.h),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontFamily: 'Almarai',
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.brandMint,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.translucentFieldFill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: AppColors.brandMint, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        hintStyle: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.hintOnDark,
        ),
        labelStyle: AppTextStyles.bodyMedium.copyWith(color: Colors.white),
        helperStyle: AppTextStyles.bodySmall.copyWith(color: Colors.white70),
        errorStyle: AppTextStyles.errorText.copyWith(color: colorScheme.error),
      ),

      // List Tile Theme
      listTileTheme: ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        tileColor: AppColors.brandBackgroundAlt,
        iconColor: Colors.white,
        textColor: Colors.white,
      ),

      // Drawer Theme
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.brandBackgroundAlt,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.r),
            bottomRight: Radius.circular(16.r),
          ),
        ),
        scrimColor: Colors.black.withOpacity(0.5),
      ),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.brandBackgroundAlt,
        selectedItemColor: AppColors.brandMint,
        unselectedItemColor: AppColors.hintOnDark,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppTextStyles.labelSmall.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: AppTextStyles.labelSmall,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: AppTextStyles.displayLarge.copyWith(color: Colors.white),
        displayMedium:
            AppTextStyles.displayMedium.copyWith(color: Colors.white),
        displaySmall: AppTextStyles.displaySmall.copyWith(color: Colors.white),
        headlineLarge:
            AppTextStyles.headlineLarge.copyWith(color: Colors.white),
        headlineMedium:
            AppTextStyles.headlineMedium.copyWith(color: Colors.white),
        headlineSmall:
            AppTextStyles.headlineSmall.copyWith(color: Colors.white),
        titleLarge: AppTextStyles.titleLarge.copyWith(color: Colors.white),
        titleMedium: AppTextStyles.titleMedium.copyWith(color: Colors.white),
        titleSmall: AppTextStyles.titleSmall.copyWith(color: Colors.white),
        bodyLarge: AppTextStyles.bodyLarge.copyWith(color: Colors.white),
        bodyMedium:
            AppTextStyles.bodyMedium.copyWith(color: AppColors.hintOnDark),
        bodySmall:
            AppTextStyles.bodySmall.copyWith(color: AppColors.hintOnDark),
        labelLarge: AppTextStyles.labelLarge.copyWith(color: Colors.white),
        labelMedium:
            AppTextStyles.labelMedium.copyWith(color: AppColors.hintOnDark),
        labelSmall:
            AppTextStyles.labelSmall.copyWith(color: AppColors.hintOnDark),
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: AppColors.outline,
        thickness: 1,
        space: 1,
      ),

      // Icon Theme
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 24.sp,
      ),

      // Primary Icon Theme
      primaryIconTheme: IconThemeData(
        color: AppColors.brandMint,
        size: 24.sp,
      ),
    );
  }

  static ThemeData get darkTheme {
    final colorScheme = AppColors.darkColorScheme;

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: 'Tajawal',
      // App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 2,
        centerTitle: true,
        titleTextStyle: AppTextStyles.headlineMedium.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: colorScheme.onSurface),
        actionsIconTheme: IconThemeData(color: colorScheme.onSurface),
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.brandMint,
          foregroundColor: Colors.white,
          elevation: 2,
          minimumSize: Size(332.w, 60.h),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
          textStyle: AppTextStyles.labelLarge.copyWith(
            fontFamily: 'Almarai',
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      // Card Theme
      cardTheme: CardThemeData(
        elevation: 4,
        shadowColor: colorScheme.shadow.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        color: colorScheme.surface,
        surfaceTintColor: colorScheme.surfaceTint,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
      ),

      // Text Theme (same as light theme but with dark colors)
      textTheme: TextTheme(
        displayLarge:
            AppTextStyles.displayLarge.copyWith(color: colorScheme.onSurface),
        displayMedium:
            AppTextStyles.displayMedium.copyWith(color: colorScheme.onSurface),
        displaySmall:
            AppTextStyles.displaySmall.copyWith(color: colorScheme.onSurface),
        headlineLarge:
            AppTextStyles.headlineLarge.copyWith(color: colorScheme.onSurface),
        headlineMedium:
            AppTextStyles.headlineMedium.copyWith(color: colorScheme.onSurface),
        headlineSmall:
            AppTextStyles.headlineSmall.copyWith(color: colorScheme.onSurface),
        titleLarge:
            AppTextStyles.titleLarge.copyWith(color: colorScheme.onSurface),
        titleMedium:
            AppTextStyles.titleMedium.copyWith(color: colorScheme.onSurface),
        titleSmall:
            AppTextStyles.titleSmall.copyWith(color: colorScheme.onSurface),
        bodyLarge: AppTextStyles.bodyLarge
            .copyWith(color: colorScheme.onSurfaceVariant),
        bodyMedium: AppTextStyles.bodyMedium
            .copyWith(color: colorScheme.onSurfaceVariant),
        bodySmall: AppTextStyles.bodySmall
            .copyWith(color: colorScheme.onSurfaceVariant),
        labelLarge:
            AppTextStyles.labelLarge.copyWith(color: colorScheme.onSurface),
        labelMedium: AppTextStyles.labelMedium
            .copyWith(color: colorScheme.onSurfaceVariant),
        labelSmall: AppTextStyles.labelSmall
            .copyWith(color: colorScheme.onSurfaceVariant),
      ),

      // Add other dark theme specific configurations
    );
  }
}
