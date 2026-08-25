import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../../../core/widgets/translated_text.dart';

class LocationService {
  static Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  static Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  static Future<LocationPermission> requestPermission() async {
    return await Geolocator.requestPermission();
  }

  static Future<Position?> getCurrentPosition() async {
    try {
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      return null;
    }
  }

  static void showLocationServiceDisabledDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const TrText('خدمة الموقع معطلة'),
          content: const TrText(
            'يرجى تفعيل خدمة الموقع في إعدادات الجهاز لتحديد موقعك الحالي',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const TrText('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Geolocator.openLocationSettings();
              },
              child: const TrText('فتح الإعدادات'),
            ),
          ],
        );
      },
    );
  }

  static void showPermissionDeniedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const TrText('إذن الموقع مرفوض'),
          content: const TrText(
            'تم رفض إذن الوصول إلى الموقع بشكل دائم. يرجى تفعيل الإذن من إعدادات التطبيق',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const TrText('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Geolocator.openAppSettings();
              },
              child: const TrText('فتح الإعدادات'),
            ),
          ],
        );
      },
    );
  }

  static Future<LatLng?> determinePosition(BuildContext context) async {
    bool serviceEnabled = await isLocationServiceEnabled();
    if (!serviceEnabled) {
      showLocationServiceDisabledDialog(context);
      return null;
    }

    LocationPermission permission = await checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await requestPermission();
      if (permission == LocationPermission.denied) return null;
    }

    if (permission == LocationPermission.deniedForever) {
      showPermissionDeniedDialog(context);
      return null;
    }

    final Position? position = await getCurrentPosition();
    if (position == null) return null;

    return LatLng(position.latitude, position.longitude);
  }
}
