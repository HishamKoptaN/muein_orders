import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/services/clipboard_service.dart';
import '../../../../../core/utils/coordinate_parser.dart';

/// Use case for pasting location coordinates from clipboard.
///
/// This use case:
/// 1. Reads text from clipboard
/// 2. Parses it as coordinates
/// 3. Returns LatLng if valid
@lazySingleton
class PasteLocationFromClipboardUseCase {
  final ClipboardService _clipboardService;

  PasteLocationFromClipboardUseCase(this._clipboardService);

  /// Attempts to parse location from clipboard.
  ///
  /// Returns ApiResult.success with LatLng if valid coordinates found.
  /// Returns ApiResult.success(null) if clipboard is empty or contains invalid coordinates.
  /// Returns ApiResult.failure on platform errors.
  Future<ApiResult<LatLng?>> call() async {
    try {
      final text = await _clipboardService.getText();
      if (text == null || text.isEmpty) {
        return const ApiResult.success(data: null);
      }

      final parsed = CoordinateParser.parse(text);
      if (parsed == null) {
        return const ApiResult.success(data: null);
      }

      return ApiResult.success(data: parsed);
    } catch (e) {
      return ApiResult.failure(
        errorInfo: ErrorInfo(message: 'Failed to read clipboard: $e'),
      );
    }
  }

  /// Checks if clipboard contains valid coordinates without consuming it.
  Future<bool> hasValidCoordinates() async {
    try {
      final text = await _clipboardService.getText();
      if (text == null || text.isEmpty) return false;
      return CoordinateParser.isValid(text);
    } catch (_) {
      return false;
    }
  }
}
