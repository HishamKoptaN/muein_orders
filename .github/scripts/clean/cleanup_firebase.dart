import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'firebase_api_client.dart';
import 'firebase_cleanup_service.dart';

void main() async {
  final token = Platform.environment['GOOGLE_ACCESS_TOKEN'];
  final projectNumber = Platform.environment['FIREBASE_PROJECT_NUMBER'];
  final appId = Platform.environment['FIREBASE_APP_ID'];

  if (token == null || projectNumber == null || appId == null) exit(1);
  final dio = Dio();
  dio.options.headers["Authorization"] = "Bearer $token";
  final service = FirebaseCleanupService(
    apiClient: FirebaseApiClient(dio),
    projectNumber: projectNumber,
    appId: appId,
  );

  await service.executeCleanup();
}
