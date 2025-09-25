import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/all_imports.dart';
import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/error/api_error_model.dart';
import '../../../domain/entities/docs_res_entity.dart';
import '../../../domain/usecases/docs_use_cases.dart';
import '../../../../../core/background/background_upload_task.dart';
part 'docs_bloc.freezed.dart';
part 'docs_event.dart';
part 'docs_state.dart';

class DocsBloc extends Bloc<DocsEvent, DocsState> {
  final DocsUseCase docsUseCase;
  List<DocEntity>? _allDocs;
  MetaEntity? _meta;
  bool _backgroundMonitoringActive = false;
  bool _backgroundMonitoringInactive = false;
  Timer? _backgroundTimer;
  bool _isMonitoringActive = false;
  static const Duration _checkInterval = Duration(minutes: 5);

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
          startBackgroundMonitoring: () async {
            if (_isMonitoringActive) return;

            _isMonitoringActive = true;
            _backgroundMonitoringActive = true;
            emit(
              const DocsState.loaded(),
            );

            _startPeriodicCheck();
          },
          stopBackgroundMonitoring: () async {
            if (!_isMonitoringActive) return;

            _isMonitoringActive = false;
            _backgroundTimer?.cancel();
            _backgroundTimer = null;
            emit(
              const DocsState.loaded(
                backgroundMonitoringInactive: true,
              ),
            );
          },
          checkPendingUploads: () async {
            await BackgroundUploadTask.startBackgroundUpload();
          },
        );
      },
    );
  }

  // بدء الفحص الدوري
  void _startPeriodicCheck() {
    _backgroundTimer?.cancel();
    _backgroundTimer = Timer.periodic(
      _checkInterval,
      (timer) {
        if (_isMonitoringActive) {
          add(const DocsEvent.checkPendingUploads());
        } else {
          timer.cancel();
        }
      },
    );
  }


  @override
  Future<void> close() async {
    _backgroundTimer?.cancel();
    _backgroundTimer = null;
    _isMonitoringActive = false;
    super.close();
  }

  void emitCustomLoaded({
    required Emitter<DocsState> emit,
  }) {
    emit(
      DocsState.loaded(
        docs: _allDocs ?? [],
        hasMore: _meta?.hasNextPage ?? false,
        backgroundMonitoringInactive: _backgroundMonitoringInactive,
        backgroundMonitoringActive: _backgroundMonitoringActive,
      ),
    );
  }
}
