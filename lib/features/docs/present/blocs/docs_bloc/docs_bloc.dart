import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' show lazySingleton;

import '../../../../../core/all_imports.dart';
import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/error/api_error_model.dart';
import '../../../../orders/domain/entities/orders_res_entity.dart';
import '../../../domain/entities/docs_res_entity.dart';
import '../../../domain/usecases/docs_use_cases.dart';

part 'docs_bloc.freezed.dart';
part 'docs_event.dart';
part 'docs_state.dart';

@lazySingleton
class DocsBloc extends Bloc<DocsEvent, DocsState> {
  final DocsUseCase docsUseCase;
  List<DocEntity>? _allDocs;
  MetaEntity? _meta;
  GenericFormzInput? _orderId;

  final Map<int, ({DocUploadStatus status, String? progress})> _orderDocStatus =
      {};

  DocsBloc({
    required this.docsUseCase,
  }) : super(
          const DocsState.loaded(
            docs: [],
            hasMore: false,
          ),
        ) {
    on<DocsEvent>(
      (event, emit) async {
        await event.when(
          getDocs: (orderId) async {
            try {
              final res = await docsUseCase.getDocs(orderId: orderId);
              // await res.when(
              //   success: (
              //     res,
              //   ) async {
              //     _allDocs = [..._allDocs ?? [], ...res?.docs ?? []];
              //     _meta = res?.meta ?? const MetaEntity();
              //     emitCustomLoaded(
              //       emit: emit,
              //     );
              //   },
              //   failure: (
              //     apiErrorModel,
              //   ) async {
              //     emit(
              //       DocsState.getDocsfailure(
              //         apiErrorModel: apiErrorModel,
              //       ),
              //     );
              //     emitCustomLoaded(
              //       emit: emit,
              //     );
              //   },
              // );
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
          startUpload: (orderId) async {
            final res = await docsUseCase.startUpload(orderId: orderId);
          },
          retryUpload: (docId) async {
            final res = await docsUseCase.retryUpload(docId: docId);
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
      ),
    );
  }
}
