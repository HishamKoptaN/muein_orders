#!/usr/bin/env dart
import 'dart:io';
import 'dart:convert';
/// سكريبت لتتبع إصدارات تم رفعها إلى Google Play Store
/// 
/// الاستخدام:
///   dart bin/track_playstore_upload.dart status     - عرض حالة الإصدارات
///   dart bin/track_playstore_upload.dart mark         - تعليم الإصدار الحالي كمُرفوع
///   dart bin/track_playstore_upload.dart mark 2 1.0.0 - تعليم إصدار محدد كمُرفوع
///   dart bin/track_playstore_upload.dart unmark 2     - إلغاء تعليم الإصدار

final String trackingFile = 'playstore_uploads.json';
final String buildGradlePath = 'android/app/build.gradle.kts';

void main(List<String> args) async {
  final command = args.isEmpty ? 'status' : args[0];

  switch (command) {
    case 'status':
      await showStatus();
      break;
    case 'mark':
      final versionCode = args.length > 1 ? args[1] : null;
      final versionName = args.length > 2 ? args[2] : null;
      await markUploaded(versionCode: versionCode, versionName: versionName);
      break;
    case 'unmark':
      final versionCode = args.length > 1 ? args[1] : null;
      await unmarkUploaded(versionCode: versionCode);
      break;
    case 'current':
      await showCurrentVersion();
      break;
    default:
      print('''
❌ أمر غير معروف: $command

الاستخدام:
  dart bin/track_playstore_upload.dart status              عرض حالة الإصدارات
  dart bin/track_playstore_upload.dart mark                تعليم الإصدار الحالي كمُرفوع
  dart bin/track_playstore_upload.dart mark 2 1.0.0        تعليم إصدار محدد كمُرفوع
  dart bin/track_playstore_upload.dart unmark 2            إلغاء تعليم الإصدار
  dart bin/track_playstore_upload.dart current             عرض الإصدار الحالي فقط
      ''');
      exit(1);
  }
}

/// قراءة الإصدار الحالي من build.gradle.kts
Map<String, String> getCurrentVersion() {
  final file = File(buildGradlePath);
  if (!file.existsSync()) {
    print('❌ لم يتم العثور على ملف: $buildGradlePath');
    exit(1);
  }

  final content = file.readAsStringSync();
  
  // استخراج versionCode
  final versionCodeRegex = RegExp(r'versionCode\s*=\s*(\d+)');
  final versionCodeMatch = versionCodeRegex.firstMatch(content);
  
  // استخراج versionName
  final versionNameRegex = RegExp(r'versionName\s*=\s*"([^"]+)"');
  final versionNameMatch = versionNameRegex.firstMatch(content);

  if (versionCodeMatch == null || versionNameMatch == null) {
    print('❌ لم يتم العثور على versionCode أو versionName في الملف');
    exit(1);
  }

  return {
    'versionCode': versionCodeMatch.group(1)!,
    'versionName': versionNameMatch.group(1)!,
  };
}

/// عرض الإصدار الحالي
Future<void> showCurrentVersion() async {
  final version = getCurrentVersion();
  print('📱 الإصدار الحالي:');
  print('   versionCode: ${version['versionCode']}');
  print('   versionName: ${version['versionName']}');
}

