import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

/// Service for handling secure storage operations
abstract class SecureStorageService {
  /// Save a value to secure storage
  Future<void> save({required String key, required String value});

  /// Read a value from secure storage
  Future<String?> read(String key);

  /// Delete a value from secure storage
  Future<void> delete(String key);

  /// Clear all values from secure storage
  Future<void> clearAll();
}

@LazySingleton(as: SecureStorageService)
class SecureStorageServiceImpl implements SecureStorageService {
  final FlutterSecureStorage _secureStorage;

  @factoryMethod
  SecureStorageServiceImpl()
      : _secureStorage = const FlutterSecureStorage(
          aOptions: AndroidOptions(
            encryptedSharedPreferences: true,
          ),
        );

  @override
  Future<void> save({required String key, required String value}) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e) {
      throw StorageException('Failed to save data: $e');
    }
  }

  @override
  Future<String?> read(String key) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      throw StorageException('Failed to read data: $e');
    }
  }

  @override
  Future<void> delete(String key) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      throw StorageException('Failed to delete data: $e');
    }
  }

  @override
  Future<void> clearAll() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      throw StorageException('Failed to clear storage: $e');
    }
  }
}

class StorageException implements Exception {
  final String message;
  StorageException(this.message);

  @override
  String toString() => 'StorageException: $message';
}
