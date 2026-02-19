import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
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
                  subtitle: Text(
                    'استرجاع البيانات المحفوظة في ${DocsDebuge().loadSavedData()}',
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
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _handleTap(context),
      child: widget.child,
    );
  }
}

class DocsDebuge {
  Future<Map<String, dynamic>> loadSavedData() async {
    final prefs = await SharedPreferences.getInstance();
    final savedDataString = prefs.getString('debug_auto_fill_data');
    return jsonDecode(savedDataString ?? '');
  }

  Future<void> saveCurrentData({
    required BuildContext context,
    required Loaded loadedState,
  }) async {
    try {
      final currentData = {'timestamp': DateTime.now().toIso8601String()}
        ..addAll({
          'imageOne':
              loadedState.createCachedDoc.imageOne?.file?.value?.path ?? '',
          'imageTwo':
              loadedState.createCachedDoc.imageTwo?.file?.value?.path ?? '',
          'videoOne':
              loadedState.createCachedDoc.videoOne?.file?.value?.path ?? '',
          'videoTwo':
              loadedState.createCachedDoc.videoTwo?.file?.value?.path ?? '',
          'latitude':
              loadedState.createCachedDoc.location?.latitude?.toString() ?? '',
          'longitude':
              loadedState.createCachedDoc.location?.longitude?.toString() ?? '',
        });
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('debug_auto_fill_data', jsonEncode(currentData));
      context.showSuccessSnackBar(
        title: 'تم الحفظ',
        message: '✅ تم حفظ البيانات الحالية بنجاح',
      );
    } catch (e) {
      context.showErrorSnackBar(
        title: 'خطأ',
        message: 'فشل في حفظ البيانات: $e',
      );
    }
  }

  Future<void> restoreSavedData({
    required BuildContext context,
    required Loaded loadedState,
  }) async {
    try {
      final savedData = await loadSavedData();
      getIt<CachedDocBloc>().add(
        CachedDocEvent.updateData(
          createCachedDoc: loadedState.createCachedDoc.copyWith(
            imageOne: loadedState.createCachedDoc.imageOne?.copyWith(
              file: FileFormzInput.dirty(File(savedData['imageOne'])),
            ),
            imageTwo: loadedState.createCachedDoc.imageTwo?.copyWith(
              file: FileFormzInput.dirty(File(savedData['imageTwo'])),
            ),
            videoOne: loadedState.createCachedDoc.videoOne?.copyWith(
              file: FileFormzInput.dirty(File(savedData['videoOne'])),
            ),
            videoTwo: loadedState.createCachedDoc.videoTwo?.copyWith(
              file: FileFormzInput.dirty(File(savedData['videoTwo'])),
            ),
            location: LocationEntity(
              latitude: double.tryParse(savedData['latitude']) ?? 0.0,
              longitude: double.tryParse(savedData['longitude']) ?? 0.0,
            ),
          ),
          loaded: loadedState,
        ),
      );
      context.showSuccessSnackBar(
        title: 'تم الاسترجاع',
        message: '✅ تم استرجاع البيانات المحفوظة',
      );
    } catch (e) {
      context.showErrorSnackBar(
        title: 'خطأ',
        message: 'فشل في استرجاع البيانات: $e',
      );
    }
  }
}
