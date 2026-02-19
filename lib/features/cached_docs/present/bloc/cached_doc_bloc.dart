import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/utils/app_file_manager.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../../domain/usecases/cached_docs_use_cases.dart';

part 'cached_doc_bloc.freezed.dart';
part 'cached_doc_event.dart';
part 'cached_doc_state.dart';

@singleton
class CachedDocBloc extends Bloc<CachedDocEvent, CachedDocState> {
  final CachedDocsUseCases _docsUseCase;
  final AppFileManager _fileManager;
  CachedDocBloc(this._docsUseCase, this._fileManager)
    : super(const CachedDocState.loading()) {
    on<CachedDocEvent>((event, emit) async {
      await event.when(
        initialize: (docId) async {
          debugPrint('=== DEBUG: Bloc initialize Event ===');
          debugPrint('docId: $docId');

          final res = await _docsUseCase.getCachedDoc(docId: docId);
          await res.when(
            success: (cachedDoc) async {
              debugPrint('Found cached doc: ${cachedDoc?.docId}');
              if (cachedDoc != null) {
                debugPrint('Files count: ${cachedDoc.files?.length ?? 0}');
                emitCustomLoaded(
                  emit: emit,
                  loaded: null,
                  createCachedDoc: cachedDoc.toCreateCachedDocEntity(),
                );
              } else {
                debugPrint('No cached doc found, creating empty');
                emitCustomLoaded(
                  emit: emit,
                  loaded: null,
                  createCachedDoc: const CreateCachedDocEntity(),
                );
              }
            },
            failure: (apiErrorModel) async {
              debugPrint('Failed to get cached doc: ${apiErrorModel.error}');
              emit(CachedDocState.failure(error: apiErrorModel.error ?? ''));
              emitCustomLoaded(emit: emit, loaded: null);
            },
          );
        },
        updateData: (loaded, createCachedDoc) async {
          debugPrint('=== DEBUG: Bloc updateData Event ===');
          debugPrint('Files count: ${createCachedDoc.files.length}');

          for (int i = 0; i < createCachedDoc.files.length; i++) {
            final file = createCachedDoc.files[i];
            debugPrint(
              'Bloc File $i: path=${file.docFile?.path}, status=${file.docFileStatus}, hasFile=${file.file != null}',
            );
          }

          emitCustomLoaded(
            emit: emit,
            loaded: loaded,
            createCachedDoc: createCachedDoc,
          );
        },
        cachedDoc: (loaded) async {
          debugPrint('=== DEBUG: Bloc cachedDoc Event (Save) ===');
          debugPrint('Files to save: ${loaded.createCachedDoc.files.length}');

          for (int i = 0; i < loaded.createCachedDoc.files.length; i++) {
            final file = loaded.createCachedDoc.files[i];
            debugPrint(
              'Save File $i: path=${file.docFile?.path}, status=${file.docFileStatus}, hasFile=${file.file != null}',
            );
          }

          try {
            emitCustomLoaded(
              emit: emit,
              loaded: loaded,
              formzSubmissionStatus: FormzSubmissionStatus.inProgress,
            );
            final res = await _docsUseCase.cachedDoc(
              doc: loaded.createCachedDoc,
            );
            debugPrint('Save result type: ${res.runtimeType}');
            await res.when(
              success: (cachedDoc) async {
                debugPrint('Save successful!');
                emit(const CachedDocState.success());
                emitCustomLoaded(emit: emit, loaded: loaded);
              },
              failure: (apiErrorModel) async {
                debugPrint('Save failed: ${apiErrorModel.error}');
                emit(CachedDocState.failure(error: apiErrorModel.error ?? ''));
                emitCustomLoaded(emit: emit, loaded: null);
              },
            );
          } catch (e) {
            debugPrint('Save exception: $e');
            emitCustomFaliure(
              emit: emit,
              error: 'حدث خطأ غير متوقع: ${e.toString()}',
            );
          }
        },
      );
    });
  }
  emitCustomFaliure({
    required Emitter<CachedDocState> emit,
    required String error,
  }) {
    emit(CachedDocState.failure(error: error));
  }

  void emitCustomLoaded({
    required Emitter<CachedDocState> emit,
    required Loaded? loaded,
    CreateCachedDocEntity? createCachedDoc,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    var currentEntity =
        createCachedDoc ??
        loaded?.createCachedDoc ??
        const CreateCachedDocEntity();
    if (currentEntity.files.isEmpty) {
      currentEntity = currentEntity.copyWith(
        files: List.generate(4, (_) => const DocFileEntity()),
      );
    }
    final bool isValid = Formz.validate([
      currentEntity.docId ?? const GenericFormzInput.pure(),
      ...currentEntity.files.map((f) => f.file ?? const FileFormzInput.pure()),
    ]);

    debugPrint('=== DEBUG: Form Validation ===');
    debugPrint('DocId valid: ${currentEntity.docId?.isValid ?? false}');
    for (int i = 0; i < currentEntity.files.length; i++) {
      final file = currentEntity.files[i];
      debugPrint('File $i valid: ${file.file?.isValid ?? false}');
      if (file.file?.isNotValid == true) {
        debugPrint('File $i error: ${file.file?.errorMessage}');
      }
    }
    debugPrint('Overall form valid: $isValid');

    emit(
      CachedDocState.loaded(
        createCachedDoc: currentEntity,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (isValid
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }
}
