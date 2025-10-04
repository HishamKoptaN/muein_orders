import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:ffmpeg_kit_flutter_new/ffmpeg_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:path_provider/path_provider.dart';
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
  late final FakeVideoGenerator _videoGenerator;
  bool _isGeneratingVideos = false; // منع التوليد المتزامن

  @override
  void initState() {
    super.initState();
    _videoGenerator = FakeVideoGenerator(
      frameCount: 600, // فيديو طويل يأخذ وقت في الرفع لمراقبة التقدم
      fps: 30,
      width: 1280,    // جودة عالية لزيادة حجم الملف
      height: 720,
    );
  }

  void _handleTap(BuildContext context) {
    final now = DateTime.now();

    // Reset tap count if more than 1 second has passed since last tap
    if (_tapTimer?.isActive ?? false) {
      _tapTimer?.cancel();
    }

    _tapTimer = Timer(const Duration(milliseconds: 500), () {
      if (_tapCount >= 3) {
        debugPrint('✅ Triple tap detected! Running auto-fill scenario...');
        _fillAllFields(context);
      }
      _tapCount = 0;
    });

    _tapCount++;
  }

  Future<void> _fillAllFields(BuildContext context) async {
    debugPrint('🚀 Running Debug AutoFill for Docs with BLoC...');
    final bloc = context.read<CachedDocBloc>();
    // ملء المصاريف
    bloc.add(const CachedDocEvent.updateData(
      orderId: GenericFormzInput.dirty(1),
    ));

    // ملء الموقع
    bloc.add(
      const CachedDocEvent.updateData(
        latitude: GenericFormzInput.dirty(30.0444),
        longitude: GenericFormzInput.dirty(31.2357),
      ),
    );
    // ملء الصور والفيديوهات بملفات وهمية
    await _addDummyFiles(bloc);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تم ملء جميع الحقول بالبيانات الوهمية'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
      ),
    );
    debugPrint('✅ AutoFill Docs Done (via BLoC)');
  }

  Future<void> _addDummyFiles(CachedDocBloc bloc) async {
    debugPrint(
      '🎬 Generating fake images and videos using FakeVideoGenerator...',
    );

    // منع التوليد المتزامن
    if (_isGeneratingVideos) {
      debugPrint('⚠️ فيديوهات قيد التوليد بالفعل، جاري الانتظار...');
      return;
    }

    _isGeneratingVideos = true;

    try {
      // إنشاء ملفات مؤقتة للصور والفيديوهات
      final tempDir = await getTemporaryDirectory();

      // توليد فيديوهين وهميين
      final videoFile1 = await _videoGenerator.createMp4FromFrames();
      final videoFile2 = await _videoGenerator.createMp4FromFrames();

      if (videoFile1 != null) {
        debugPrint('✅ Generated fake video 1: ${videoFile1.path}');
      } else {
        debugPrint('⚠️ Failed to generate fake video 1');
      }
      if (videoFile2 != null) {
        debugPrint('✅ Generated fake video 2: ${videoFile2.path}');
      } else {
        debugPrint('⚠️ Failed to generate fake video 2');
      }

      // توليد صورتين وهميتين
      final imageFile1 = await _videoGenerator.generateFakeImage();
      final imageFile2 = await _videoGenerator.generateFakeImage();

      if (imageFile1 != null) {
        debugPrint('✅ Generated fake image 1: ${imageFile1.path}');
      } else {
        debugPrint('⚠️ Failed to generate fake image 1');
      }
      if (imageFile2 != null) {
        debugPrint('✅ Generated fake image 2: ${imageFile2.path}');
      } else {
        debugPrint('⚠️ Failed to generate fake image 2');
      }

      // إضافة الملفات إلى البلوك
      if (imageFile1 != null) {
        bloc.add(CachedDocEvent.updateData(
            imageOne: FileFormzInput.dirty(imageFile1)));
      }
      if (imageFile2 != null) {
        bloc.add(CachedDocEvent.updateData(
            imageTwo: FileFormzInput.dirty(imageFile2)));
      }

      if (videoFile1 != null) {
        bloc.add(CachedDocEvent.updateData(
            videoOne: FileFormzInput.dirty(videoFile1)));
      }
      if (videoFile2 != null) {
        bloc.add(CachedDocEvent.updateData(
            videoTwo: FileFormzInput.dirty(videoFile2)));
      }

      debugPrint(
        '📁 Generated fake files using FakeVideoGenerator (with error handling)',
      );
    } finally {
      _isGeneratingVideos = false;
    }
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

// lib/utils/fake_video_generator.dart
class FakeVideoGenerator {
  /// عدد الإطارات، سرعة الإطار (fps)، ودقة الفيديو
  final int frameCount;
  final int fps;
  final int width;
  final int height;

  FakeVideoGenerator({
    this.frameCount = 600, // فيديو طويل لمراقبة التقدم
    this.fps = 30,
    this.width = 1280,    // جودة عالية لزيادة حجم الملف
    this.height = 720,
  });

  /// مولّد إطارات: يرسم خلفية وكتابة رقم الإطار
  Future<List<File>> _generateFrames() async {
    final dir = await getTemporaryDirectory();
    final frames = <File>[];

    for (var i = 0; i < frameCount; i++) {
      final recorder = ui.PictureRecorder();
      final canvas = Canvas(recorder);
      final paint = Paint()
        ..color = Color.lerp(Colors.blue, Colors.purple, i / frameCount)!;
      canvas.drawRect(
        Rect.fromLTWH(0, 0, width.toDouble(), height.toDouble()),
        paint,
      );
      // إضافة نص الإطار
      final textPainter = TextPainter(
        text: TextSpan(
          text: 'Frame ${i + 1}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(canvas, Offset(20, height / 2 - 16));

      // رسم مؤشر متحرك (مثال بسيط)
      final circlePaint = Paint()..color = Colors.white.withOpacity(0.8);
      final cx = 40.0 + (width - 80) * (i / (frameCount - 1));
      canvas.drawCircle(Offset(cx, height - 40), 10, circlePaint);

      // إضافة مستطيل متحرك لزيادة التعقيد والحجم
      final rectPaint = Paint()
        ..color = Colors.green.withOpacity(0.6)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3;
      final rectWidth = 100.0 + 50 * (i / frameCount);
      canvas.drawRect(
        Rect.fromLTWH(
          width / 2 - rectWidth / 2,
          height / 2 - 25,
          rectWidth,
          50,
        ),
        rectPaint,
      );

      // إضافة دائرة متحركة أخرى
      final circle2Paint = Paint()..color = Colors.red.withOpacity(0.7);
      final cy = height / 2 + 30 * (i / frameCount);
      canvas.drawCircle(Offset(width - 40, cy), 15, circle2Paint);

      final picture = recorder.endRecording();
      final img = await picture.toImage(width, height);
      final byteData = await img.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes = byteData!.buffer.asUint8List();

      final filename = 'frame_${(i + 1).toString().padLeft(3, '0')}.png';
      final file = File('${dir.path}/$filename');
      await file.writeAsBytes(pngBytes);
      frames.add(file);
    }

    return frames;
  }

  /// إنشاء فيديو وهمي صالح باستخدام ffmpeg_kit مع تحسينات الأداء
  Future<File?> createMp4FromFrames() async {
    try {
      final dir = await getTemporaryDirectory();

      // توليد إطارات PNG أولاً
      final frames = await _generateFrames();
      if (frames.isEmpty) {
        debugPrint('❌ لا توجد إطارات لإنشاء الفيديو');
        return null;
      }

      // مسار الفيديو النهائي
      final outputPath =
          '${dir.path}/fake_video_${DateTime.now().millisecondsSinceEpoch}.mp4';

      // أمر ffmpeg محسّن لإنشاء فيديو صالح
      final cmd = '-y -r $fps -i "${dir.path}/frame_%03d.png" '
          '-c:v libx264 -preset ultrafast -crf 28 -pix_fmt yuv420p '
          '-vf "scale=${width}:${height}:force_original_aspect_ratio=decrease,pad=${width}:${height}:(ow-iw)/2:(oh-ih)/2" '
          '-movflags +faststart -avoid_negative_ts make_zero '
          '"$outputPath"';

      debugPrint('🎬 تنفيذ أمر FFmpeg: $cmd');

      final session = await FFmpegKit.execute(cmd);
      final returnCode = await session.getReturnCode();
      final logs = await session.getAllLogsAsString();

      debugPrint('📊 FFmpeg return code: $returnCode');
      if (logs?.isNotEmpty ?? false) {
        debugPrint('📋 FFmpeg logs: $logs');
      }

      if (returnCode != null && returnCode.isValueSuccess()) {
        final outputFile = File(outputPath);
        if (await outputFile.exists()) {
          final fileSize = await outputFile.length();
          debugPrint(
              '✅ تم إنشاء فيديو صالح: $outputPath (حجم: ${fileSize} بايت)');

          // تنظيف الإطارات المؤقتة بعد إنشاء الفيديو
          for (final frame in frames) {
            try {
              if (await frame.exists()) {
                await frame.delete();
              }
            } catch (e) {
              debugPrint('تحذير: فشل في حذف الإطار المؤقت: ${frame.path}');
            }
          }

          return outputFile;
        } else {
          debugPrint('❌ ملف الفيديو غير موجود رغم نجاح FFmpeg');
          return null;
        }
      } else {
        debugPrint('❌ فشل FFmpeg: $logs');
        return null;
      }
    } catch (e, stackTrace) {
      debugPrint('❌ خطأ في إنشاء الفيديو: $e');
      debugPrint('Stack trace: $stackTrace');
      return null;
    }
  }

  /// توليد صورة وهمية واحدة بدلاً من إطارات متعددة
  Future<File?> generateFakeImage() async {
    try {
      final dir = await getTemporaryDirectory();

      // إنشاء صورة بأبعاد محددة
      final recorder = ui.PictureRecorder();
      final canvas = Canvas(recorder);
      final paint = Paint()..color = Colors.blue.withOpacity(0.8);

      // رسم خلفية متدرجة
      canvas.drawRect(
        Rect.fromLTWH(0, 0, width.toDouble(), height.toDouble()),
        paint,
      );

      // إضافة نص
      final textPainter = TextPainter(
        text: const TextSpan(
          text: 'مبين',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.rtl,
      );
      textPainter.layout();
      textPainter.paint(canvas, Offset(20, height / 2 - 12));

      // إضافة شكل دائري متحرك
      final circlePaint = Paint()..color = Colors.white.withOpacity(0.8);
      canvas.drawCircle(Offset(width / 2, height / 2), 50, circlePaint);

      // تحويل الصورة إلى بايتات
      final picture = recorder.endRecording();
      final img = await picture.toImage(width, height);
      final byteData = await img.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes = byteData!.buffer.asUint8List();

      // حفظ الصورة في ملف
      final filename =
          'fake_image_${DateTime.now().millisecondsSinceEpoch}.png';
      final file = File('${dir.path}/$filename');
      await file.writeAsBytes(pngBytes);

      debugPrint('✅ Generated fake image: ${file.path}');
      return file;
    } catch (e) {
      debugPrint('❌ Error generating fake image: $e');
      return null;
    }
  }
}
