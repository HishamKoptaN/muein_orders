import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../blocs/cached_doc/cached_doc_bloc.dart';
import 'debug_auto_fill_tools.dart';
import 'widgets/add_doc_fields.dart';
import 'widgets/submit_button.dart';

class AddDocView extends StatefulWidget {
  const AddDocView({
    super.key,
    required this.orderId,
  });
  static const String routeName = 'add-doc';
  final int orderId;
  @override
  State<AddDocView> createState() => _AddDocViewState();
}

class _AddDocViewState extends State<AddDocView> {
  final ImagePicker imagePicker = ImagePicker();
  @override
  void initState() {
    super.initState();
    context.read<CachedDocBloc>().add(
          CachedDocEvent.updateData(
            orderId: GenericFormzInput.dirty(widget.orderId),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(
        title: t.documentingTheRequest,
      ),
      body: DebugAutoFillDoc(
        child: BlocConsumer<CachedDocBloc, CachedDocState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(t.success),
                    duration: const Duration(seconds: 4),
                  ),
                );
                NavigationService.goBack(context);
              },
              failure: (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      'فشل في حفظ التوثيق',
                    ),
                    duration: Duration(seconds: 4),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (
                orderId,
                videoOne,
                videoTwo,
                imageOne,
                imageTwo,
                latitude,
                longitude,
                shippingCost,
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
                          latitude: latitude ?? const GenericFormzInput.pure(),
                          longitude:
                              longitude ?? const GenericFormzInput.pure(),
                          shippingCost: shippingCost,
                        ),
                        const SizedBox(height: 15),
                        SubmitButton(
                          formzSubmissionStatus: formzSubmissionStatus,
                          buttonText: t.add,
                          key: const Key('button'),
                          onPressed: () {
                            if (formzSubmissionStatus.isSuccess) {
                              context.read<CachedDocBloc>().add(
                                    const CachedDocEvent.cachedDoc(),
                                  );
                            }
                          },
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
