import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../data/datasources/local/drift/cached_docs_table.dart';
import '../../../domain/entities/create_cached_doc_entity.dart';
import '../../bloc/cached_doc_bloc.dart';
import 'add_file_widget.dart';
import 'file_picker_utils.dart';
import 'location_picker_button.dart';

class AddDocFieldsWidget extends StatelessWidget {
  const AddDocFieldsWidget({super.key, required this.state});
  final Loaded state;

  @override
  Widget build(BuildContext context) {
    final FilePickerUtils filePicker = FilePickerUtils();
    final t = AppLocalizations.of(context);
    final bloc = getIt<CachedDocBloc>();
    final List<DocFileEntity> currentFiles =
        (state.createCachedDoc.files.isNotEmpty)
        ? state.createCachedDoc.files
        : List.generate(4, (_) => const DocFileEntity());
    Future<void> onFileSelected(int index, bool isImage) async {
      try {
        final file = await filePicker.selectFilesPath(
          context: context,
          fileType: isImage ? FileType.image : FileType.video,
        );
        if (file != null) {
          final List<DocFileEntity> updatedList = List.from(currentFiles);
          final oldFile = updatedList[index];
          updatedList[index] = updatedList[index].copyWith(
            file: FileFormzInput.dirty(file),
            docFile:
                (updatedList[index].docFile ??
                        DocFile(
                          path: file.path,
                          type: _getDocTypeByIndex(index),
                        ))
                    .copyWith(path: file.path),
            docFileStatus: FileUploadStatus.pending,
          );
          bloc.add(
            CachedDocEvent.updateData(
              loaded: state,
              createCachedDoc: state.createCachedDoc.copyWith(
                files: updatedList,
              ),
            ),
          );
        }
      } catch (e) {
        debugPrint('Error selecting file: $e');
        // يمكن إضافة رسالة خطأ للمستخدم هنا إذا لزم الأمر
      }
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        ...currentFiles.asMap().entries.map((entry) {
          final index = entry.key;
          final fileEntity = entry.value;
          final bool isImage = index < 2;
          return AddFileWidget(
            key: ValueKey('file_field_$index'),
            initialValue: fileEntity.docFile?.path,
            path:
                fileEntity.docFile?.path ??
                (isImage ? t.add_picure : t.add_video),
            addDocWidgetType: isImage
                ? AddDocWidgetType.image
                : AddDocWidgetType.video,
            docFileStatus: fileEntity.docFileStatus,
            onChanged: (_) => onFileSelected(index, isImage),
            validator: (_) => fileEntity.file?.isNotValid ?? false
                ? fileEntity.file?.errorMessage
                : null,
          );
        }),
        if (state.createCachedDoc.subCategory?.id != 4)
          LocationPickerButton(loaded: state),
      ],
    );
  }

  DocFileType _getDocTypeByIndex(int index) {
    if (index == 0) return DocFileType.image_one;
    if (index == 1) return DocFileType.image_two;
    if (index == 2) return DocFileType.video_one;
    return DocFileType.video_two;
  }
}
