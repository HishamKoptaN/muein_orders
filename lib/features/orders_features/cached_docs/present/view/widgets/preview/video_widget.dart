import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewWidget extends StatefulWidget {
  const VideoPreviewWidget({super.key, required this.path});

  final String path;

  @override
  State<VideoPreviewWidget> createState() => _VideoPreviewWidgetState();
}

class _VideoPreviewWidgetState extends State<VideoPreviewWidget> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;
  bool _hasError = false;
  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  @override
  void didUpdateWidget(covariant VideoPreviewWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.path != widget.path) {
      _initializeVideo();
    }
  }

  Future<void> _initializeVideo() async {
    await _disposeController();

    try {
      final controller = VideoPlayerController.file(File(widget.path));
      await controller.initialize();
      await controller.setVolume(0);
      await controller.setLooping(false);

      if (mounted) {
        setState(() {
          _controller = controller;
          _isInitialized = true;
          _hasError = false;
        });
      } else {
        await controller.dispose();
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _hasError = true;
          _isInitialized = false;
        });
      }
    }
  }

  Future<void> _disposeController() async {
    if (_controller != null) {
      final oldController = _controller;
      _controller = null;
      await oldController?.dispose();
    }
  }

  void _togglePlayPause() {
    if (_controller == null || !_isInitialized) return;
    setState(() {
      _controller!.value.isPlaying ? _controller!.pause() : _controller!.play();
    });
  }

  @override
  void dispose() {
    _disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return ClipRRect(
        borderRadius: .circular(6.r),
        child: Container(
          color: Colors.black12,
          child: const Center(
            child: Icon(Icons.video_camera_back_outlined, color: Colors.red),
          ),
        ),
      );
    }
    if (!_isInitialized || _controller == null) {
      return ClipRRect(
        borderRadius: .circular(6.r),
        child: Container(
          color: Colors.black12,
          child: const Center(child: CircularProgressIndicator.adaptive()),
        ),
      );
    }

    return ClipRRect(
      borderRadius: .circular(6.r),
      child: Stack(
        fit: .expand,
        children: [
          FittedBox(
            fit: .cover,
            child: SizedBox(
              width: _controller!.value.size.width,
              height: _controller!.value.size.height,
              child: VideoPlayer(_controller!),
            ),
          ),
          Center(
            child: IconButton(
              icon: Icon(
                _controller!.value.isPlaying
                    ? Icons.pause_circle_filled
                    : Icons.play_circle_fill,
                color: Colors.white.withAlpha(200),
                size: 48.r,
              ),
              onPressed: _togglePlayPause,
            ),
          ),
        ],
      ),
    );
  }
}
