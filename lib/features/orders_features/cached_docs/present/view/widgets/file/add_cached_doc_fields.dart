import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../domain/entities/create_cached_doc_entity.dart';
import '../../../bloc/cached_doc/cached_doc_bloc.dart';
import 'add_file_widget.dart';
import 'file_picker_utils.dart';
import '../location/location_picker_button.dart';

class AddDocFieldsWidget extends StatelessWidget {
  const AddDocFieldsWidget({super.key, required this.createCachedDoc});
  final CreateCachedDocEntity createCachedDoc;
  @override
  Widget build(BuildContext context) {
    final FilePickerUtils filePicker = FilePickerUtils();

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        ...createCachedDoc.files.asMap().entries.map((entry) {
          final docMedia = entry.value;
          return AddFileWidget(
            key: ValueKey('file_field_$entry.key'),
            updateDocMedia: docMedia,
            onChanged: () async {
              final file = await filePicker.pickAndPop(
                context: context,
                fileType: docMedia.docMediaType == .image ? .image : .video,
                source: .gallery,
              );
              if (file != null) {
                final updatedList = createCachedDoc.files.map((e) {
                  if (e.id == docMedia.id) {
                    return e.copyWith(
                      localFilePath: GenericFormInput.dirty(value: file.path),
                      isEdited: true,
                    );
                  }
                  return e;
                }).toList();
                getIt<CachedDocBloc>().add(
                  CachedDocEvent.updateData(
                    createCachedDoc: createCachedDoc.copyWith(
                      files: updatedList,
                    ),
                  ),
                );
              }
            },
          );
        }),
        LocationPickerButton(createCachedDoc: createCachedDoc),
      ],
    );
  }
}
