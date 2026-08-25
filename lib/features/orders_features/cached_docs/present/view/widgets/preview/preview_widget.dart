import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../../docs/domain/entities/doc_entity.dart';
import '../../../../domain/entities/create_cached_doc_entity.dart';
import '../file/place_holder.dart';
import 'image_preview_widget.dart';
import 'video_widget.dart';

class PreviewWidget extends StatefulWidget {
  const PreviewWidget({super.key, required this.updateDocMedia});
  final UpdateDocMediaEntity updateDocMedia;

  @override
  State<PreviewWidget> createState() => _PreviewWidgetState();
}

class _PreviewWidgetState extends State<PreviewWidget> {
  @override
  Widget build(BuildContext context) {
    final path = widget.updateDocMedia.localFilePath.value.isNotEmpty
        ? widget.updateDocMedia.localFilePath.value
        : widget.updateDocMedia.filePath;
    if (widget.updateDocMedia.docMediaType == .video) {
      return VideoPreviewWidget(path: path);
    }
    if (File(path).existsSync()) {
      return ImagePreviewWidget(path: path);
    }
    return PlaceholderWidget(docMediaType: widget.updateDocMedia.docMediaType);
  }
}
