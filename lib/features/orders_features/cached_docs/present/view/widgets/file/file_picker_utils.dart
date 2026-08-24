import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../data/datasources/local_data_src/drift/tables/items_table.dart';

class FilePickerUtils {
  final ImagePicker _imagePicker = ImagePicker();

  Future<File?> pickAndPop({
    required BuildContext context,
    required DocMediaType fileType,
    required ImageSource source,
  }) async {
    final xFile = await _pickMedia(fileType: fileType, source: source);
    return xFile != null ? File(xFile.path) : null;
  }

  Future<XFile?> _pickMedia({
    required DocMediaType fileType,
    required ImageSource source,
  }) async {
    try {
      if (fileType == DocMediaType.image) {
        return await _imagePicker.pickImage(source: source);
      } else if (fileType == DocMediaType.video) {
        return await _imagePicker.pickVideo(source: source);
      }
    } catch (e) {
      debugPrint('Error picking media: $e');
    }
    return null;
  }
}
