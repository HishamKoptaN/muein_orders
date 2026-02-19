import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../domain/entities/docs_res_entity.dart';
import '../../../domain/usecases/docs_use_cases.dart';

part 'docs_bloc.freezed.dart';
part 'docs_event.dart';
part 'docs_state.dart';

@singleton
class DocsBloc extends Bloc<DocsEvent, DocsState> {
  final DocsUseCase docsUseCase;
  List<DocEntity>? _allDocs;
  final AppDatabase db;
  StreamSubscription? _subscription;
  MetaEntity? _meta;
  DocsBloc({required this.docsUseCase, required this.db})
    : super(const DocsState.loaded(docs: [], hasMore: false)) {
    on<DocsEvent>((event, emit) async {
      await event.when(
        getDocs: (orderId) async {
          try {
            final res = await docsUseCase.get(orderId: orderId);
            await res.when(
              success: (res) async {
                emitCustomLoaded(emit: emit);
              },
              failure: (apiErrorModel) async {
                emit(DocsState.failure(apiErrorModel: apiErrorModel));
                emitCustomLoaded(emit: emit);
              },
            );
          } catch (e) {
            emit(
              DocsState.failure(
                apiErrorModel: ApiErrorModel(error: e.toString()),
              ),
            );
            emitCustomLoaded(emit: emit);
          }
        },
      );
    });
  }

  void emitCustomLoaded({required Emitter<DocsState> emit}) {
    emit(
      DocsState.loaded(
        docs: _allDocs ?? [],
        hasMore: _meta?.hasNextPage ?? false,
      ),
    );
  }

  void monitorDoc(int docId) {
    _subscription?.cancel();
    // _subscription = db.watchDocs(docId: docId).listen((docs) {
    //   if (docs.isNotEmpty) {
    //     final doc = docs.first;
    // emit(DocsUpdateSuccess(doc));
    // // منطق إضافي: إذا اكتمل الرفع، قم بتنفيذ مهمة أخرى
    // if (doc.uploadStatus == 'completed') {
    //   _onUploadFinished(doc);
    // }
    // }
    // });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
