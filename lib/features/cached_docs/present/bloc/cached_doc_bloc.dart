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
          final res = await _docsUseCase.getCachedDoc(docId: docId);
          await res.when(
            success: (cachedDoc) async {
              if (cachedDoc != null) {
                emitCustomLoaded(
                  emit: emit,
                  loaded: null,
                  createCachedDoc: cachedDoc.toCreateCachedDocEntity(),
                );
              } else {
                emitCustomLoaded(
                  emit: emit,
                  loaded: null,
                  createCachedDoc: const CreateCachedDocEntity(),
                );
              }
            },
            failure: (apiErrorModel) async {
              emit(CachedDocState.failure(error: apiErrorModel.error ?? ''));
              emitCustomLoaded(emit: emit, loaded: null);
            },
          );
        },
        updateData: (loaded, createCachedDoc, subCategoryId) async {
          emitCustomLoaded(
            emit: emit,
            loaded: loaded,
            createCachedDoc: createCachedDoc,
            subCategoryId: subCategoryId,
          );
        },
        cachedDoc: (loaded) async {
          try {
            emitCustomLoaded(
              emit: emit,
              loaded: loaded,
              formzSubmissionStatus: FormzSubmissionStatus.inProgress,
            );
            final res = await _docsUseCase.cachedDoc(
              doc: loaded.createCachedDoc,
            );
            await res.when(
              success: (cachedDoc) async {
                emit(const CachedDocState.success());
                // getIt<WorkManagerInitializer>().startPendingUploads();
                emitCustomLoaded(emit: emit, loaded: loaded);
              },
              failure: (apiErrorModel) async {
                emit(CachedDocState.failure(error: apiErrorModel.error ?? ''));
                emitCustomLoaded(emit: emit, loaded: null);
              },
            );
          } catch (e) {
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
    int? subCategoryId,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    CreateCachedDocEntity currentEntity =
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
      if (subCategoryId == 5)
        currentEntity.files[2].file ?? const FileFormzInput.pure()
      else
        ...currentEntity.files.map(
          (f) => f.file ?? const FileFormzInput.pure(),
        ),
    ]);
    emit(
      loaded?.copyWith(
            createCachedDoc: currentEntity,
            formzSubmissionStatus:
                formzSubmissionStatus ??
                (isValid
                    ? FormzSubmissionStatus.success
                    : FormzSubmissionStatus.failure),
          ) ??
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
