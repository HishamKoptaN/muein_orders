import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../domain/entities/cached_doc_entity.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../bloc/cached_doc_bloc.dart';
import 'debug/debug_auto_fill_tools.dart';
import 'widgets/add_cached_doc_fields.dart';

class AddCachedDocView extends StatefulWidget {
  const AddCachedDocView({
    super.key,
    required this.cachedDoc,
    required this.subCategoryId,
  });
  static const String routeName = 'add-cached-doc';
  final CachedDocEntity cachedDoc;
  final int subCategoryId;
  @override
  State<AddCachedDocView> createState() => _AddCachedDocViewState();
}

class _AddCachedDocViewState extends State<AddCachedDocView> {
  final TextEditingController _coordsController = TextEditingController();
  bool _hasValidCoordsInClipboard = false;
  @override
  void initState() {
    super.initState();
    // _coordsController.text =
    //     '${_selectedPoint.latitude}, ${_selectedPoint.longitude}';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkClipboardForCoordinates();
    });
    getIt<CachedDocBloc>().add(
      CachedDocEvent.updateData(
        createCachedDoc: widget.cachedDoc.toCreateCachedDocEntity().copyWith(
          docId: .dirty(value: widget.cachedDoc.docId.toString()),
          files:
              widget.cachedDoc.files?.map((file) {
                return DocFileEntity(
                  file: file.path != null ? .dirty(File(file.path!)) : null,
                  docFile: file,
                  docFileStatus: file.status,
                );
              }).toList() ??
              [],
          location: widget.cachedDoc.location != null
              ? LocationEntity(
                  latitude: widget.cachedDoc.location!.latitude,
                  longitude: widget.cachedDoc.location!.longitude,
                  status: widget.cachedDoc.location!.status,
                )
              : null,
        ),
        subCategoryId: widget.subCategoryId,
      ),
    );
  }

  @override
  void dispose() {
    _coordsController.dispose();
    super.dispose();
  }

  Future<void> _checkClipboardForCoordinates() async {
    try {
      final clipboardData = await Clipboard.getData('text/plain');
      if (clipboardData?.text != null) {
        final hasValid = _parseCoordinates(clipboardData!.text!) != null;
        if (hasValid != _hasValidCoordsInClipboard) {
          setState(() {
            _hasValidCoordsInClipboard = hasValid;
          });
        }
      }
    } catch (_) {}
  }

  void _updateCoordsText() {
    // _coordsController.text =
    //     '${_selectedPoint.latitude}, ${_selectedPoint.longitude}';
  }

  Future<void> _pasteLocationFromClipboard() async {
    try {
      final String? clipboardData = await Clipboard.getData(
        'text/plain',
      ).then((data) => data?.text);

      if (clipboardData == null || clipboardData.isEmpty) {
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('الحافظة فارغة')));
        }
        return;
      }
      final LatLng? parsedLocation = _parseCoordinates(clipboardData);
      if (parsedLocation != null) {
        setState(() {
          // _selectedPoint = parsedLocation;
          _hasValidCoordsInClipboard = false;
        });
        _updateCoordsText();
        // _mapController.move(parsedLocation, 15.0);
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('تم لصق الموقع')));
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('تنسيق الموقع غير صحيح. المتوقع: 24.7136, 46.6753'),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('خطأ في القراءة من الحافظة: $e')),
        );
      }
    }
  }

  LatLng? _parseCoordinates(String text) {
    final cleaned = text.trim().replaceAll(RegExp(r'[\s]+'), ' ');
    final regex = RegExp(r'^(-?\d+\.?\d*)[,\s]+(-?\d+\.?\d*)$');
    final match = regex.firstMatch(cleaned);
    if (match != null) {
      final lat = double.tryParse(match.group(1)!);
      final lng = double.tryParse(match.group(2)!);
      if (lat != null && lng != null) {
        if (lat >= -90 && lat <= 90 && lng >= -180 && lng <= 180) {
          return LatLng(lat, lng);
        }
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'توثيق'),
      body: BlocConsumer<CachedDocBloc, CachedDocState>(
        bloc: getIt<CachedDocBloc>(),
        listener: (context, state) async {
          await state.whenOrNull(
            success: () {
              context.showSuccessSnackBar(
                title: 'نجاح',
                message: 'تم الحفظ و سيتم رفع بيانات التوثيق في الخلفية',
              );
            },
            failure: (e) {
              context.showErrorSnackBar(title: 'خطأ', message: e);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              return DebugAutoFillDoc(
                loadedState: state,
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: .spaceEvenly,
                      children: [
                        AddDocFieldsWidget(
                          state: state,
                          subCategoryId: widget.subCategoryId,
                        ),
                        SizedBox(height: 8.h),
                        CustomBtnWidget(
                          key: const Key('button'),
                          text: 'حفظ',
                          backgroundColor:
                              (state.createCachedDoc.hasChanged(
                                    original: widget.cachedDoc,
                                  ) &&
                                  state.formzSubmissionStatus.isSuccess)
                              ? Colors.green
                              : Colors.grey,
                          onPressed: () {
                            for (
                              int i = 0;
                              i < state.createCachedDoc.files.length;
                              i++
                            ) {
                              final file = state.createCachedDoc.files[i];
                              if (file.file?.isNotValid == true) {}
                            }
                            if (state.formzSubmissionStatus.isSuccess) {
                              getIt<CachedDocBloc>().add(
                                CachedDocEvent.cachedDoc(loaded: state),
                              );
                            } else {}
                          },
                          formzSubmissionStatus: state.formzSubmissionStatus,
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                ),
              );
            },
            loading: (_) {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
