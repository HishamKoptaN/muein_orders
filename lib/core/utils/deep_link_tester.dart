import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'global_variable.dart';

class DeepLinkTester {
  static void testDeepLink(String link) {
    debugPrint('🔗 اختبار الرابط العميق: $link');
    final context = GlobalVariable.navState.currentContext;
    if (context != null) {
      final route = _parseRouteFromLink(link);
      if (route != null) {
        debugPrint('✅ تحليل ناجح، المسار: $route');
        context.go(route);
      } else {
        debugPrint('❌ فشل تحليل المسار');
      }
    } else {
      debugPrint('❌ لا يمكن الحصول على سياق التنقل');
    }
  }

  /// تحليل المسار من الرابط العميق
  static String? _parseRouteFromLink(String link) {
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
      debugPrint('فشل تحليل المسار: $e');
      return null;
    }
  }

  /// إنشاء أمثلة روابط للاختبار
  static List<String> getTestLinks() {
    return [
      'mueinorders://home',
      'mueinorders://orders',
      'mueinorders://profile',
      'mueinorders://notifications',
      'https://mueinorders.com/home',
      'https://mueinorders.com/orders',
      'https://mueinorders.com/profile',
      'https://mueinorders.com/notifications',
    ];
  }

  /// عرض مربع حوار اختبار الروابط العميقة
  static void showTestDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('اختبار الروابط العميقة'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: getTestLinks().length,
              itemBuilder: (context, index) {
                final link = getTestLinks()[index];
                return ListTile(
                  title: Text(link),
                  subtitle: Text(
                    'المسار: ${_parseRouteFromLink(link) ?? "فشل التحليل"}',
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    testDeepLink(link);
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('إغلاق'),
            ),
          ],
        );
      },
    );
  }
}
