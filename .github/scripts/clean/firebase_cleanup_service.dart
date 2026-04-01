import 'package:dio/dio.dart';
import 'dart:io';

class FirebaseCleanupService {
  final FirebaseApiClient apiClient;
  final String projectNumber;
  final String appId;

  FirebaseCleanupService({
    required this.apiClient,
    required this.projectNumber,
    required this.appId,
  });
  Future<List<FirebaseRelease>> getSortedReleases() async {
    final response = await apiClient.getReleases(projectNumber, appId);
    final releases = List<FirebaseRelease>.from(response.releases);
    releases.sort((a, b) => b.createTime.compareTo(a.createTime));
    return releases;
  }

  List<String> identifyOldReleases(List<FirebaseRelease> releases) {
    if (releases.length <= 1) return [];
    return releases.skip(1).map((r) => r.name).toList();
  }

  Future<void> executeCleanup() async {
    try {
      final allReleases = await getSortedReleases();
      final namesToDelete = identifyOldReleases(allReleases);

      if (namesToDelete.isEmpty) {
        print("ℹ️ لا توجد إصدارات قديمة للحذف.");
        return;
      }
      await apiClient.batchDeleteReleases(projectNumber, appId, {
        "names": namesToDelete,
      });
      print("✅ تم حذف ${namesToDelete.length} إصدار قديم.");
    } catch (e) {
      print("❌ فشل تنظيف الإصدارات: $e");
    }
  }
}
