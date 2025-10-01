import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../core/theme/app_colors.dart';

Widget buildProfileAvatar({
  required String image,
  required bool isEditing,
  File? selectedImage,
  VoidCallback? onEditImageTap,
}) {
  return Stack(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.brandMint,
            width: 3,
          ),
          image: DecorationImage(
            image: isEditing && selectedImage != null
                ? FileImage(
                    selectedImage,
                  )
                : NetworkImage(
                    image,
                  ) as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      if (isEditing)
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: onEditImageTap,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.brandMint,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.photo_camera,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
    ],
  );
}

Widget buildDivider() {
  return Divider(
    height: 1,
    color: AppColors.outline.withValues(alpha: 0.3),
    indent: 16,
    endIndent: 16,
  );
}
