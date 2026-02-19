import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../domain/entities/create_cached_doc_entity.dart';
import '../../bloc/cached_doc_bloc.dart';

class DebugAutoFillDoc extends StatefulWidget {
  final Widget child;
  final Loaded loadedState;
  const DebugAutoFillDoc({
    super.key,
    required this.child,
    required this.loadedState,
  });

  @override
  State<DebugAutoFillDoc> createState() => _DebugAutoFillDocState();
}

class _DebugAutoFillDocState extends State<DebugAutoFillDoc> {
  int _tapCount = 0;
  Timer? _tapTimer;

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('خيارات البيانات المحفوظة'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.save, color: Colors.green),
                title: const Text('حفظ البيانات الحالية'),
                subtitle: const Text(
                  'حفظ البيانات والملفات الحالية لاستخدامها لاحقاً',
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  DocsDebuge().saveCurrentData(
                    context: context,
                    loadedState: widget.loadedState,
                  );
                },
              ),
              ...[
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.restore, color: Colors.orange),
                  title: const Text('استرجاع البيانات المحفوظة'),
                  subtitle: FutureBuilder<String>(
                    future: DocsDebuge().getSavedTimestamp(),
                    builder: (context, snapshot) =>
                        Text('آخر حفظ: ${snapshot.data ?? "..."}'),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    DocsDebuge().restoreSavedData(
                      context: context,
                      loadedState: widget.loadedState,
                    );
                  },
                ),
              ],
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('إلغاء'),
            ),
          ],
        );
      },
    );
  }

  void _handleTap(BuildContext context) {
    if (_tapTimer?.isActive ?? false) {
      _tapTimer?.cancel();
    }

    _tapTimer = Timer(const Duration(milliseconds: 500), () {
      if (_tapCount >= 3) {
        _showOptionsDialog(context);
      }
      _tapCount = 0;
    });

    _tapCount++;
  }

  @override
  void dispose() {
    _tapTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kReleaseMode) return widget.child;
    return Stack(
      children: [
        widget.child,
        Positioned(
          top: 10,
          right: 10,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => _handleTap(context),
            child: Container(width: 20, height: 20, color: Colors.transparent),
          ),
        ),
      ],
    );
  }
}

class DocsDebuge {
  static const String _storageKey = 'debug_auto_fill_data';

  Future<String> getSavedTimestamp() async {
    final prefs = await SharedPreferences.getInstance();
    final savedDataString = prefs.getString(_storageKey);
    if (savedDataString == null) return 'لا يوجد';
    final Map<String, dynamic> data = jsonDecode(savedDataString);
    return data['timestamp_human'] ?? 'غير معروف';
  }

  Future<void> saveCurrentData({
    required BuildContext context,
    required Loaded loadedState,
  }) async {
    try {
      final Map<String, dynamic> debugData = {
        'timestamp_human': DateTime.now().toString().split('.').first,
        'entity': loadedState.createCachedDoc.toDebugMap(),
      };

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_storageKey, jsonEncode(debugData));

      context.showSuccessSnackBar(
        title: 'تم الحفظ',
        message: '✅ تم حفظ الحالة الكاملة للنموذج',
      );
    } catch (e) {
      context.showErrorSnackBar(title: 'خطأ', message: 'فشل الحفظ: $e');
    }
  }

  Future<void> restoreSavedData({
    required BuildContext context,
    required Loaded loadedState,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedDataString = prefs.getString(_storageKey);

      if (savedDataString == null) throw 'لا توجد بيانات محفوظة';

      final Map<String, dynamic> savedMap = jsonDecode(savedDataString);
      final restoredEntity = CreateCachedDocEntity.fromDebugMap(
        savedMap['entity'],
      );

      getIt<CachedDocBloc>().add(
        CachedDocEvent.updateData(
          loaded: loadedState,
          createCachedDoc: restoredEntity,
        ),
      );

      context.showSuccessSnackBar(
        title: 'تم الاسترجاع',
        message: '✅ تم استعادة البيانات والملفات بنجاح',
      );
    } catch (e) {
      context.showErrorSnackBar(title: 'خطأ', message: 'فشل الاسترجاع: $e');
    }
  }
}
