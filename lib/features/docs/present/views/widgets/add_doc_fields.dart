import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../l10n/app_localizations.dart';
import '../../blocs/bloc/docs_bloc.dart';
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
  });
  final FileFormzInput videoOne;
  final FileFormzInput videoTwo;
  final FileFormzInput imageOne;
  final FileFormzInput imageTwo;
  final GenericFormzInput latitude;
  final GenericFormzInput longitude;

  static const String routeName = 'DocWidget';
  @override
  Widget build(BuildContext context) {
    final FilePickerUtils filePicker = FilePickerUtils();

    final t = AppLocalizations.of(context);
    return Wrap(
      children: [
        AddFileWidget(
          initialValue: imageOne.value?.path,
          icon: Icons.add_photo_alternate_outlined,
          text: t.add_picure,
          addDocWidgetType: AddDocWidgetType.image,
          onChanged: (v) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.image,
            );
            if (file != null) {
              context.read<DocsBloc>().add(
                    DocsEvent.imageOneChanged(
                      file: file,
                    ),
                  );
            }
            // context.read<DocsBloc>().add(
            //       DocsEvent.imageOneChanged(
            //         file: await selectFilesPath(
            //           context: context,
            //           fileType: FileType.image,
            //         ),
            //       ),
            //     );
          },
          validator: (_) => imageOne.isNotValid ? imageOne.errorMessage : null,
        ),
        AddFileWidget(
          initialValue: imageTwo.value?.path,
          icon: Icons.add_photo_alternate_outlined,
          text: t.add_picure,
          addDocWidgetType: AddDocWidgetType.image,
          onChanged: (
            v,
          ) async {
            context.read<DocsBloc>().add(
                  DocsEvent.imageTwoChanged(
                    file: await filePicker.selectFilesPath(
                      context: context,
                      fileType: FileType.image,
                    ),
                  ),
                );
          },
          validator: (_) => imageTwo.isNotValid ? imageTwo.errorMessage : null,
        ),
        AddFileWidget(
          initialValue: videoOne.value?.path ?? '',
          iconImage: 'assets/icons/video_player.svg',
          text: t.add_video,
          addDocWidgetType: AddDocWidgetType.video,
          onChanged: (v) async {
            context.read<DocsBloc>().add(
                  DocsEvent.videoOneChanged(
                    file: await filePicker.selectFilesPath(
                      context: context,
                      fileType: FileType.video,
                    ),
                  ),
                );
          },
          validator: (_) => videoOne.isNotValid ? videoOne.errorMessage : null,
        ),
        AddFileWidget(
          initialValue: videoTwo.value?.path,
          iconImage: 'assets/icons/video_player.svg',
          text: t.add_video,
          addDocWidgetType: AddDocWidgetType.video,
          onChanged: (v) async {
            context.read<DocsBloc>().add(
                  DocsEvent.videoTwoChanged(
                    file: await filePicker.selectFilesPath(
                      context: context,
                      fileType: FileType.video,
                    ),
                  ),
                );
          },
          validator: (_) => videoTwo.isNotValid ? videoTwo.errorMessage : null,
        ),
        const LocationPickerButton(),
      ],
    );
  }
}
