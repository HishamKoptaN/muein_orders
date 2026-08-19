import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  //! private constructor as I don't want to allow creating an instance of this class itself.
  SharedPrefHelper._();

  //! Removes a value from SharedPreferencesAsync with given [key].
  static Future<void> removeData({required String key}) async {
    debugPrint('SharedPrefHelper : data with key : $key has been removed');
    final SharedPreferencesAsync sharedPreferences =
        await SharedPreferencesAsync();
    await sharedPreferences.remove(key);
  }

  //! Removes all keys and values in the SharedPreferencesAsync
  static Future<void> clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    final SharedPreferencesAsync sharedPreferences =
        await SharedPreferencesAsync();
    await sharedPreferences.clear();
  }

  //! Saves a [value] with a [key] in the SharedPreferencesAsync.
  static Future<void> setData({
    required String key,
    required dynamic value,
  }) async {
    final SharedPreferencesAsync prefs = await SharedPreferencesAsync();
    debugPrint(
      'SharedPrefHelper : setData with key : $key and value : $value',
    );
    switch (value.runtimeType) {
      case String:
        await prefs.setString(key, value);
        break;
      case int:
        await prefs.setInt(key, value);
        break;
      case bool:
        await prefs.setBool(key, value);
        break;
      case double:
        await prefs.setDouble(key, value);
        break;
      default:
        return;
    }
  }

//! استرجاع قائمة من الأرقام المحفوظة محليًا بناءً على مفتاح معين
  static Future<List<int>> getIntList({
    required String key,
  }) async {
    debugPrint('SharedPrefHelper : get Int List with key : $key ');
    final SharedPreferencesAsync prefs = await SharedPreferencesAsync();
    final favorites = prefs.getStringList(key);

    final result = <int>[];
    // for (final item in favorites) {
    //   final parsed = int.tryParse(item);
    //   if (parsed != null) {
    //     result.add(parsed);
    //   } else {
    //     debugPrint('Invalid number format in shared preferences: $item');
    //   }
    // }
    return result;
  }

  //! تحديث القائمة
  static Future<void> updateList({
    required String key,
    required int value,
    required bool add,
  }) async {
    debugPrint(
      'SharedPrefHelper : updateList with key : $key and value : $value',
    );
    final prefs = await SharedPreferencesAsync();
    final list = await getIntList(key: key);
    if (add && !list.contains(value)) {
      debugPrint('SharedPrefHelper : add ');
      list.add(
        value,
      );
    } else if (!add && list.contains(value)) {
      debugPrint('SharedPrefHelper : remove ');
      list.remove(
        value,
      );
    }
    await prefs.setStringList(
      key,
      list.map((e) => e.toString()).toList(),
    );
  }

  //! Gets a bool value from SharedPreferencesAsync with given [key].
  static Future<bool> getBool({
    required String key,
  }) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    final SharedPreferencesAsync sharedPreferences =
        await SharedPreferencesAsync();
    return await sharedPreferences.getBool(key) ?? false;
  }

  //!Gets a double value from SharedPreferencesAsync with given [key].
  static Future<double> getDouble({
    required String key,
  }) async {
    debugPrint('SharedPrefHelper : getDouble with key : $key');
    final SharedPreferencesAsync sharedPreferences =
        await SharedPreferencesAsync();
    return await sharedPreferences.getDouble(key) ?? 0.0;
  }

  //!Gets an int value from SharedPreferencesAsync with given [key].
  static Future<int?> getInt({
    required String key,
  }) async {
    debugPrint(
      'SharedPrefHelper : getInt with key : $key',
    );
    final SharedPreferencesAsync sharedPreferences =
        await SharedPreferencesAsync();
    return sharedPreferences.getInt(key);
  }

  //! Gets an String value from SharedPreferencesAsync with given [key].
  static Future<String?> getString({
    required String key,
  }) async {
    debugPrint(
      'SharedPrefHelper : getString with key : $key',
    );
    final SharedPreferencesAsync sharedPreferences =
        await SharedPreferencesAsync();
    final String? value = await sharedPreferences.getString(key);
    return value;
  }

  //! Saves a [value] with a [key] in the FlutterSecureStorage.
  static Future<void> setSecuredString({
    required String key,
    required String value,
  }) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint(
      'FlutterSecureStorage : setSecuredString with key : $key and value : $value',
    );
    await flutterSecureStorage.write(
      key: key,
      value: value,
    );
  }

  //! Gets an String value from FlutterSecureStorage with given [key].
  static Future<dynamic> getSecuredString({
    required String key,
  }) async {
    try {
      const flutterSecureStorage = FlutterSecureStorage();
      debugPrint(
        'FlutterSecureStorage : getSecuredString with key :',
      );
      return await flutterSecureStorage.read(
            key: key,
          ) ??
          '';
    } catch (e) {
      print('❌ Error storing token: $e');
    }
  }

  //! Removes all keys and values in the FlutterSecureStorage
  static Future<void> clearAllSecuredData() async {
    debugPrint(
      'FlutterSecureStorage : all data has been cleared',
    );
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.deleteAll();
  }
}
