import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LanguageService {
  static const String _languageCodeKey = 'language_code';
  static const String defaultLanguage = 'ar'; // Default to Arabic

  // Save the selected language code
  static Future<void> saveLanguage(String languageCode) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_languageCodeKey, languageCode);
      
      // Update the app's locale
      // This assumes you have a way to update the app's locale in your app state
      // You might need to adjust this based on your app's state management
      // For example, if you're using Provider:
      // context.read<AppConfig>().setLocale(Locale(languageCode));
    } catch (e) {
      debugPrint('Error saving language: $e');
      rethrow;
    }
  }

  // Get the saved language code, returns default if not set
  static Future<String> getLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_languageCodeKey) ?? defaultLanguage;
    } catch (e) {
      debugPrint('Error getting language: $e');
      return defaultLanguage;
    }
  }

  // Check if a language is already set
  static Future<bool> hasLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.containsKey(_languageCodeKey);
    } catch (e) {
      debugPrint('Error checking language: $e');
      return false;
    }
  }

  // Get the current locale based on saved language
  static Future<Locale> getCurrentLocale() async {
    final languageCode = await getLanguage();
    return Locale(languageCode);
  }
}
