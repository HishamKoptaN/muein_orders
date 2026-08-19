import 'dart:async';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:workmanager/workmanager.dart';
import 'background_tasks.dart';

const String uploadTaskName = 'upload_docs_task';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    if (taskName == uploadTaskName) {
      await startUploadDocs();
    }
    return Future.value(true);
  });
}

@singleton
class WorkManagerInitializer {
  Future<void> initialize() async {
    await Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
  }

  void startPendingUploads() {
    startUploadDocs().catchError(
      (error) {
        debugPrint('خطأ في بدء رفع التوثيقات المعلقة: $error');
      },
    );
  }

  Future<void> registerSystemUploadTask() async {
    await Workmanager().registerPeriodicTask(
      'unique_upload_docs_task',
      uploadTaskName,
      frequency: const Duration(minutes: 15),
      initialDelay: const Duration(minutes: 15),
      constraints: Constraints(networkType: NetworkType.connected),
      // existingWorkPolicy: ExistingPeriodicWorkPolicy.replace,
    );
  }
}
