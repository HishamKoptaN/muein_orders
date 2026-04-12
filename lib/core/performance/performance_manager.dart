import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PerformanceManager {
  static bool _isInitialized = false;

  static Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      if (kDebugMode) {
          debugPrint('Performance monitoring enabled');
      }

      await _optimizeSystemUI();

      _setupMemoryManagement();

      _isInitialized = true;
      debugPrint('Performance manager initialized');
    } catch (e) {
      debugPrint('Error initializing performance manager: $e');
    }
  }

  static Future<void> _optimizeSystemUI() async {
    try {
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      // Configure system UI overlay style
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
    } catch (e) {
      debugPrint('Error optimizing system UI: $e');
    }
  }

  /// Setup memory management callbacks
  static void _setupMemoryManagement() {
    try {
      // Listen for memory pressure warnings
      SystemChannels.lifecycle.setMessageHandler((message) async {
        if (message == AppLifecycleState.paused.toString()) {
          await _handleMemoryPressure();
        }
        return null;
      });
    } catch (e) {
      debugPrint('Error setting up memory management: $e');
    }
  }

  /// Handle memory pressure by clearing caches
  static Future<void> _handleMemoryPressure() async {
    try {
      // Clear image cache if memory is low
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();

      // Force garbage collection
      if (kDebugMode) {
        debugPrint('Memory pressure detected - clearing caches');
      }
    } catch (e) {
      debugPrint('Error handling memory pressure: $e');
    }
  }

  /// Optimize image cache settings
  static void optimizeImageCache() {
    try {
      final imageCache = PaintingBinding.instance.imageCache;

      // Set reasonable cache limits
      imageCache.maximumSize = 100; // Maximum number of images
      imageCache.maximumSizeBytes = 50 * 1024 * 1024; // 50MB max cache size

      if (kDebugMode) {
        debugPrint(
            'Image cache optimized: ${imageCache.maximumSize} images, ${imageCache.maximumSizeBytes} bytes');
      }
    } catch (e) {
      debugPrint('Error optimizing image cache: $e');
    }
  }

  /// Clear all caches manually
  static Future<void> clearCaches() async {
    try {
      // Clear image cache
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
      // Clear other caches as needed
      // SharedPreferencesAsync cache, network cache, etc.
      if (kDebugMode) {
        debugPrint('All caches cleared');
      }
    } catch (e) {
      debugPrint('Error clearing caches: $e');
    }
  }

  /// Get current memory usage information
  static Map<String, dynamic> getMemoryInfo() {
    try {
      final imageCache = PaintingBinding.instance.imageCache;

      return {
        'imageCacheSize': imageCache.currentSize,
        'imageCacheSizeBytes': imageCache.currentSizeBytes,
        'imageCacheMaxSize': imageCache.maximumSize,
        'imageCacheMaxSizeBytes': imageCache.maximumSizeBytes,
      };
    } catch (e) {
      debugPrint('Error getting memory info: $e');
      return {};
    }
  }
}
