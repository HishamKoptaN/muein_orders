// lib/features/docs/utils/file_picker_utils.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../l10n/app_localizations.dart';

enum FileType { image, video }

class FilePickerUtils {
  final ImagePicker _imagePicker = ImagePicker();

  Future<File?> selectFilesPath({
    required BuildContext context,
    required FileType fileType,
  }) async {
    final XFile? picked = await showDialog<XFile>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            AppLocalizations.of(context).select_files,
          ),
          actions: [
            _buildIconButton(
              context,
              icon: Icons.camera_alt,
              label: AppLocalizations.of(context).camera,
              onPressed: () =>
                  _pickAndPop(context, fileType, ImageSource.camera),
            ),
            _buildIconButton(
              context,
              icon: Icons.photo_library,
              label: AppLocalizations.of(context).gallery,
              onPressed: () =>
                  _pickAndPop(context, fileType, ImageSource.gallery),
            ),
          ],
        );
      },
    );

    return picked != null ? File(picked.path) : null;
  }

  Widget _buildIconButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return TextButton.icon(
      icon: Icon(icon),
      label: Text(label),
      onPressed: onPressed,
    );
  }

  Future<void> _pickAndPop(
    BuildContext context,
    FileType fileType,
    ImageSource source,
  ) async {
    final xFile = await _pickMedia(fileType: fileType, source: source);
    if (context.mounted) {
      Navigator.of(context).pop(xFile);
    }
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
