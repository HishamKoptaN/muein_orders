import 'dart:developer';

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
              emitCustomLoaded(
                emit: emit,
                loaded: null,
                createCachedDoc: const CreateCachedDocEntity(),
              );
            },
            failure: (apiErrorModel) async {
              emit(CachedDocState.failure(error: apiErrorModel.error ?? ''));
              emitCustomLoaded(emit: emit, loaded: null);
            },
          );
        },
        updateData: (loaded, createCachedDoc) async {
          emitCustomLoaded(
            emit: emit,
            loaded: loaded,
            createCachedDoc: createCachedDoc,
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
              doc: loaded.createCachedDoc.toCachedDocEntity(),
            );
            await res.when(
              success: (cachedDoc) async {
                emit(const CachedDocState.success());
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
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      CachedDocState.loaded(
        createCachedDoc:
            createCachedDoc ??
            loaded?.createCachedDoc ??
            const CreateCachedDocEntity(),
        formzSubmissionStatus:
            Formz.validate([
              createCachedDoc?.docId ??
                  loaded?.createCachedDoc.docId ??
                  const GenericFormzInput.pure(),
              createCachedDoc?.videoOne?.file ??
                  loaded?.createCachedDoc.videoOne?.file ??
                  const FileFormzInput.pure(),
              createCachedDoc?.videoTwo?.file ??
                  loaded?.createCachedDoc.videoTwo?.file ??
                  const FileFormzInput.pure(),
              createCachedDoc?.imageOne?.file ??
                  loaded?.createCachedDoc.imageOne?.file ??
                  const FileFormzInput.pure(),
              createCachedDoc?.imageTwo?.file ??
                  loaded?.createCachedDoc.imageTwo?.file ??
                  const FileFormzInput.pure(),
            ])
            ? FormzSubmissionStatus.success
            : FormzSubmissionStatus.failure,
      ),
    );
  }
}
