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
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: .dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: .dark,
        ),
      );
    } catch (e) {
      debugPrint('Error optimizing system UI: $e');
    }
  }

  static void _setupMemoryManagement() {
    try {
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

  static Future<void> _handleMemoryPressure() async {
    try {
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
      if (kDebugMode) {
        debugPrint('Memory pressure detected - clearing caches');
      }
    } catch (e) {
      debugPrint('Error handling memory pressure: $e');
    }
  }

  static void optimizeImageCache() {
    try {
      final imageCache = PaintingBinding.instance.imageCache
        ..maximumSize = 100
        ..maximumSizeBytes = 50 * 1024 * 1024;
      if (kDebugMode) {
        debugPrint(
          'Image cache optimized: ${imageCache.maximumSize} images, ${imageCache.maximumSizeBytes} bytes',
        );
      }
    } catch (e) {
      debugPrint('Error optimizing image cache: $e');
    }
  }

  static Future<void> clearCaches() async {
    try {
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
      if (kDebugMode) {
        debugPrint('All caches cleared');
      }
    } catch (e) {
      debugPrint('Error clearing caches: $e');
    }
  }

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
