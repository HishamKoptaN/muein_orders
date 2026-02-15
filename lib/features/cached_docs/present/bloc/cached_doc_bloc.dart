import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/app_file_manager.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../../domain/entities/cached_doc_entity.dart';
import '../../domain/usecases/cached_docs_use_cases.dart';

part 'cached_doc_bloc.freezed.dart';
part 'cached_doc_event.dart';
part 'cached_doc_state.dart';

@singleton
class CachedDocBloc extends Bloc<CachedDocEvent, CachedDocState> {
  final CachedDocsUseCases _docsUseCase;
  final AppFileManager _fileManager;
  GenericFormzInput<int>? _orderId;
  FileFormzInput? _imageOne;
  FileFormzInput? _imageTwo;
  FileFormzInput? _videoOne;
  FileFormzInput? _videoTwo;
  GenericFormzInput<double>? _latitude;
  GenericFormzInput<double>? _longitude;
  FormzSubmissionStatus? _formzSubmissionStatus;
  double? _localDocProgress;
  StatEntity? _package;
  // final NotificationManager notificationManager;
  StreamSubscription? _subscription;

  CachedDocBloc(
    this._docsUseCase,
    this._fileManager,
    // this.notificationManager,
  ) : super(const CachedDocState.loading()) {
    on<CachedDocEvent>((event, emit) async {
      await event.whenOrNull(
        updateData:
            (
              orderId,
              imageOne,
              imageTwo,
              videoOne,
              videoTwo,
              latitude,
              longitude,
              package,
            ) async {
              _orderId = orderId ?? _orderId;
              _imageOne = imageOne ?? _imageOne;
              _imageTwo = imageTwo ?? _imageTwo;
              _videoOne = videoOne ?? _videoOne;
              _videoTwo = videoTwo ?? _videoTwo;
              _latitude = latitude ?? _latitude;
              _longitude = longitude ?? _longitude;
              _package = package ?? _package;
              emitCustomLoaded(emit: emit);
            },
        cachedDoc: () async {
          try {
            emitCustomLoaded(
              emit: emit,
              formzSubmissionStatus: FormzSubmissionStatus.inProgress,
            );
            String? copiedImageOne;
            String? copiedImageTwo;
            String? copiedVideoOne;
            String? copiedVideoTwo;
            if (_imageOne?.value?.path != null) {
              copiedImageOne = await _fileManager.copyFileToTempDirectory(
                _imageOne!.value!.path,
              );
            }
            if (_imageTwo?.value?.path != null) {
              copiedImageTwo = await _fileManager.copyFileToTempDirectory(
                _imageTwo!.value!.path,
              );
            }
            if (_videoOne?.value?.path != null) {
              copiedVideoOne = await _fileManager.copyFileToTempDirectory(
                _videoOne!.value!.path,
              );
            }
            if (_videoTwo?.value?.path != null) {
              copiedVideoTwo = await _fileManager.copyFileToTempDirectory(
                _videoTwo!.value!.path,
              );
            }
            final docId = DateTime.now().millisecondsSinceEpoch;
            await _docsUseCase.cachedDoc(
              doc: CachedDocEntity(
                id: docId,
                orderId: _orderId!.value,
                imageOne: copiedImageOne,
                imageTwo: copiedImageTwo,
                videoOne: copiedVideoOne,
                videoTwo: copiedVideoTwo,
                latitude: _latitude!.value,
                longitude: _longitude!.value,
              ),
            );
            // تحديث حالة الرفع إلى نجح وحذف الملفات المؤقتة
            // تعليق: حذف الملفات المؤقتة معلق حاليًا
            // await _docsUseCase.updateUploadStatus(
            //   docId: docId,
            //   status: UploadStatus.success,
            //   progress: 100.0,
            // );

            emit(const CachedDocState.success());
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
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    final fieldsToValidate = <FormzInput<dynamic, dynamic>>[
      _orderId ?? const GenericFormzInput.pure(),
      _videoOne ?? const FileFormzInput.pure(),
      _videoTwo ?? const FileFormzInput.pure(),
      _imageOne ?? const FileFormzInput.pure(),
      _imageTwo ?? const FileFormzInput.pure(),
    ];
    if (_package?.id != 4) {
      fieldsToValidate.addAll([
        _latitude ?? const GenericFormzInput.pure(),
        _longitude ?? const GenericFormzInput.pure(),
      ]);
    }
    formzSubmissionStatus ??= Formz.validate(fieldsToValidate)
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;

    _formzSubmissionStatus = formzSubmissionStatus;
    emit(
      CachedDocState.loaded(
        orderId: _orderId,
        videoOne: _videoOne,
        videoTwo: _videoTwo,
        imageOne: _imageOne,
        imageTwo: _imageTwo,
        latitude: _latitude,
        longitude: _longitude,
        formzSubmissionStatus:
            _formzSubmissionStatus ?? FormzSubmissionStatus.initial,
        cachedProgress: _localDocProgress,
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
