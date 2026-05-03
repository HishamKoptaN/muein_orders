import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../data/datasources/local/drift/cached_docs_table.dart';
import '../../../domain/entities/create_cached_doc_entity.dart';
import '../../bloc/cached_doc_bloc.dart';
import 'add_file_widget.dart';
import 'file_picker_utils.dart';
import 'location_picker_button.dart';

class AddDocFieldsWidget extends StatelessWidget {
  const AddDocFieldsWidget({
    super.key,
    required this.state,
    required this.subCategoryId,
  });
  final Loaded state;
  final int subCategoryId;
  @override
  Widget build(BuildContext context) {
    final FilePickerUtils filePicker = FilePickerUtils();
    final bloc = getIt<CachedDocBloc>();
    final List<DocFileEntity> currentFiles =
        (state.createCachedDoc.files.isNotEmpty)
        ? state.createCachedDoc.files
        : List.generate(4, (_) => const DocFileEntity());
    Future<void> onFileSelected(int index, bool isImage) async {
      try {
        final file = await filePicker.pickAndPop(
          context: context,
          fileType: isImage ? FileType.image : FileType.video,
          source: ImageSource.gallery,
        );
        if (file != null) {
          final List<DocFileEntity> updatedList = List.from(currentFiles);
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
              subCategoryId: subCategoryId,
            ),
          );
        }
      } catch (e) {
        debugPrint('Error selecting file: $e');
      }
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        if (subCategoryId != 5)
          ...currentFiles.asMap().entries.map((entry) {
            final index = entry.key;
            final fileEntity = entry.value;
            final bool isImage = index < 2;
            return AddFileWidget(
              key: ValueKey('file_field_$index'),
              initialValue: fileEntity.docFile?.path,
              path:
                  fileEntity.docFile?.path ??
                  (isImage ? 'إضافة صورة' : 'إضافة فيديو'),
              addDocWidgetType: isImage
                  ? AddDocWidgetType.image
                  : AddDocWidgetType.video,
              docFileStatus: fileEntity.docFileStatus,
              onChanged: (_) {
                return onFileSelected(index, isImage);
              },
              validator: (_) {
                return fileEntity.file?.isNotValid ?? false
                    ? fileEntity.file?.errorMessage
                    : null;
              },
            );
          })
        else
          AddFileWidget(
            key: const ValueKey('file_field'),
            initialValue: currentFiles[2].docFile?.path,
            path: currentFiles[2].docFile?.path ?? 'اضف فيديو',
            addDocWidgetType: AddDocWidgetType.video,
            docFileStatus: currentFiles[2].docFileStatus,
            onChanged: (_) => onFileSelected(2, false),
            validator: (_) => currentFiles[2].file?.isNotValid ?? false
                ? currentFiles[2].file?.errorMessage
                : null,
          ),
        if (subCategoryId != 5) LocationPickerButton(loaded: state),
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
