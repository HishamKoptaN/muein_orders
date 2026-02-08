import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../l10n/app_localizations.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../../bloc/cached_doc_bloc.dart';
import 'add_file_widget.dart';
import 'file_picker_utils.dart';
import 'location_picker_button.dart';

class AddDocWidget extends StatelessWidget {
  const AddDocWidget({
    super.key,
    required this.imageOne,
    required this.imageTwo,
    required this.videoOne,
    required this.videoTwo,
    required this.latitude,
    required this.longitude,
    required this.package,
  });
  final FileFormzInput videoOne;
  final FileFormzInput videoTwo;
  final FileFormzInput imageOne;
  final FileFormzInput imageTwo;
  final GenericFormzInput<double>? latitude;
  final GenericFormzInput<double>? longitude;
  final ProductTypeEntity package;

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
          initialValue: imageOne.value?.path,
          text: t.add_picure,
          addDocWidgetType: AddDocWidgetType.image,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.image,
            );
            if (file != null) {
              context.read<CachedDocBloc>().add(
                CachedDocEvent.updateData(imageOne: FileFormzInput.dirty(file)),
              );
            }
          },
          validator: (_) => imageOne.isNotValid ? imageOne.errorMessage : null,
        ),
        AddFileWidget(
          initialValue: imageTwo.value?.path,
          text: t.add_picure,
          addDocWidgetType: AddDocWidgetType.image,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.image,
            );
            if (file != null) {
              context.read<CachedDocBloc>().add(
                CachedDocEvent.updateData(imageTwo: FileFormzInput.dirty(file)),
              );
            }
          },
          validator: (_) => imageTwo.isNotValid ? imageTwo.errorMessage : null,
        ),
        AddFileWidget(
          initialValue: videoOne.value?.path ?? '',
          text: t.add_video,
          addDocWidgetType: AddDocWidgetType.video,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.video,
            );
            if (file != null) {
              context.read<CachedDocBloc>().add(
                CachedDocEvent.updateData(videoOne: FileFormzInput.dirty(file)),
              );
            }
          },
          validator: (_) => videoOne.isNotValid ? videoOne.errorMessage : null,
        ),
        AddFileWidget(
          initialValue: videoTwo.value?.path,
          text: t.add_video,
          addDocWidgetType: AddDocWidgetType.video,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.video,
            );
            if (file != null) {
              context.read<CachedDocBloc>().add(
                CachedDocEvent.updateData(videoTwo: FileFormzInput.dirty(file)),
              );
            }
          },
          validator: (_) => videoTwo.isNotValid ? videoTwo.errorMessage : null,
        ),
        if (package.id != 4) ...[
          LocationPickerButton(
            latitude: latitude,
            longitude: longitude,
            package: package,
          ),
        ],
      ],
    );
  }
}
