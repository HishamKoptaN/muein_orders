import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:ffmpeg_kit_flutter_new/ffmpeg_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

import '../blocs/bloc/docs_bloc.dart';

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

  @override
  void initState() {
    super.initState();
    _videoGenerator = FakeVideoGenerator(
      frameCount: 60, // زيادة عدد الإطارات لفيديو أطول
      fps: 30, // سرعة أعلى للفيديو
      width: 640,
      height: 480,
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
    final bloc = context.read<DocsBloc>();
    // ملء المصاريف
    bloc.add(const DocsEvent.shippingCostChanged(value: '150'));

    // ملء الموقع
    bloc.add(
      const DocsEvent.updateLocation(
        latitude: '30.0444',
        longitude: '31.2357',
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

  Future<void> _addDummyFiles(DocsBloc bloc) async {
    debugPrint(
      '🎬 Generating fake images and videos using FakeVideoGenerator...',
    );

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
      bloc.add(DocsEvent.imageOneChanged(file: imageFile1));
    }
    if (imageFile2 != null) {
      bloc.add(DocsEvent.imageTwoChanged(file: imageFile2));
    }

    if (videoFile1 != null) {
      bloc.add(DocsEvent.videoOneChanged(file: videoFile1));
    }
    if (videoFile2 != null) {
      bloc.add(DocsEvent.videoTwoChanged(file: videoFile2));
    }

    debugPrint(
      '📁 Generated fake files using FakeVideoGenerator (with error handling)',
    );
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
    this.frameCount = 30,
    this.fps = 24,
    this.width = 640,
    this.height = 360,
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

  /// إنشاء فيديو وهمي بسيط
  /// إنشاء فيديو وهمي صالح باستخدام ffmpeg_kit
  Future<File?> createMp4FromFrames() async {
    try {
      final dir = await getTemporaryDirectory();

      // توليد إطارات PNG أولاً
      final frames = await _generateFrames();
      if (frames.isEmpty) return null;

      // مسار الفيديو النهائي
      final outputPath =
          '${dir.path}/fake_video_${DateTime.now().millisecondsSinceEpoch}.mp4';

      // أمر ffmpeg لتجميع الإطارات في فيديو mp4
      final cmd =
          '-y -r $fps -i "${dir.path}/frame_%03d.png" -c:v libx264 -pix_fmt yuv420p "$outputPath"';

      final session = await FFmpegKit.execute(cmd);
      final returnCode = await session.getReturnCode();

      if (returnCode != null && returnCode.isValueSuccess()) {
        debugPrint('✅ Created real fake video: $outputPath');
        return File(outputPath);
      } else {
        final log = await session.getAllLogsAsString();
        debugPrint('❌ FFmpeg failed: $log');
        return null;
      }
    } catch (e) {
      debugPrint('❌ Error creating video: $e');
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
