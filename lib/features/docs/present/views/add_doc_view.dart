import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

import '../../../../core/all_imports.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../orders/present/bloc/orders_bloc.dart';
import '../../../orders/present/bloc/orders_event.dart';
import '../blocs/bloc/docs_bloc.dart';
import '../blocs/bloc/docs_event.dart';
import '../blocs/bloc/docs_state.dart';

class AddDocView extends StatefulWidget {
  const AddDocView({
    super.key,
    required this.orderId,
  });
  static const String routeName = "add-doc";
  final int orderId;
  @override
  State<AddDocView> createState() => _AddDocViewState();
}

class _AddDocViewState extends State<AddDocView> {
  final ImagePicker imagePicker = ImagePicker();
  Future<File?> selectFilesPath({
    required BuildContext context,
    required FileType fileType,
  }) async {
    final t = AppLocalizations.of(context)!;
    final XFile? picked = await showDialog<XFile>(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return AlertDialog(
          content: Text(
            t.select_files,
          ),
          actions: [
            IconsOutlineButton(
              onPressed: () async {
                final xFile = await pickMedia(
                  fileType: fileType,
                  source: ImageSource.camera,
                );
                Navigator.of(context).pop(
                  xFile,
                );
              },
              text: t.camera,
              iconData: CupertinoIcons.camera_fill,
            ),
            IconsOutlineButton(
              onPressed: () async {
                final xFile = await pickMedia(
                  fileType: fileType,
                  source: ImageSource.gallery,
                );
                Navigator.of(context).pop(xFile);
              },
              text: t.gallery,
              iconData: CupertinoIcons.photo_on_rectangle,
            ),
          ],
        );
      },
    );
    if (picked != null) {
      return File(
        picked.path,
      );
    }
    return null;
  }

  Future<XFile?> pickMedia({
    required FileType fileType,
    required ImageSource source,
  }) async {
    if (fileType == FileType.image) {
      return await imagePicker.pickImage(
        source: source,
      );
    } else if (fileType == FileType.video) {
      return await imagePicker.pickVideo(
        source: source,
      );
    }
    return null;
  }

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
  Widget build(
    context,
  ) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(title: t.add_order),
      body: BlocConsumer<DocsBloc, DocsState>(
        listener: (
          context,
          state,
        ) {
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
                  duration: const Duration(
                    seconds: 4,
                  ),
                ),
              );
              Future.delayed(
                const Duration(
                  milliseconds: 500,
                ),
                () {
                  Navigator.of(context).pop();
                },
              );
            },
            failure: (
              e,
            ) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    e.error ?? t.order_addition_failed,
                  ),
                  duration: const Duration(
                    seconds: 4,
                  ),
                ),
              );
            },
          );
        },
        builder: (
          context,
          state,
        ) {
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
              formzSubmissionStatus,
              uploadingProgress,
            ) {
              double? parsedProgress = double.tryParse(
                uploadingProgress ?? '',
              );
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextFormField(
                      initialValue: videoOne.value?.path ?? '',
                      maxLines: 2,
                      onChanged: (v) async {
                        context.read<DocsBloc>().add(
                              DocsEvent.videoOneChanged(
                                file: await selectFilesPath(
                                  context: context,
                                  fileType: FileType.video,
                                ),
                              ),
                            );
                      },
                      readOnly: true,
                      hintText: t.add_video,
                      suffixIcon: Icon(Icons.cloud_upload),
                      validator: (_) =>
                          videoOne.isNotValid ? videoOne.errorMessage : null,
                    ),
                    CustomTextFormField(
                      initialValue: videoTwo.value?.path,
                      maxLines: 2,
                      onChanged: (v) async {
                        context.read<DocsBloc>().add(
                              DocsEvent.videoTwoChanged(
                                file: await selectFilesPath(
                                  context: context,
                                  fileType: FileType.video,
                                ),
                              ),
                            );
                      },
                      readOnly: true,
                      hintText: t.add_video,
                      suffixIcon: Icon(
                        Icons.cloud_upload,
                      ),
                      validator: (_) =>
                          videoTwo.isNotValid ? videoTwo.errorMessage : null,
                    ),
                    CustomTextFormField(
                      initialValue: imageOne.value?.path,
                      onChanged: (v) async {
                        final file = await selectFilesPath(
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
                      maxLines: 2,
                      readOnly: true,
                      hintText: t.add_picure,
                      suffixIcon: Icon(
                        Icons.cloud_upload,
                      ),
                      validator: (_) =>
                          imageOne.isNotValid ? imageOne.errorMessage : null,
                    ),
                    CustomTextFormField(
                      initialValue: imageTwo.value?.path,
                      onChanged: (
                        v,
                      ) async {
                        context.read<DocsBloc>().add(
                              DocsEvent.imageTwoChanged(
                                file: await selectFilesPath(
                                  context: context,
                                  fileType: FileType.image,
                                ),
                              ),
                            );
                      },
                      maxLines: 2,
                      readOnly: true,
                      suffixIcon: Icon(
                        Icons.cloud_upload,
                      ),
                      validator: (_) =>
                          imageTwo.isNotValid ? imageTwo.errorMessage : null,
                    ),
                    CustomTextFormField(
                      initialValue: latitude.isValid
                          ? '${latitude.value ?? ''} , ${longitude.value ?? ''}'
                          : '',
                      maxLines: 2,
                      readOnly: true,
                      suffixIcon: Icon(
                        Icons.gps_fixed,
                      ),
                      hintText: t.location,
                      onChanged: (v) async {
                        final LatLng? result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const PickLocationView(),
                          ),
                        );
                        if (result != null) {
                          final lat = result.latitude.toString();
                          final lng = result.longitude.toString();
                          context.read<DocsBloc>().add(
                                DocsEvent.updateLocation(
                                  latitude: lat,
                                  longitude: lng,
                                ),
                              );
                        }
                      },
                    ),
                    ElevatedButton(
                      key: const Key('button'),
                      onPressed: formzSubmissionStatus.isSuccess
                          ? () {
                              context.read<DocsBloc>().add(
                                    DocsEvent.createDoc(),
                                  );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('سيستمر الرفع في الخلفية'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                              Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                if (Navigator.of(context).canPop()) {
                                  Navigator.of(context).pop();
                                }
                              });
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor: formzSubmissionStatus.isInitial
                            ? WidgetStateProperty.all(
                                Colors.grey,
                              )
                            : null,
                      ),
                      child: formzSubmissionStatus.isInProgress
                          ? const CustomCircularProgress()
                          : Text(
                              t.add_order,
                            ),
                    ),
                    if (formzSubmissionStatus.isInProgress)
                      Center(
                        child: Column(
                          children: [
                            LinearProgressIndicator(
                              value: parsedProgress,
                              color: Colors.green,
                            ),
                            Text(
                              uploadingProgress!,
                            )
                          ],
                        ),
                      )
                    else
                      SizedBox.shrink(),
                  ],
                ),
              );
            },
            orElse: () {
              return SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}

class PickLocationView extends StatefulWidget {
  const PickLocationView({
    super.key,
  });
  @override
  State<PickLocationView> createState() => _PickLocationViewState();
}

class _PickLocationViewState extends State<PickLocationView> {
  LatLng? selectedLatLng;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "اختر الموقع",
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(
            24.7136,
            46.6753,
          ),
          zoom: 10,
        ),
        onTap: (
          LatLng latLng,
        ) {
          setState(
            () {
              selectedLatLng = latLng;
            },
          );
        },
        markers: selectedLatLng != null
            ? {
                Marker(
                  markerId: const MarkerId(
                    "selected",
                  ),
                  position: selectedLatLng!,
                ),
              }
            : {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedLatLng != null) {
            Navigator.pop(
              context,
              selectedLatLng,
            );
          }
        },
        child: const Icon(
          Icons.check,
        ),
      ),
    );
  }
}
