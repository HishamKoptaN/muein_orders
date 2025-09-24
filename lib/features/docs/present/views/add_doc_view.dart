import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../orders/present/bloc/orders_bloc.dart';
import '../blocs/bloc/docs_bloc.dart';
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
    context.read<DocsBloc>().add(
          DocsEvent.orderIdChanged(
            orderId: widget.orderId,
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
        child: BlocConsumer<DocsBloc, DocsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                context.read<OrdersBloc>().add(
                      OrdersEvent.updateIsDistributionPhotographed(
                        orderId: widget.orderId,
                      ),
                    );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(
                      t.order_added_successfully,
                    ),
                    duration: const Duration(seconds: 4),
                  ),
                );
                Future.delayed(
                  const Duration(milliseconds: 500),
                  () {
                    Navigator.of(context).pop();
                  },
                );
              },
              failure: (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      e.error ?? t.order_addition_failed,
                    ),
                    duration: const Duration(seconds: 4),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (
                docs,
                hasMore,
                orderId,
                videoOne,
                videoTwo,
                imageOne,
                imageTwo,
                latitude,
                longitude,
                shippingCost,
                formzSubmissionStatus,
                uploadingProgress,
              ) {
                final double? parsedProgress = double.tryParse(
                  uploadingProgress ?? '',
                );
                return SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AddDocWidget(
                          imageOne: imageOne,
                          imageTwo: imageTwo,
                          videoOne: videoOne,
                          videoTwo: videoTwo,
                          latitude: latitude,
                          longitude: longitude,
                          shippingCost: shippingCost,
                        ),
                        const SizedBox(height: 15),
                        SubmitButton(
                          formzSubmissionStatus: formzSubmissionStatus,
                          buttonText: t.add,
                          key: const Key('button'),
                          onPressed: () {
                            if (formzSubmissionStatus.isSuccess) {
                              context.read<DocsBloc>().add(
                                    const DocsEvent.createDoc(),
                                  );
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(
                              //     content: Text('سيستمر الرفع في الخلفية'),
                              //     duration: Duration(seconds: 2),
                              //   ),
                              // );
                              // Future.delayed(const Duration(milliseconds: 300),
                              //     () {
                              //   if (Navigator.of(context).canPop()) {
                              //     Navigator.of(context).pop();
                              //   }
                              // },
                              // );
                            }
                          },
                        ),
                        if (formzSubmissionStatus.isInProgress)
                          Center(
                            child: Column(
                              children: [
                                LinearProgressIndicator(
                                  value: parsedProgress,
                                  color: Colors.green,
                                ),
                                Text(uploadingProgress ?? ''),
                              ],
                            ),
                          )
                        else
                          const SizedBox.shrink(),
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
