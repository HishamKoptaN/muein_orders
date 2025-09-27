import 'dart:async';
import 'package:flutter/material.dart';

import 'background_tasks.dart';

Timer? _manualUploadTimer;
bool _isUploading = false;
bool _isInitialized = false;

void startManualRepeatingUpload() {
  // منع بدء عدة instances
  if (_isInitialized) {
    debugPrint('Manual upload already initialized, skipping...');
    return;
  }

  _isInitialized = true;
  debugPrint('=== MANUAL UPLOAD INITIALIZED ===');
  debugPrint('Sequential upload system started - every 1 minute');

  _manualUploadTimer?.cancel();
  _manualUploadTimer = Timer.periodic(
    const Duration(minutes: 1),
    (_) async {
      debugPrint('--- CHECKING FOR PENDING FILES ---');

      if (_isUploading) {
        debugPrint('❌ UPLOAD IN PROGRESS - Cannot start new upload');
        debugPrint('⏳ Next check in 1 minute...');
        return;
      }

      debugPrint('✅ NO ACTIVE UPLOAD - Starting upload process...');
      await _performSequentialUpload();
    },
  );
}

void stopManualRepeatingUpload() {
  debugPrint('🛑 STOPPING MANUAL UPLOAD SYSTEM');
  _manualUploadTimer?.cancel();
  _manualUploadTimer = null;
  _isUploading = false;
  _isInitialized = false;
}

Future<void> _performSequentialUpload() async {
  if (_isUploading) {
    debugPrint('⚠️ Upload attempt blocked - another upload in progress');
    return;
  }

  _isUploading = true;
  debugPrint('🚀 === STARTING SEQUENTIAL UPLOAD ===');

  try {
    await startImmediateUpload();
    debugPrint('✅ === SEQUENTIAL UPLOAD COMPLETED ===');
  } catch (e) {
    debugPrint('❌ === SEQUENTIAL UPLOAD FAILED ===');
    debugPrint('Error: $e');
  } finally {
    _isUploading = false;
    debugPrint('🔓 Upload lock released - _isUploading = $_isUploading');
    debugPrint('⏰ Next automatic check in 1 minute...');
  }
}

// دالة للتحقق من حالة النظام
void checkUploadStatus() {
  debugPrint('=== UPLOAD SYSTEM STATUS ===');
  debugPrint('Initialized: $_isInitialized');
  debugPrint('Currently Uploading: $_isUploading');
  debugPrint('Timer Active: ${_manualUploadTimer?.isActive ?? false}');
  debugPrint('==========================');
}
