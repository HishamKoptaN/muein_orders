import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../../docs/domain/entities/doc_entity.dart';
import '../file/place_holder.dart';
import 'image_preview_widget.dart';
import 'video_widget.dart';

class PreviewWidget extends StatefulWidget {
  const PreviewWidget({super.key, required this.docMedia});
  final DocMediaEntity docMedia;

  @override
  State<PreviewWidget> createState() => _PreviewWidgetState();
}

class _PreviewWidgetState extends State<PreviewWidget> {
  @override
  Widget build(BuildContext context) {
    final path = widget.docMedia.localFilePath.isNotEmpty
        ? widget.docMedia.localFilePath
        : widget.docMedia.filePath;
    if (widget.docMedia.docMediaType == .video) {
      return VideoPreviewWidget(path: path);
    }
    if (path.isNotEmpty && File(path).existsSync()) {
      return ImagePreviewWidget(path: path);
    }
    return PlaceholderWidget(docMediaType: widget.docMedia.docMediaType);
  }
}