/// عرض حالة الإصدارات
Future<void> showStatus() async {
  final currentVersion = getCurrentVersion();
  final trackingData = loadTrackingData();

  print('\n📱 الإصدار الحالي في المشروع:');
  print('   versionCode: ${currentVersion['versionCode']}');
  print('   versionName: ${currentVersion['versionName']}');

  final uploads = trackingData['uploads'] as List<dynamic>? ?? [];
  
  if (uploads.isEmpty) {
    print('\n⚠️  لا توجد إصدارات مُعلَّم كمُرفوع بعد');
    return;
  }

  print('\n📤 إصدارات تم رفعها إلى Google Play:');
  print('┌─────────────┬─────────────┬──────────────────────────────┐');
  print('│ versionCode │ versionName │ تاريخ الرفع                  │');
  print('├─────────────┼─────────────┼──────────────────────────────┤');
  
  for (final upload in uploads.reversed) {
    final vc = upload['versionCode']?.toString() ?? '?';
    final vn = upload['versionName']?.toString() ?? '?';
    final date = upload['uploadedAt']?.toString() ?? '?';
    final current = vc == currentVersion['versionCode'] ? ' ← الحالي' : '';
    
    print('│ ${vc.padRight(11)} │ ${vn.padRight(11)} │ ${date.padRight(28)}$current │');
  }
  
  print('└─────────────┴─────────────┴──────────────────────────────┘');

  // التحقق مما إذا كان الإصدار الحالي مرفوعاً
  final isCurrentUploaded = uploads.any(
    (u) => u['versionCode']?.toString() == currentVersion['versionCode'],
  );

  if (isCurrentUploaded) {
    print('\n✅ الإصدار الحالي (${currentVersion['versionCode']}) تم رفعه إلى Google Play');
  } else {
    print('\n⚠️  الإصدار الحالي (${currentVersion['versionCode']}) لم يُرفع إلى Google Play بعد!');
    print('   استخدم: dart bin/track_playstore_upload.dart mark');
  }
}

/// تعليم إصدار كمُرفوع
Future<void> markUploaded({String? versionCode, String? versionName}) async {
  final currentVersion = getCurrentVersion();
  
  final vc = versionCode ?? currentVersion['versionCode']!;
  final vn = versionName ?? currentVersion['versionName']!;

  final trackingData = loadTrackingData();
  final uploads = trackingData['uploads'] as List<dynamic>? ?? [];

  // التحقق من وجود الإصدار بالفعل
  final existingIndex = uploads.indexWhere(
    (u) => u['versionCode']?.toString() == vc,
  );

  final uploadInfo = {
    'versionCode': vc,
    'versionName': vn,
    'uploadedAt': DateTime.now().toIso8601String(),
  };

  if (existingIndex >= 0) {
    uploads[existingIndex] = uploadInfo;
    print('🔄 تم تحديث تاريخ الرفع للإصدار: $vc ($vn)');
  } else {
    uploads.add(uploadInfo);
    print('✅ تم تعليم الإصدار كمُرفوع: $vc ($vn)');
  }

  trackingData['uploads'] = uploads;
  saveTrackingData(trackingData);
}

/// إلغاء تعليم إصدار
Future<void> unmarkUploaded({String? versionCode}) async {
  if (versionCode == null) {
    final currentVersion = getCurrentVersion();
    print('استخدام الإصدار الحالي: ${currentVersion['versionCode']}');
    await unmarkUploaded(versionCode: currentVersion['versionCode']);
    return;
  }

  final trackingData = loadTrackingData();
  final uploads = trackingData['uploads'] as List<dynamic>? ?? [];

  final initialLength = uploads.length;
  uploads.removeWhere((u) => u['versionCode']?.toString() == versionCode);

  if (uploads.length < initialLength) {
    trackingData['uploads'] = uploads;
    saveTrackingData(trackingData);
    print('✅ تم إلغاء تعليم الإصدار: $versionCode');
  } else {
    print('⚠️  الإصدار $versionCode غير موجود في قائمة الإصدارات المرفوعة');
  }
}

/// تحميل بيانات التتبع
Map<String, dynamic> loadTrackingData() {
  final file = File(trackingFile);
  if (!file.existsSync()) {
    return {'uploads': []};
  }

  try {
    final content = file.readAsStringSync();
    return jsonDecode(content) as Map<String, dynamic>;
  } catch (e) {
    print('⚠️  خطأ في قراءة ملف التتبع: $e');
    return {'uploads': []};
  }
}

/// حفظ بيانات التتبع
void saveTrackingData(Map<String, dynamic> data) {
  final file = File(trackingFile);
  final content = JsonEncoder.withIndent('  ').convert(data);
  file.writeAsStringSync(content);
}
