import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workmanager/workmanager.dart';
import '../../../../../core/all_imports.dart';
import '../../../domain/entities/cached_doc_entity.dart';
import '../../../domain/usecases/docs_use_cases.dart';
part 'cached_doc_bloc.freezed.dart';
part 'cached_doc_event.dart';
part 'cached_doc_state.dart';

@injectable
class CachedDocBloc extends Bloc<CachedDocEvent, CachedDocState> {
  final DocsUseCase _docsUseCase;
  GenericFormzInput<int>? _orderId;
  FileFormzInput? _imageOne;
  FileFormzInput? _imageTwo;
  FileFormzInput? _videoOne;
  FileFormzInput? _videoTwo;
  GenericFormzInput<double>? _latitude;
  GenericFormzInput<double>? _longitude;
  GenericFormzInput<double>? _shippingCosts;
  FormzSubmissionStatus? _formzSubmissionStatus;
  double? _localDocProgress;
  CachedDocBloc(
    this._docsUseCase,
  ) : super(
          const CachedDocState.loading(),
        ) {
    on<CachedDocEvent>(
      (event, emit) async {
        await event.whenOrNull(
          updateData: (
            orderId,
            imageOne,
            imageTwo,
            videoOne,
            videoTwo,
            latitude,
            longitude,
            shippingCost,
          ) async {
            debugPrint('🔄 تحديث البيانات في CachedDocBloc: orderId=${orderId?.value}, shippingCost=${shippingCost?.value}');
            // الاحتفاظ بالقيم الموجودة وتحديث القيم الجديدة فقط
            _orderId = orderId ?? _orderId;
            _imageOne = imageOne ?? _imageOne;
            _imageTwo = imageTwo ?? _imageTwo;
            _videoOne = videoOne ?? _videoOne;
            _videoTwo = videoTwo ?? _videoTwo;
            _latitude = latitude ?? _latitude;
            _longitude = longitude ?? _longitude;
            _shippingCosts = shippingCost ?? _shippingCosts;

            debugPrint('🔄 القيم بعد التحديث: _orderId=${_orderId?.value}, _shippingCosts=${_shippingCosts?.value}');

            emitCustomLoaded(
              emit: emit,
            );
          },
          cachedDoc: () async {
            try {
              emitCustomLoaded(
                emit: emit,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
              );
              await _docsUseCase.cachedDoc(
                doc: CachedDocEntity(
                  id: DateTime.now().millisecondsSinceEpoch,
                  orderId: _orderId!.value,
                  imageOne: _imageOne!.value?.path,
                  imageTwo: _imageTwo!.value?.path,
                  videoOne: _videoOne!.value?.path,
                  videoTwo: _videoTwo!.value?.path,
                  latitude: _latitude!.value,
                  longitude: _longitude!.value,
                  shippingCost: _shippingCosts!.value,
                ),
              );
              await Workmanager().registerOneOffTask(
                'upload_task_${_orderId!.value!}',
                'uploadDoc',
                inputData: {
                  'orderId': _orderId!.value,
                },
              );
              emit(const CachedDocState.success());
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
  }
  emitCustomFaliure({
    required Emitter<CachedDocState> emit,
    required String error,
  }) {
    emit(
      CachedDocState.failure(
        error: error,
      ),
    );
  }

  void emitCustomLoaded({
    required Emitter<CachedDocState> emit,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    formzSubmissionStatus ??
        (_formzSubmissionStatus = Formz.validate([
          _orderId ?? const GenericFormzInput.pure(),
          _videoOne ?? const FileFormzInput.pure(),
          _videoTwo ?? const FileFormzInput.pure(),
          _imageOne ?? const FileFormzInput.pure(),
          _imageTwo ?? const FileFormzInput.pure(),
          _shippingCosts ?? const GenericFormzInput.pure(),
        ])
            ? FormzSubmissionStatus.success
            : FormzSubmissionStatus.failure);
    emit(
      CachedDocState.loaded(
        orderId: _orderId,
        videoOne: _videoOne,
        videoTwo: _videoTwo,
        imageOne: _imageOne,
        imageTwo: _imageTwo,
        latitude: _latitude,
        longitude: _longitude,
        shippingCost: _shippingCosts,
        formzSubmissionStatus: _formzSubmissionStatus ?? FormzSubmissionStatus.initial,
        cachedProgress: _localDocProgress,
      ),
    );
  }
}
