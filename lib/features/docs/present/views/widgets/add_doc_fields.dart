import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../../blocs/cached_doc/cached_doc_bloc.dart';
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
    required this.package,
  });
  final FileFormzInput videoOne;
  final FileFormzInput videoTwo;
  final FileFormzInput imageOne;
  final FileFormzInput imageTwo;
  final GenericFormzInput<double>? latitude;
  final GenericFormzInput<double>? longitude;
  final GenericFormzInput<double>? shippingCost;
  final PackageEntity package;

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
                    CachedDocEvent.updateData(
                      imageOne: FileFormzInput.dirty(file),
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
              context.read<CachedDocBloc>().add(
                    CachedDocEvent.updateData(
                      imageTwo: FileFormzInput.dirty(file),
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
              context.read<CachedDocBloc>().add(
                    CachedDocEvent.updateData(
                      videoOne: FileFormzInput.dirty(file),
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
              context.read<CachedDocBloc>().add(
                    CachedDocEvent.updateData(
                      videoTwo: FileFormzInput.dirty(file),
                    ),
                  );
            }
          },
          validator: (_) => videoTwo.isNotValid ? videoTwo.errorMessage : null,
        ),
        // إخفاء حقل الموقع للحزم المفردة (نوع 4)
        if (package.type?.id != 4) ...[
          LocationPickerButton(
            latitude: latitude,
            longitude: longitude,
            package: package,
          ),
        ],
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.grey.withOpacity(0.2),
          ),
          child: CustomTextFormField(
            initialValue: shippingCost?.value?.toString(),
            width: double.infinity,
            keyboardType: TextInputType.number,
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
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
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
              context.read<CachedDocBloc>().add(
                    CachedDocEvent.updateData(
                      shippingCost: GenericFormzInput.dirty(double.parse(v)),
                      package: package,
                    ),
                  );
            },
            validator: (_) =>
                shippingCost?.isNotValid == true ? shippingCost?.errorMessage : null,
          ),
        ),
      ],
    );
  }
}
