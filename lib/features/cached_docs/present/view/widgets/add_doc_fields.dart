import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../data/datasources/local/drift/cached_docs_table.dart';
import '../../bloc/cached_doc_bloc.dart';
import 'add_file_widget.dart';
import 'file_picker_utils.dart';
import 'location_picker_button.dart';

class AddDocFieldWidget extends StatelessWidget {
  const AddDocFieldWidget({super.key, required this.state});
  final Loaded state;
  static const String routeName = 'DocWidget';
  @override
  Widget build(BuildContext context) {
    final FilePickerUtils filePicker = FilePickerUtils();
    final t = AppLocalizations.of(context);
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        AddFileWidget(
          initialValue: state.createCachedDoc.imageOne?.file?.value?.path,
          path: state.createCachedDoc.imageOne?.file?.value?.path,
          addDocWidgetType: AddDocWidgetType.image,
          docFileStatus:
              state.createCachedDoc.imageOne?.docFileStatus ??
              FileUploadStatus.init,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.image,
            );
            if (file != null) {
              getIt<CachedDocBloc>().add(
                CachedDocEvent.updateData(
                  loaded: state,
                  createCachedDoc: state.createCachedDoc.copyWith(
                    imageOne: state.createCachedDoc.imageOne?.copyWith(
                      file: FileFormzInput.dirty(file),
                    ),
                  ),
                ),
              );
            }
          },
          validator: (_) =>
              state.createCachedDoc.imageOne?.file?.isNotValid ?? false
              ? state.createCachedDoc.imageOne?.file?.errorMessage
              : null,
        ),
        AddFileWidget(
          initialValue: state.createCachedDoc.imageTwo?.file?.value?.path,
          path: t.add_picure,
          addDocWidgetType: AddDocWidgetType.image,
          docFileStatus:
              state.createCachedDoc.imageTwo?.docFileStatus ??
              FileUploadStatus.init,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.image,
            );
            if (file != null) {
              getIt<CachedDocBloc>().add(
                CachedDocEvent.updateData(
                  loaded: state,
                  createCachedDoc: state.createCachedDoc.copyWith(
                    imageTwo: state.createCachedDoc.imageTwo?.copyWith(
                      file: FileFormzInput.dirty(file),
                    ),
                  ),
                ),
              );
            }
          },
          validator: (_) =>
              state.createCachedDoc.imageTwo?.file?.isNotValid ?? false
              ? state.createCachedDoc.imageTwo?.file?.errorMessage
              : null,
        ),
        AddFileWidget(
          initialValue: state.createCachedDoc.videoOne?.file?.value?.path ?? '',
          path: t.add_video,
          addDocWidgetType: AddDocWidgetType.video,
          docFileStatus:
              state.createCachedDoc.videoOne?.docFileStatus ??
              FileUploadStatus.init,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.video,
            );
            if (file != null) {
              getIt<CachedDocBloc>().add(
                CachedDocEvent.updateData(
                  loaded: state,
                  createCachedDoc: state.createCachedDoc.copyWith(
                    videoOne: state.createCachedDoc.videoOne?.copyWith(
                      file: FileFormzInput.dirty(file),
                    ),
                  ),
                ),
              );
            }
          },
          validator: (_) =>
              state.createCachedDoc.videoOne?.file?.isNotValid ?? false
              ? state.createCachedDoc.videoOne?.file?.errorMessage
              : null,
        ),
        AddFileWidget(
          initialValue: state.createCachedDoc.videoTwo?.file?.value?.path,
          path: t.add_video,
          addDocWidgetType: AddDocWidgetType.video,
          docFileStatus:
              state.createCachedDoc.videoTwo?.docFileStatus ??
              FileUploadStatus.init,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.video,
            );
            if (file != null) {
              getIt<CachedDocBloc>().add(
                CachedDocEvent.updateData(
                  loaded: state,
                  createCachedDoc: state.createCachedDoc.copyWith(
                    videoTwo: state.createCachedDoc.videoTwo?.copyWith(
                      file: FileFormzInput.dirty(file),
                    ),
                  ),
                ),
              );
            }
          },
          validator: (_) =>
              state.createCachedDoc.videoTwo?.file?.isNotValid ?? false
              ? state.createCachedDoc.videoTwo?.file?.errorMessage
              : null,
        ),
        if (state.createCachedDoc.subCategory?.id != 4) ...[
          LocationPickerButton(loaded: state),
        ],
      ],
    );
  }
}
