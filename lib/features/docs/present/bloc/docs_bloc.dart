import 'package:mubin_orders/core/entities/meta_entity.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../core/all_imports.dart';
import '../../../../core/errors/api_error_model.dart';
import '../../../orders/present/bloc/orders_bloc.dart';
import '../../../orders/present/bloc/orders_event.dart';
import '../../domain/entities/add_doc_req_entity.dart';
import '../../domain/usecases/docs_use_cases.dart';
import 'docs_event.dart';
import 'docs_state.dart';
import 'package:injectable/injectable.dart' show Injectable;

@Injectable()
class DocsBloc extends Bloc<DocsEvent, DocsState> {
  DocsUseCase docsUseCase;
  List<DocEntity>? _allDocs;
  MetaEntity? _meta;
  AddDocReqEntity _addDocReqEntity = AddDocReqEntity();
  String? _uploadingProgress;
  DocsBloc({
    required this.docsUseCase,
  }) : super(
          const DocsState.initial(),
        ) {
    on<DocsEvent>(
      (event, emit) async {
        await event.when(
          getDocs: (orderId) async {
            try {
              final res = await docsUseCase.getDocs(orderId: orderId);
              await res.when(
                success: (
                  res,
                ) async {
                  _allDocs = [..._allDocs ?? [], ...res?.docs ?? []];
                  _meta = res?.meta ?? MetaEntity();
                  emitCustomLoaded(
                    emit: emit,
                  );
                },
                failure: (
                  apiErrorModel,
                ) async {
                  emit(
                    DocsState.getDocsfailure(
                      apiErrorModel: apiErrorModel,
                    ),
                  );
                  emitCustomLoaded(
                    emit: emit,
                  );
                },
              );
            } catch (e) {
              emit(
                DocsState.getDocsfailure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                ),
              );
              emitCustomLoaded(
                emit: emit,
              );
            }
          },
          updateData: (
            addDocReqEntity,
          ) async {
            try {
              _addDocReqEntity = addDocReqEntity;
              emitCustomLoaded(
                emit: emit,
              );
            } catch (e) {
              emit(
                DocsState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: e.toString(),
                  ),
                ),
              );
              emitCustomLoaded(
                emit: emit,
              );
            }
          },
          createDoc: () async {
            if (_addDocReqEntity.isComplete) {
              try {
                emitCustomLoaded(emit: emit);
                final result = await docsUseCase.createDoc(
                  addDocReqEntity: _addDocReqEntity,
                  onSendProgress: (
                    sent,
                    total,
                  ) {
                    _uploadingProgress = "${((sent / total) * 100).toInt()}%";
                    emitCustomLoaded(
                      emit: emit,
                    );
                  },
                );
                await result.when(
                  success: (
                    order,
                  ) async {
                    _addDocReqEntity = AddDocReqEntity.empty();
                    _allDocs = [
                      order!,
                      ...?_allDocs,
                    ];
                    _uploadingProgress = null;
                    emit(
                      const DocsState.success(),
                    );
                    emitCustomLoaded(
                      emit: emit,
                    );
                  },
                  failure: (
                    apiErrorModel,
                  ) async {
                    emit(
                      DocsState.failure(
                        apiErrorModel: apiErrorModel,
                      ),
                    );
                    emitCustomLoaded(
                      emit: emit,
                    );
                  },
                );
              } catch (e) {
                emit(
                  DocsState.failure(
                    apiErrorModel: ApiErrorModel(
                      error: e.toString(),
                    ),
                  ),
                );
                emitCustomLoaded(
                  emit: emit,
                );
              }
            } else {
              emit(
                DocsState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: "قم بملئ جميع الحقول",
                  ),
                ),
              );
              emitCustomLoaded(
                emit: emit,
              );
            }
          },
        );
      },
    );
  }

  void emitCustomLoaded({
    required Emitter<DocsState> emit,
  }) {
    emit(
      DocsState.loaded(
        docs: _allDocs ?? [],
        hasMore: _meta?.hasNextPage ?? false,
        addDocReqEntity: _addDocReqEntity,
        uploadingProgress: _uploadingProgress,
      ),
    );
  }
}
