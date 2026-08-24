import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/utils/app_file_manager.dart';
import '../../../../../../core/utils/background/workmanager_initializer.dart';
import '../../../../docs/domain/entities/doc_entity.dart';
import '../../../domain/entities/create_cached_doc_entity.dart';
import '../../../domain/usecases/cached_docs_use_cases.dart';

part 'cached_doc_bloc.freezed.dart';
part 'cached_doc_event.dart';
part 'cached_doc_state.dart';

@lazySingleton
class CachedDocBloc extends Bloc<CachedDocEvent, CachedDocState> {
  final CachedDocsUseCases _docsUseCase;
  final AppFileManager _fileManager;
  CachedDocBloc(this._docsUseCase, this._fileManager)
    : super(
        const CachedDocState.loaded(createCachedDoc: CreateCachedDocEntity()),
      ) {
    on<CachedDocEvent>((event, emit) async {
      await event.when(
        updateData: (createCachedDoc) async {
          state.maybeMap(
            loaded: (loaded) {
              emitCustomLoaded(
                emit: emit,
                loaded: loaded.copyWith(createCachedDoc: createCachedDoc),
              );
            },
            orElse: () {},
          );
        },
        cachedDoc: () async {
          await state.mapOrNull(
            loaded: (state) async {
              try {
                emitCustomLoaded(
                  emit: emit,
                  loaded: state,
                  formzSubmissionStatus: .inProgress,
                );
                final res = await _docsUseCase.cachedDoc(
                  doc: state.createCachedDoc,
                );
                await res.when(
                  success: (cachedDoc) async {
                    emit(const CachedDocState.success());
                    //await getIt<WorkManagerInitializer>().registerSystemUploadTask();
                    emitCustomLoaded(emit: emit, loaded: state);
                  },
                  failure: (apiErrorModel) async {
                    emit(CachedDocState.failure(error: apiErrorModel.message));
                    emitCustomLoaded(emit: emit, loaded: null);
                    emitCustomLoaded(emit: emit, loaded: state);
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
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    CreateCachedDocEntity currentEntity =
        loaded?.createCachedDoc ?? const CreateCachedDocEntity();
    if (currentEntity.files.isEmpty) {
      currentEntity = currentEntity.copyWith(
        files: List.generate(4, (_) {
          return const DocMediaEntity();
        }),
      );
    }
    final bool isValid = Formz.validate([]);
    emit(
      loaded?.copyWith(
            createCachedDoc: currentEntity,
            formzSubmissionStatus:
                formzSubmissionStatus ?? (isValid ? .success : .failure),
          ) ??
          CachedDocState.loaded(
            createCachedDoc: currentEntity,
            formzSubmissionStatus:
                formzSubmissionStatus ?? (isValid ? .success : .failure),
          ),
    );
  }
}
