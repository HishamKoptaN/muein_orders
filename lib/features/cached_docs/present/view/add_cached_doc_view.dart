import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../bloc/cached_doc_bloc.dart';
import 'widgets/add_doc_fields.dart';
import 'widgets/debug_auto_fill_tools.dart';

class AddCachedDocView extends StatefulWidget {
  const AddCachedDocView({
    super.key,
    required this.orderId,
    required this.package,
  });
  static const String routeName = 'add-cached-doc';
  final int orderId;
  final ProductTypeEntity package;

  @override
  State<AddCachedDocView> createState() => _AddCachedDocViewState();
}

class _AddCachedDocViewState extends State<AddCachedDocView> {
  final ImagePicker imagePicker = ImagePicker();
  @override
  void initState() {
    super.initState();
    context.read<CachedDocBloc>().add(
      CachedDocEvent.updateData(
        orderId: GenericFormzInput.dirty(widget.orderId),
        package: widget.package,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(title: t.documentingTheRequest),
      body: DebugAutoFillDoc(
        child: BlocConsumer<CachedDocBloc, CachedDocState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                context.showSuccessSnackBar(
                  title: t.success,
                  message: t.success,
                );
              },
              failure: (e) {
                context.showErrorSnackBar(title: t.error, message: e);
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded:
                  (
                    orderId,
                    videoOne,
                    videoTwo,
                    imageOne,
                    imageTwo,
                    latitude,
                    longitude,
                    formzSubmissionStatus,
                    localDocProgress,
                  ) {
                    return SingleChildScrollView(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AddDocWidget(
                              imageOne: imageOne ?? const FileFormzInput.pure(),
                              imageTwo: imageTwo ?? const FileFormzInput.pure(),
                              videoOne: videoOne ?? const FileFormzInput.pure(),
                              videoTwo: videoTwo ?? const FileFormzInput.pure(),
                              latitude:
                                  latitude ?? const GenericFormzInput.pure(),
                              longitude:
                                  longitude ?? const GenericFormzInput.pure(),
                              package: widget.package,
                            ),
                            const SizedBox(height: 15),
                            CustomBtnWidget(
                              key: const Key('button'),
                              text: t.add,
                              onPressed: () {
                                if (formzSubmissionStatus.isSuccess) {
                                  context.read<CachedDocBloc>().add(
                                    const CachedDocEvent.cachedDoc(),
                                  );
                                }
                              },
                              formzSubmissionStatus: formzSubmissionStatus,
                            ),
                            const SizedBox(height: 80),
                          ],
                        ),
                      ),
                    );
                  },
              loading: () => const Center(child: CircularProgressIndicator()),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
