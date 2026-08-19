// lib/features/docs/utils/file_picker_utils.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../../l10n/app_localizations.dart';

enum FileType { image, video }

class FilePickerUtils {
  final ImagePicker _imagePicker = ImagePicker();
  // Future<File?> selectFilesPath({
  //   required BuildContext context,
  //   required FileType fileType,
  // }) async {
  //   final XFile? picked = await showDialog<XFile>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         backgroundColor: Colors.white,
  //         content: const TrText(
  //           'اختر الملف',
  //           style: TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.black,
  //           ),
  //         ),
  //         actions: [
  //           _buildIconButton(
  //             context,
  //             icon: Icons.camera_alt,
  //             label: 'الكاميرا',
  //             onPressed: () {
  //               _pickAndPop(context, fileType, ImageSource.camera);
  //             },
  //           ),
  //           _buildIconButton(
  //             context,
  //             icon: Icons.photo_library,
  //             label: 'المعرض',
  //             onPressed: () {
  //               _pickAndPop(context, fileType, ImageSource.gallery);
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  //   return picked != null ? File(picked.path) : null;
  // }

  Widget _buildIconButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return TextButton.icon(
      icon: Icon(icon),
      label: TrText(label),
      onPressed: onPressed,
    );
  }

  Future<File?> pickAndPop({
    required BuildContext context,
    required FileType fileType,
    required ImageSource source,
  }) async {
    final xFile = await _pickMedia(fileType: fileType, source: source);
    // if (context.mounted) {
    //   Navigator.of(context).pop(xFile);
    // }
    return xFile != null ? File(xFile.path) : null;
  }

  Future<XFile?> _pickMedia({
    required FileType fileType,
    required ImageSource source,
  }) async {
    try {
      if (fileType == FileType.image) {
        return await _imagePicker.pickImage(source: source);
      } else if (fileType == FileType.video) {
        return await _imagePicker.pickVideo(source: source);
      }
    } catch (e) {
      debugPrint('Error picking media: $e');
    }
    return null;
  }
}
