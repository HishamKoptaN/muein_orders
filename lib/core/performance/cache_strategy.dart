import 'dart:async';
import 'package:injectable/injectable.dart';
import '../../features/cached_docs/data/datasources/local/drift/cached_docs_table.dart';

/// Cache strategy for optimizing repeated operations
@singleton
class CacheStrategy<K, V> {
  final Map<K, _CacheEntry<V>> _cache = {};
  final Duration _defaultTtl;
  Timer? _cleanupTimer;

  CacheStrategy({Duration defaultTtl = const Duration(minutes: 5)})
    : _defaultTtl = defaultTtl {
    _startCleanupTimer();
  }

  V? get(K key) {
    final entry = _cache[key];
    if (entry == null || entry.isExpired) {
      _cache.remove(key);
      return null;
    }
    return entry.value;
  }

  void put(K key, V value, {Duration? ttl}) {
    _cache[key] = _CacheEntry(
      value: value,
      expiresAt: DateTime.now().add(ttl ?? _defaultTtl),
    );
  }

  void invalidate(K key) {
    _cache.remove(key);
  }

  void clear() {
    _cache.clear();
  }

  void _startCleanupTimer() {
    _cleanupTimer = Timer.periodic(const Duration(minutes: 1), (_) {
      _cleanupExpired();
    });
  }

  void _cleanupExpired() {
    final now = DateTime.now();
    _cache.removeWhere((key, entry) => entry.expiresAt.isBefore(now));
  }

  void dispose() {
    _cleanupTimer?.cancel();
    _cache.clear();
  }
}

class _CacheEntry<V> {
  final V value;
  final DateTime expiresAt;

  _CacheEntry({required this.value, required this.expiresAt});

  bool get isExpired => DateTime.now().isAfter(expiresAt);
}

/// Specialized cache for filtered orders
@singleton
class OrdersFilterCache extends CacheStrategy<String, List<int>> {
  OrdersFilterCache() : super(defaultTtl: const Duration(minutes: 2));

  String _generateKey({
    required FileUploadStatus? status,
    required bool hasDocsOnly,
    required int subCategoryId,
  }) {
    return '${status?.name ?? "all"}_${hasDocsOnly ? "with_docs" : "all"}_$subCategoryId';
  }

  List<int>? getCachedOrderIds({
    required FileUploadStatus? status,
    required bool hasDocsOnly,
    required int subCategoryId,
  }) {
    return get(
      _generateKey(
        status: status,
        hasDocsOnly: hasDocsOnly,
        subCategoryId: subCategoryId,
      ),
    );
  }

  void cacheOrderIds({
    required FileUploadStatus? status,
    required bool hasDocsOnly,
    required int subCategoryId,
    required List<int> orderIds,
  }) {
    put(
      _generateKey(
        status: status,
        hasDocsOnly: hasDocsOnly,
        subCategoryId: subCategoryId,
      ),
      orderIds,
    );
  }

  void invalidateForSubCategory(int subCategoryId) {
    // Remove all cache entries for this subcategory
    final keysToRemove = <String>[];
    for (final key in _cache.keys) {
      if (key.endsWith('_$subCategoryId')) {
        keysToRemove.add(key);
      }
    }
    for (final key in keysToRemove) {
      invalidate(key);
    }
  }
}
