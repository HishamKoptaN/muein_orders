import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../blocs/cached_doc/cached_doc_bloc.dart';

class DebugAutoFillDoc extends StatefulWidget {
  final Widget child;
  const DebugAutoFillDoc({super.key, required this.child});

  @override
  State<DebugAutoFillDoc> createState() => _DebugAutoFillDocState();
}

class _DebugAutoFillDocState extends State<DebugAutoFillDoc> {
  int _tapCount = 0;
  Timer? _tapTimer;

  // متغيرات لحفظ واسترجاع البيانات
  Map<String, dynamic>? _savedData;

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  // دالة تحميل البيانات المحفوظة
  Future<void> _loadSavedData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedDataString = prefs.getString('debug_auto_fill_data');

      if (savedDataString != null) {
        _savedData = jsonDecode(savedDataString);
        debugPrint('✅ تم تحميل البيانات المحفوظة');
      } else {
        debugPrint('ℹ️ لا توجد بيانات محفوظة');
      }
    } catch (e) {
      debugPrint('❌ خطأ في تحميل البيانات المحفوظة: $e');
    }
  }

  Future<void> _saveCurrentData(BuildContext context) async {
    try {
      final bloc = context.read<CachedDocBloc>();
      final state = bloc.state;
      final currentData = {
        'timestamp': DateTime.now().toIso8601String(),
      };
      state.mapOrNull(
        loaded: (loadedState) {
          currentData.addAll(
            {
              'latitude': loadedState.latitude?.value?.toString() ?? '',
              'longitude': loadedState.longitude?.value?.toString() ?? '',
              'imageOnePath': loadedState.imageOne?.value?.path ?? '',
              'imageTwoPath': loadedState.imageTwo?.value?.path ?? '',
              'videoOnePath': loadedState.videoOne?.value?.path ?? '',
              'videoTwoPath': loadedState.videoTwo?.value?.path ?? '',
              'shippingCost': loadedState.shippingCost?.value?.toString() ?? '',
            },
          );
        },
      );
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('debug_auto_fill_data', jsonEncode(currentData));

      setState(() {
        _savedData = currentData;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('✅ تم حفظ البيانات الحالية بنجاح'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      debugPrint('💾 تم حفظ البيانات الحالية');
    } catch (e) {
      debugPrint('❌ خطأ في حفظ البيانات: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('❌ فشل في حفظ البيانات: $e'),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  // دالة استرجاع البيانات المحفوظة
  Future<void> _restoreSavedData(BuildContext context) async {
    if (_savedData == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('❌ لا توجد بيانات محفوظة للاسترجاع'),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    try {
      final bloc = context.read<CachedDocBloc>();

      // استرجاع البيانات المحفوظة
      if (_savedData!['orderId'] != null) {
        bloc.add(CachedDocEvent.updateData(
          orderId: GenericFormzInput.dirty(_savedData!['orderId']),
        ));
      }

      if (_savedData!['latitude'] != null && _savedData!['longitude'] != null) {
        bloc.add(CachedDocEvent.updateData(
          latitude:
              GenericFormzInput.dirty(double.parse(_savedData!['latitude'])),
          longitude:
              GenericFormzInput.dirty(double.parse(_savedData!['longitude'])),
        ));
      }

      if (_savedData!['shippingCost'] != null &&
          _savedData!['shippingCost'].toString().isNotEmpty) {
        bloc.add(CachedDocEvent.updateData(
          shippingCost: GenericFormzInput.dirty(
              double.parse(_savedData!['shippingCost'])),
        ));
      }
      await _restoreSavedFiles(bloc);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('✅ تم استرجاع البيانات المحفوظة'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      debugPrint('🔄 تم استرجاع البيانات المحفوظة');
    } catch (e) {
      debugPrint('❌ خطأ في استرجاع البيانات: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('❌ فشل في استرجاع البيانات: $e'),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  // دالة استرجاع الملفات المحفوظة
  Future<void> _restoreSavedFiles(CachedDocBloc bloc) async {
    if (_savedData == null) return;

    debugPrint('📁 استرجاع الملفات المحفوظة...');

    try {
      // استرجاع الصور والفيديوهات من المسارات المحفوظة
      if (_savedData!['imageOnePath'] != null &&
          _savedData!['imageOnePath'].toString().isNotEmpty) {
        final imageFile = File(_savedData!['imageOnePath']);
        if (await imageFile.exists()) {
          bloc.add(CachedDocEvent.updateData(
              imageOne: FileFormzInput.dirty(imageFile)));
          debugPrint('✅ تم استرجاع الصورة الأولى: ${imageFile.path}');
        } else {
          debugPrint('⚠️ ملف الصورة الأولى غير موجود: ${imageFile.path}');
        }
      }

      if (_savedData!['imageTwoPath'] != null &&
          _savedData!['imageTwoPath'].toString().isNotEmpty) {
        final imageFile = File(_savedData!['imageTwoPath']);
        if (await imageFile.exists()) {
          bloc.add(CachedDocEvent.updateData(
              imageTwo: FileFormzInput.dirty(imageFile)));
          debugPrint('✅ تم استرجاع الصورة الثانية: ${imageFile.path}');
        } else {
          debugPrint('⚠️ ملف الصورة الثانية غير موجود: ${imageFile.path}');
        }
      }

      if (_savedData!['videoOnePath'] != null &&
          _savedData!['videoOnePath'].toString().isNotEmpty) {
        final videoFile = File(_savedData!['videoOnePath']);
        if (await videoFile.exists()) {
          bloc.add(CachedDocEvent.updateData(
              videoOne: FileFormzInput.dirty(videoFile)));
          debugPrint('✅ تم استرجاع الفيديو الأول: ${videoFile.path}');
        } else {
          debugPrint('⚠️ ملف الفيديو الأول غير موجود: ${videoFile.path}');
        }
      }

      if (_savedData!['videoTwoPath'] != null &&
          _savedData!['videoTwoPath'].toString().isNotEmpty) {
        final videoFile = File(_savedData!['videoTwoPath']);
        if (await videoFile.exists()) {
          bloc.add(CachedDocEvent.updateData(
              videoTwo: FileFormzInput.dirty(videoFile)));
          debugPrint('✅ تم استرجاع الفيديو الثاني: ${videoFile.path}');
        } else {
          debugPrint('⚠️ ملف الفيديو الثاني غير موجود: ${videoFile.path}');
        }
      }

      debugPrint('✅ تم الانتهاء من استرجاع الملفات المحفوظة');
    } catch (e) {
      debugPrint('❌ خطأ في استرجاع الملفات المحفوظة: $e');
    }
  }

  // دالة عرض القائمة المنسدلة للخيارات
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
                    'حفظ البيانات والملفات الحالية لاستخدامها لاحقاً'),
                onTap: () {
                  Navigator.of(context).pop();
                  _saveCurrentData(context);
                },
              ),
              if (_savedData != null) ...[
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.restore, color: Colors.orange),
                  title: const Text('استرجاع البيانات المحفوظة'),
                  subtitle: Text(
                      'استرجاع البيانات المحفوظة في ${_savedData!['timestamp']}'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _restoreSavedData(context);
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
    // Reset tap count if more than 1 second has passed since last tap
    if (_tapTimer?.isActive ?? false) {
      _tapTimer?.cancel();
    }

    _tapTimer = Timer(const Duration(milliseconds: 500), () {
      if (_tapCount >= 3) {
        debugPrint('✅ Triple tap detected! Showing options dialog...');
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
      onTap: () => _handleTap(context), // 👈 3 ضغطات سريعة
      child: widget.child,
    );
  }
}
