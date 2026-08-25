import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/core/extensions/theme_ext.dart';

class CustomImage extends StatelessWidget {
  final String? path;
  final double? width;
  final double? height;
  final BoxFit fit;

  const CustomImage({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    // 1. في حالة عدم وجود مسار أو كان فارغاً
    if (path == null || path!.isEmpty) {
      return _buildPlaceholder(context);
    }

    // 2. إذا كانت الصورة ملف محلي (File / Cache)
    if (path!.startsWith('file://') || !path!.startsWith('http')) {
      final cleanPath = path!.replaceFirst('file://', '');
      return Image.file(
        File(cleanPath),
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (_, __, ___) => _buildPlaceholder(context),
      );
    }

    // 3. إذا كانت الصورة رابط شبكة (Network)
    return CachedNetworkImage(
      imageUrl: path!,
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) => _buildPlaceholder(context),
      errorWidget: (_, __, ___) => _buildPlaceholder(context),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: context.colorScheme.primaryContainer,
      child: Icon(
        Icons.person_rounded,
        size: (width ?? 100.r) * 0.6, // حجم الأيقونة متناسب دائماً مع الأبعاد
        color: context.colorScheme.onPrimaryContainer,
      ),
    );
  }
}
