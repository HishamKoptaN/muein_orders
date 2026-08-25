import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePreviewWidget extends StatelessWidget {
  const ImagePreviewWidget({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: .circular(6.r),
      child: Image.file(
        File(path),
        fit: .cover,
        width: .infinity,
        height: .infinity,
        cacheWidth: 720,
      ),
    );
  }
}
