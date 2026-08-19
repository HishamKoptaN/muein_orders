import 'package:flutter/services.dart';

/// Abstract interface for clipboard operations.
/// 
/// Implementations should handle platform-specific clipboard access.
abstract class ClipboardService {
  /// Retrieves text content from the system clipboard.
  /// 
  /// Returns null if:
  /// - Clipboard is empty
  /// - Clipboard contains non-text data
  /// - Platform doesn't support clipboard access
  Future<String?> getText();

  /// Sets text content to the system clipboard.
  Future<void> setText(String text);
}

/// Default implementation using Flutter's Clipboard API.
class ClipboardServiceImpl implements ClipboardService {
  @override
  Future<String?> getText() async {
    final data = await Clipboard.getData('text/plain');
    return data?.text;
  }

  @override
  Future<void> setText(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}
