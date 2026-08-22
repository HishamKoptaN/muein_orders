import 'package:flutter/material.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../docs/domain/entities/doc_entity.dart';
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
    final List<DocMediaEntity> currentFiles =
        (state.createCachedDoc.files.isNotEmpty)
        ? state.createCachedDoc.files
        : List.generate(4, (_) => const DocMediaEntity());
    Future<void> onFileSelected(int index, bool isImage) async {
      try {
        final file = await filePicker.pickAndPop(
          context: context,
          fileType: isImage ? .image : .video,
          source: .gallery,
        );
        if (file != null) {
          final List<DocMediaEntity> updatedList = List.from(currentFiles);
          updatedList[index] = updatedList[index].copyWith(
            filePath: file.path,
            // docFile:
            //     (updatedList[index].docFile ??
            //             MediaEntity(
            //               // path: file.path,
            //               type: _getDocType(index),
            //             ))
            //         .copyWith(path: file.path),
            // docFileStatus: .pending,
          );
          getIt<CachedDocBloc>().add(
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
        ...currentFiles.asMap().entries.map((entry) {
          final index = entry.key;
          final fileEntity = entry.value;
          final bool isImage = index < 2;
          return AddFileWidget(
            key: ValueKey('file_field_$index'),
            initialValue: fileEntity.filePath,
            path:
                fileEntity.filePath ?? (isImage ? 'إضافة صورة' : 'إضافة فيديو'),
            addDocWidgetType: isImage ? .image : .video,
            docFileStatus: fileEntity.fileUploadStatus,
            onChanged: (_) {
              return onFileSelected(index, isImage);
            },
            // validator: (_) {
            //   return fileEntity.file?.isNotValid ?? false
            //       ? fileEntity.file?.errorMessage
            //       : null;
            // },
          );
        }),
        // if (subCategoryId != 5)
        // else
        //   AddFileWidget(
        //     key: const ValueKey('file_field'),
        //     initialValue: currentFiles[2].docFile.v?.path,
        //     path: currentFiles[2].docFile?.path ?? 'اضف فيديو',
        //     addDocWidgetType: AddDocWidgetType.video,
        //     docFileStatus: currentFiles[2].docFileStatus,
        //     onChanged: (_) => onFileSelected(2, false),
        //     validator: (_) => currentFiles[2].file?.isNotValid ?? false
        //         ? currentFiles[2].file?.errorMessage
        //         : null,
        //   ),
        LocationPickerButton(loaded: state),
      ],
    );
  }
}
