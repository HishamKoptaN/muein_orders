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
import '../../../../l10n/app_localizations.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../../domain/entities/cached_doc_entity.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../bloc/cached_doc_bloc.dart';
import 'debug/debug_auto_fill_tools.dart';
import 'widgets/add_cached_doc_fields.dart';

class AddCachedDocView extends StatefulWidget {
  const AddCachedDocView({
    super.key,
    required this.docId,
    this.cachedDoc,
    required this.subCategory,
  });
  static const String routeName = 'add-cached-doc';
  final int docId;
  final CachedDocEntity? cachedDoc;
  final SubCategoryEntity subCategory;
  @override
  State<AddCachedDocView> createState() => _AddCachedDocViewState();
}

class _AddCachedDocViewState extends State<AddCachedDocView> {
  @override
  void initState() {
    super.initState();

    debugPrint('=== DEBUG: AddCachedDocView initState ===');
    debugPrint('widget.docId: ${widget.docId}');
    debugPrint('widget.cachedDoc: ${widget.cachedDoc}');

    if (widget.cachedDoc != null) {
      // إذا كان هناك توثيق محفوظ مسبقاً، استخدمه مباشرة
      debugPrint('Using existing cached doc data');
      getIt<CachedDocBloc>().add(
        CachedDocEvent.updateData(
          createCachedDoc: widget.cachedDoc!.toCreateCachedDocEntity().copyWith(
            docId: GenericFormzInput.dirty(widget.docId),
            // احتفظ بالملفات الأصلية كما هي، لا تقم بتحديثها
            files:
                widget.cachedDoc!.files
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
          ),
        ),
      );
    } else {
      // إذا لم يكن هناك توثيق محفوظ، حاول جلبه من قاعدة البيانات
      debugPrint('Fetching cached doc from database');
      getIt<CachedDocBloc>().add(
        CachedDocEvent.initialize(docId: widget.docId),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(title: t.documentingTheRequest),
      body: BlocConsumer<CachedDocBloc, CachedDocState>(
        listener: (context, state) async {
          await state.whenOrNull(
            success: () {
              context.showSuccessSnackBar(
                title: t.success,
                message: 'تم الحفظ و سيتم رفع بيانات التوثيق في الخلفية',
              );
            },
            failure: (e) {
              context.showErrorSnackBar(title: t.error, message: e);
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
                        AddDocFieldsWidget(state: state),
                        const SizedBox(height: 15),
                        CustomBtnWidget(
                          key: const Key('button'),
                          text: t.save,
                          backgroundColor:
                              state.createCachedDoc.hasChanged(
                                original: widget.cachedDoc,
                              )
                              ? Colors.green
                              : Colors.grey,
                          onPressed: () {
                            debugPrint('=== DEBUG: Save Button Pressed ===');
                            debugPrint(
                              'FormzSubmissionStatus: ${state.formzSubmissionStatus}',
                            );
                            debugPrint(
                              'IsSuccess: ${state.formzSubmissionStatus.isSuccess}',
                            );

                            // طباعة تفاصيل الملفات الحالية
                            for (
                              int i = 0;
                              i < state.createCachedDoc.files.length;
                              i++
                            ) {
                              final file = state.createCachedDoc.files[i];
                              debugPrint(
                                'File $i: path=${file.docFile?.path}, status=${file.docFileStatus}, isValid=${file.file?.isValid}',
                              );
                              if (file.file?.isNotValid == true) {
                                debugPrint(
                                  'File $i error: ${file.file?.errorMessage}',
                                );
                              }
                            }

                            if (state.formzSubmissionStatus.isSuccess) {
                              debugPrint(
                                'Form is valid, proceeding with save...',
                              );
                              getIt<CachedDocBloc>().add(
                                CachedDocEvent.cachedDoc(loaded: state),
                              );
                            } else {
                              debugPrint('Form validation failed!');
                            }
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
