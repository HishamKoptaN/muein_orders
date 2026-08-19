import 'package:latlong2/latlong.dart';

/// Utility class for parsing coordinate strings into LatLng objects.
/// 
/// Supports formats:
/// - "24.7136, 46.6753" (comma separated)
/// - "24.7136 46.6753" (space separated)
/// - "-33.8688, 151.2093" (negative coordinates)
class CoordinateParser {
  const CoordinateParser._();

  /// Parses a coordinate string into a LatLng object.
  /// 
  /// Returns null if:
  /// - The text format is invalid
  /// - Coordinates are out of valid range (lat: -90 to 90, lng: -180 to 180)
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

  /// Checks if the given string contains valid coordinates.
  static bool isValid(String text) {
    return parse(text) != null;
  }

  static bool _isValidLatitude(double lat) => lat >= -90 && lat <= 90;
  static bool _isValidLongitude(double lng) => lng >= -180 && lng <= 180;
}
