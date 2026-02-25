import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/widgets/translated_text.dart';
import '../../../data/datasources/local/drift/cached_docs_table.dart';
enum AddDocWidgetType { image, video }

class AddFileWidget extends StatefulWidget {
  const AddFileWidget({
    super.key,
    this.initialValue,
    required this.path,
    required this.docFileStatus,
    this.onChanged,
    this.validator,
    this.errorText,
    required this.addDocWidgetType,
  });
  final String? path;
  final Function(File?)? onChanged;
  final String? Function(String?)? validator;
  final String? errorText;
  final String? initialValue;
  final AddDocWidgetType addDocWidgetType;
  final FileUploadStatus docFileStatus;
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

  Future<void> _initializePreview() async {
    if (widget.initialValue?.isNotEmpty == true) {
      final file = File(widget.initialValue!);
      if (file.existsSync()) {
        final fileExtension = file.path.toLowerCase().split('.').last;
        final isVideoFile = [
          'mp4',
          'mov',
          'avi',
          'mkv',
          'wmv',
          'flv',
          'webm',
        ].contains(fileExtension);
        if (isVideoFile) {
          _isVideo = true;
          try {
            await Future.delayed(const Duration(milliseconds: 100));
            _videoController = VideoPlayerController.file(file);
            await _videoController!.initialize();
            if (_videoController!.value.size.width > 720) {
              await _videoController!.setVolume(
                0,
              ); 
            }
            if (mounted) {
              setState(() {});
            }
          } catch (error) {
            debugPrint('خطأ في تحميل الفيديو: $error');
            _isVideo = false;
            _disposeVideoController();
            if (mounted) setState(() {});
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
        // TrText(
        //   widget.path!,
        //   style: const TextStyle(
        //     color: Colors.red,
        //     fontSize: 12,
        //     fontFamily: 'Almarai',
        //   ),
        // ),
        Stack(
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

            if (widget.path != null && widget.path!.isNotEmpty)
              Positioned(
                top: 8,
                left: 8,
                child: buildStatusIndicator(
                  docFileStatus: widget.docFileStatus,
                ),
              ),
          ],
        ),
        if (widget.errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 8.0),
            child: TrText(
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

          if (widget.addDocWidgetType == AddDocWidgetType.image)
            const Icon(
              Icons.add_photo_alternate_outlined,
              size: 34,
              color: Colors.grey,
            ),
          const SizedBox(height: 8),
          TrText(
            widget.path ?? '',
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
            FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _videoController!.value.size.width,
                height: _videoController!.value.size.height,
                child: VideoPlayer(_videoController!),
              ),
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
                  setState(() {
                    _videoController!.value.isPlaying
                        ? _videoController!.pause()
                        : _videoController!.play();
                  });
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
          cacheWidth: 720,
          cacheHeight: 1280,
        ),
      );
    }
    return _buildPlaceholder();
  }
}

Widget buildStatusIndicator({required FileUploadStatus docFileStatus}) {
  IconData icon;
  Color color;
  bool isRotating = false;
  switch (docFileStatus) {
    case FileUploadStatus.uploading:
      icon = Icons.sync;
      color = Colors.blue;
      isRotating = true;
      break;
    case FileUploadStatus.uploaded:
      icon = Icons.check_circle;
      color = Colors.green;
      break;
    case FileUploadStatus.failed:
      icon = Icons.error;
      color = Colors.red;
      break;
    case FileUploadStatus.pending:
    default:
      icon = Icons.cloud_upload_outlined;
      color = Colors.orange;
      break;
  }
  return Container(
    padding: const EdgeInsets.all(4),
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.9),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4),
      ],
    ),
    child: isRotating
        ? buildRotatingIcon(icon, color)
        : Icon(icon, color: color, size: 20),
  );
}

Widget buildRotatingIcon(IconData icon, Color color) {
  return RotationTransition(
    turns: AlwaysStoppedAnimation(DateTime.now().millisecond / 1000),
    child: Icon(icon, color: color, size: 20),
  );
}
