import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../app/global_variable.dart';

class DeepLinkService {
  static final DeepLinkService _instance = DeepLinkService._internal();
  static DeepLinkService get instance => _instance;
  DeepLinkService._internal();

  final AppLinks _appLinks = AppLinks();
  StreamSubscription? _linkSubscription;
  final List<Function(String)> _linkListeners = [];

  /// تهيئة خدمة الروابط العميقة
  Future<void> initialize() async {
    try {
      // مراقبة الروابط العميقة عند بدء التطبيق
      final initialLink = await _appLinks.getInitialLink();
      if (initialLink != null) {
        _handleDeepLink(initialLink.toString());
      }

      // مراقبة الروابط العميقة أثناء تشغيل التطبيق
      _linkSubscription = _appLinks.stringLinkStream.listen(
        _handleDeepLink,
        onError: (err) {
          if (kDebugMode) {
            print('خطأ في مراقبة الروابط العميقة: $err');
          }
        },
      );
    } catch (e) {
      if (kDebugMode) {
        print('فشل تهيئة الروابط العميقة: $e');
      }
    }
  }

  /// معالجة الرابط العميق
  void _handleDeepLink(String link) {
    if (kDebugMode) {
      print('تم استلام رابط عميق: $link');
    }

    // إعلام جميع المستمعين
    for (final listener in _linkListeners) {
      listener(link);
    }

    // تحليل المسار والانتقال
    final route = _parseRouteFromLink(link);
    if (route != null) {
      _navigateToRoute(route);
    }
  }

  /// تحليل المسار من الرابط العميق
  String? _parseRouteFromLink(String link) {
    try {
      final uri = Uri.parse(link);

      // معالجة scheme مخصص: mueinorders://
      if (uri.scheme == 'mueinorders') {
        return '/${uri.path}';
      }

      // معالجة رابط HTTPS: https://mueinorders.com/
      if (uri.scheme == 'https' &&
          (uri.host == 'mueinorders.com' ||
              uri.host == 'www.mueinorders.com')) {
        return '/${uri.path}';
      }

      return null;
    } catch (e) {
      if (kDebugMode) {
        print('فشل تحليل المسار: $e');
      }
      return null;
    }
  }

  /// الانتقال إلى المسار المحدد
  void _navigateToRoute(String route) {
    final context = GlobalVariable.navState.currentContext;
    if (context != null) {
      context.go(route);
    } else {
      if (kDebugMode) {
        print('لا يمكن الحصول على سياق التنقل، فشل الانتقال: $route');
      }
    }
  }

  /// إضافة مستمع للروابط العميقة
  void addLinkListener(Function(String) listener) {
    _linkListeners.add(listener);
  }

  /// إزالة مستمع للروابط العميقة
  void removeLinkListener(Function(String) listener) {
    _linkListeners.remove(listener);
  }

  /// إتلاف الخدمة
  void dispose() {
    _linkSubscription?.cancel();
    _linkListeners.clear();
  }
}
