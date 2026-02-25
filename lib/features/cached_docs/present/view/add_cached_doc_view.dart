import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
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
  @override
  void initState() {
    super.initState();
    getIt<CachedDocBloc>().add(
      CachedDocEvent.updateData(
        createCachedDoc: widget.cachedDoc.toCreateCachedDocEntity().copyWith(
          docId: GenericFormzInput.dirty(widget.cachedDoc.docId),
          files:
              widget.cachedDoc.files
                  ?.map(
                    (file) => DocFileEntity(
                      file: file.path != null
                          ? FileFormzInput.dirty(File(file.path!))
                          : null,
                      docFile: file,
                      docFileStatus: file.status,
                    ),
                  )
                  .toList() ??
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
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'توثيق'),
      body: BlocConsumer<CachedDocBloc, CachedDocState>(
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AddDocFieldsWidget(
                          state: state,
                          subCategoryId: widget.subCategoryId,
                        ),
                        const SizedBox(height: 15),
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
            loading: (_) => const Center(child: CircularProgressIndicator()),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
