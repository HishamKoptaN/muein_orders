import 'package:latlong2/latlong.dart';

class CoordinateParser {
  const CoordinateParser._();
  static LatLng? parse(String text) {
    final cleaned = text.trim().replaceAll(RegExp(r'[\s]+'), ' ');
    final regex = RegExp(r'^(-?\d+\.?\d*)[,\s]+(-?\d+\.?\d*)$');
    final match = regex.firstMatch(cleaned);

    if (match != null) {
      final lat = double.tryParse(match.group(1)!);
      final lng = double.tryParse(match.group(2)!);

      if (lat != null && lng != null) {
        if (_isValidLatitude(lat) && _isValidLongitude(lng)) {
          return LatLng(lat, lng);
        }
      }
    }
    return null;
  }

  static bool isValid(String text) {
    return parse(text) != null;
  }

  static bool _isValidLatitude(double lat) {
    return lat >= -90 && lat <= 90;
  }

  static bool _isValidLongitude(double lng) {
    return lng >= -180 && lng <= 180;
  }
}
