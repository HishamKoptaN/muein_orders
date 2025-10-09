import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

enum AddDocWidgetType { image, video }

class AddFileWidget extends StatefulWidget {
  const AddFileWidget({
    super.key,
    required this.text,
    this.onChanged,
    this.validator,
    this.errorText,
    this.initialValue,
    required this.addDocWidgetType,
  });

  final String text;
  final Function(File?)? onChanged;
  final String? Function(String?)? validator;
  final String? errorText;
  final String? initialValue;
  final AddDocWidgetType addDocWidgetType;

  @override
  State<AddFileWidget> createState() => _AddFileWidgetState();
}

class _AddFileWidgetState extends State<AddFileWidget> {
  VideoPlayerController? _videoController;
  bool _isVideo = false;

  @override
  void initState() {
    super.initState();
    _initializePreview();
  }

  @override
  void didUpdateWidget(AddFileWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _disposeVideoController();
      _initializePreview();
    }
  }

  void _disposeVideoController() {
    _videoController?.removeListener(() {});
    _videoController?.dispose();
    _videoController = null;
  }

  void _initializePreview() async {
    if (widget.initialValue?.isNotEmpty == true) {
      final file = File(widget.initialValue!);
      if (file.existsSync()) {
        if (file.path.toLowerCase().endsWith('.mp4') ||
            file.path.toLowerCase().endsWith('.mov')) {
          _isVideo = true;
          try {
            _videoController = VideoPlayerController.file(file)
              ..initialize().then((_) {
                if (mounted) {
                  setState(() {
                    // لا نحتاج إلى التكرار التلقائي لتجنب مشاكل الأداء
                    // _videoController?.setLooping(true);
                  });
                }
              }).catchError((error) {
                debugPrint('خطأ في تحميل الفيديو: $error');
                _isVideo = false;
                if (mounted) setState(() {});
              });
          } catch (e) {
            debugPrint('خطأ في إنشاء متحكم الفيديو: $e');
            _isVideo = false;
          }
        } else {
          _isVideo = false;
        }
      } else {
        _disposeVideoController();
        _isVideo = false;
      }
    } else {
      _disposeVideoController();
      _isVideo = false;
    }
  }

  @override
  void dispose() {
    _disposeVideoController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasPreview = widget.initialValue?.isNotEmpty == true;

    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            if (widget.onChanged != null) {
              widget.onChanged!(null);
            }
          },
          child: Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: widget.errorText != null
                    ? Colors.red
                    : const Color(0xFFF0EFEF),
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4,
                  color: Colors.black12,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: hasPreview ? _buildPreview() : _buildPlaceholder(),
          ),
        ),
        if (widget.errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 8.0),
            child: Text(
              widget.errorText!,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12,
                fontFamily: 'Almarai',
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildPlaceholder() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.addDocWidgetType == AddDocWidgetType.video)
            Image.asset(
              'assets/icons/iconoir_add-media-video.png',
              width: 34,
              height: 34,
            ),
          // SvgPicture.asset(
          //   'assets/icons/video.svg',
          //   width: 34,
          //   height: 34,
          // ),
          if (widget.addDocWidgetType == AddDocWidgetType.image)
            const Icon(
              Icons.add_photo_alternate_outlined,
              size: 34,
              color: Colors.grey,
            ),
          const SizedBox(height: 8),
          Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 14,
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreview() {
    if (_isVideo && _videoController?.value.isInitialized == true) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AspectRatio(
              aspectRatio: _videoController!.value.aspectRatio,
              child: VideoPlayer(_videoController!),
            ),
            Center(
              child: IconButton(
                icon: Icon(
                  _videoController!.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {
                  setState(
                    () {
                      _videoController!.value.isPlaying
                          ? _videoController!.pause()
                          : _videoController!.play();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      );
    } else if (widget.initialValue != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.file(
          File(widget.initialValue!),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }
    return _buildPlaceholder();
  }
}
