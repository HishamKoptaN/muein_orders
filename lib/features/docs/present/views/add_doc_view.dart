import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import '../../../../core/all_imports.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../orders/present/bloc/orders_bloc.dart';
import '../../../orders/present/bloc/orders_event.dart';
import '../../domain/entities/add_doc_req_entity.dart';
import '../bloc/docs_bloc.dart';
import '../bloc/docs_event.dart';
import '../bloc/docs_state.dart';
import '../../../../core/widgets/text_field.dart';
import 'package:location/location.dart';

class AddDocView extends StatefulWidget {
  const AddDocView({super.key, required this.orderId});
  final int orderId;
  @override
  State<AddDocView> createState() => _AddDocViewState();
}

class _AddDocViewState extends State<AddDocView> {
  final ImagePicker imagePicker = ImagePicker();
  XFile? videoOne;
  XFile? videoTwo;
  XFile? imageOne;
  XFile? imageTwo;
  final TextEditingController videOneController = TextEditingController();
  final TextEditingController videoTwoController = TextEditingController();
  final TextEditingController imageOneController = TextEditingController();
  final TextEditingController imageTwoController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

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
              color: AppColors.greenColor,
              textStyle: const TextStyle(
                color: Colors.white,
              ),
              iconColor: Colors.white,
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
              color: AppColors.greenColor,
              textStyle: const TextStyle(
                color: Colors.white,
              ),
              iconColor: Colors.white,
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
          DocsEvent.updateData(
              addDocReqEntity: AddDocReqEntity(orderId: widget.orderId)),
        );
  }

  @override
  Widget build(
    context,
  ) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          t.add_order,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocConsumer<DocsBloc, DocsState>(
        listener: (
          context,
          state,
        ) {
          state.whenOrNull(
            success: () {
              context.read<OrdersBloc>().add(
                  OrdersEvent.updateIsDistributionPhotographed(
                      orderId: widget.orderId));
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
              Future.delayed(const Duration(milliseconds: 500), () {
                Navigator.of(context).pop();
              });
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
                  duration: const Duration(seconds: 4),
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
              orders,
              hasMore,
              addDocReqEntity,
              uploadingProgress,
            ) {
              double? parsedProgress = double.tryParse(
                uploadingProgress ?? '',
              );
              videOneController.text = addDocReqEntity?.videoOne?.path ?? '';
              videoTwoController.text = addDocReqEntity?.videoTwo?.path ?? '';
              imageOneController.text = addDocReqEntity?.imageOne?.path ?? '';
              imageTwoController.text = addDocReqEntity?.imageTwo?.path ?? '';
              locationController.text = addDocReqEntity?.imageTwo?.path ?? '';
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextField(
                      controller: videOneController,
                      maxLines: 2,
                      onTap: () async {
                        context.read<DocsBloc>().add(
                              DocsEvent.updateData(
                                addDocReqEntity: addDocReqEntity!.copyWith(
                                  videoOne: await selectFilesPath(
                                    context: context,
                                    fileType: FileType.video,
                                  ),
                                ),
                              ),
                            );
                      },
                      readOnly: true,
                      labelText: t.add_video,
                      hint: t.add_video,
                      suffixIcon: Icons.cloud_upload,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (
                        v,
                      ) {
                        if (v == null || v.trim().isEmpty) {
                          return 'مطلوب';
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      controller: videoTwoController,
                      maxLines: 2,
                      onTap: () async {
                        context.read<DocsBloc>().add(
                              DocsEvent.updateData(
                                addDocReqEntity: addDocReqEntity!.copyWith(
                                  videoTwo: await selectFilesPath(
                                    context: context,
                                    fileType: FileType.video,
                                  ),
                                ),
                              ),
                            );
                      },
                      readOnly: true,
                      labelText: t.add_video,
                      hint: t.add_video,
                      suffixIcon: Icons.cloud_upload,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (
                        v,
                      ) {
                        if (v == null || v.trim().isEmpty) {
                          return 'مطلوب';
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      controller: imageOneController,
                      onTap: () async {
                        context.read<DocsBloc>().add(
                              DocsEvent.updateData(
                                addDocReqEntity: addDocReqEntity!.copyWith(
                                  imageOne: await selectFilesPath(
                                    context: context,
                                    fileType: FileType.image,
                                  ),
                                ),
                              ),
                            );
                      },
                      maxLines: 2,
                      readOnly: true,
                      suffixIcon: Icons.cloud_upload,
                      labelText: t.add_picure,
                      hint: t.add_picure,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (
                        v,
                      ) {
                        if (v == null || v.trim().isEmpty) {
                          return 'مطلوب';
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      controller: imageTwoController,
                      onTap: () async {
                        context.read<DocsBloc>().add(
                              DocsEvent.updateData(
                                addDocReqEntity: addDocReqEntity!.copyWith(
                                  imageTwo: await selectFilesPath(
                                    context: context,
                                    fileType: FileType.image,
                                  ),
                                ),
                              ),
                            );
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (
                        v,
                      ) {
                        if (v == null || v.trim().isEmpty) {
                          return 'مطلوب';
                        }
                        return null;
                      },
                      maxLines: 2,
                      readOnly: true,
                      suffixIcon: Icons.cloud_upload,
                      labelText: t.add_picure,
                      hint: t.add_picure,
                    ),
                    CustomTextField(
                      controller: locationController,
                      maxLines: 2,
                      readOnly: true,
                      suffixIcon: Icons.gps_fixed,
                      labelText: t.location,
                      hint: t.location,
                      onTap: () async {
                        final LatLng? result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PickLocationView()),
                        );
                        if (result != null) {
                          final lat = result.latitude.toString();
                          final lng = result.longitude.toString();
                          locationController.text = "$lat, $lng";
                          context.read<DocsBloc>().add(
                                DocsEvent.updateData(
                                  addDocReqEntity: addDocReqEntity!.copyWith(
                                    latitude: lat,
                                    longitude: lng,
                                  ),
                                ),
                              );
                        }
                      },
                    ),
                    GestureDetector(
                      onTap: () async {
                        context.read<DocsBloc>().add(
                              DocsEvent.createDoc(),
                            );
                      },
                      child: Container(
                        height: 50.h,
                        width: 200.w,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Center(
                          child: uploadingProgress == null
                              ? Text(
                                  t.add_order,
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ),
                    if (uploadingProgress != null)
                      Center(
                        child: Column(
                          children: [
                            LinearProgressIndicator(
                              value: parsedProgress,
                              color: Colors.green,
                            ),
                            Text(
                              uploadingProgress,
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
  const PickLocationView({super.key});

  @override
  State<PickLocationView> createState() => _PickLocationViewState();
}

class _PickLocationViewState extends State<PickLocationView> {
  LatLng? selectedLatLng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("اختر الموقع")),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(24.7136, 46.6753), // الرياض كمثال
          zoom: 10,
        ),
        onTap: (LatLng latLng) {
          setState(() {
            selectedLatLng = latLng;
          });
        },
        markers: selectedLatLng != null
            ? {
                Marker(
                  markerId: const MarkerId("selected"),
                  position: selectedLatLng!,
                ),
              }
            : {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedLatLng != null) {
            Navigator.pop(context, selectedLatLng);
          }
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
