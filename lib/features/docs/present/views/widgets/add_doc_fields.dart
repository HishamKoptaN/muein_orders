import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
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
    required this.shippingCost,
  });
  final FileFormzInput videoOne;
  final FileFormzInput videoTwo;
  final FileFormzInput imageOne;
  final FileFormzInput imageTwo;
  final GenericFormzInput latitude;
  final GenericFormzInput longitude;
  final GenericFormzInput shippingCost;

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
              context.read<DocsBloc>().add(
                    DocsEvent.imageOneChanged(
                      file: file,
                    ),
                  );
            }
          },
          validator: (_) => imageOne.isNotValid ? imageOne.errorMessage : null,
        ),
        AddFileWidget(
          initialValue: imageTwo.value?.path,
          text: t.add_picure,
          addDocWidgetType: AddDocWidgetType.image,
          onChanged: (
            v,
          ) async {
            final file = await filePicker.selectFilesPath(
              context: context,
              fileType: FileType.image,
            );
            if (file != null) {
              context.read<DocsBloc>().add(
                    DocsEvent.imageTwoChanged(
                      file: file,
                    ),
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
              context.read<DocsBloc>().add(
                    DocsEvent.videoOneChanged(
                      file: file,
                    ),
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
              context.read<DocsBloc>().add(
                    DocsEvent.videoTwoChanged(
                      file: file,
                    ),
                  );
            }
          },
          validator: (_) => videoTwo.isNotValid ? videoTwo.errorMessage : null,
        ),
        LocationPickerButton(
          latitude: latitude.value,
          longitude: longitude.value,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.grey.withOpacity(0.2),
          ),
          child: CustomTextFormField(
            initialValue: shippingCost.value,
            width: double.infinity,
            keyboardType: TextInputType.number,
            labelText: t.expenses,
            hintText: t.expenses,
            decoration: InputDecoration(
              labelText: t.expenses,
              hintText: t.expenses,
              labelStyle: const TextStyle(
                fontFamily: 'Almarai',
                fontSize: 16,
                color: Color(0xFFBABABA),
              ),
              hintStyle: const TextStyle(
                fontFamily: 'Almarai',
                fontSize: 16,
                color: Color(0xFFBABABA),
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.2),
            ),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black,
                  fontFamily: 'Almarai',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (v) {
              context.read<DocsBloc>().add(
                    DocsEvent.shippingCostChanged(
                      value: v,
                    ),
                  );
            },
            validator: (_) =>
                shippingCost.isNotValid ? shippingCost.errorMessage : null,
          ),
        ),
      ],
    );
  }
}
