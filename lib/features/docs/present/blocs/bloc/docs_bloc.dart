import 'dart:io';

import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' show Injectable;

import '../../../../../core/all_imports.dart';
import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/error/api_error_model.dart';
import '../../../../orders/domain/entities/orders_res_entity.dart';
import '../../../domain/entities/docs_res_entity.dart';
import '../../../domain/usecases/docs_use_cases.dart';

part 'docs_bloc.freezed.dart';
part 'docs_event.dart';
part 'docs_state.dart';

@Injectable()
class DocsBloc extends Bloc<DocsEvent, DocsState> {
  final DocsUseCase docsUseCase;
  List<DocEntity>? _allDocs;
  MetaEntity? _meta;
  GenericFormzInput? _orderId;
  FileFormzInput? _imageOne;
  FileFormzInput? _imageTwo;
  FileFormzInput? _videoOne;
  FileFormzInput? _videoTwo;
  GenericFormzInput? _latitude;
  GenericFormzInput? _longitude;
  GenericFormzInput? _shippingCosts;
  FormzSubmissionStatus? _formzSubmissionStatus;
  final Map<int, ({DocUploadStatus status, String? progress})> _orderDocStatus =
      {};
  String? _uploadingProgress;
  DocsBloc({
    required this.docsUseCase,
  }) : super(
          const DocsState.loaded(
            docs: [],
            hasMore: false,
            orderId: GenericFormzInput.pure(),
            videoOne: FileFormzInput.pure(),
            videoTwo: FileFormzInput.pure(),
            imageOne: FileFormzInput.pure(),
            imageTwo: FileFormzInput.pure(),
            latitude: GenericFormzInput.pure(),
            longitude: GenericFormzInput.pure(),
            shippingCost: GenericFormzInput.pure(),
            formzSubmissionStatus: FormzSubmissionStatus.initial,
            uploadingProgress: null,
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
          createDoc: () async {
            if (_formzSubmissionStatus?.isSuccess ?? false) {
              if (_latitude == null || _longitude == null) {
                try {
                  final result = await docsUseCase.getCurrentLocation();
                  _latitude =
                      GenericFormzInput<String>.dirty(result.lat.toString());
                  _longitude = GenericFormzInput<String>.dirty(
                    result.lng.toString(),
                  );
                  emitCustomLoaded(
                    emit: emit,
                  );
                } catch (e) {
                  emit(
                    const DocsState.failure(
                      apiErrorModel: ApiErrorModel(
                        error:
                            'تعذر جلب الموقع الحالي تلقائيًا. الرجاء المحاولة مرة أخرى.',
                      ),
                    ),
                  );
                  emitCustomLoaded(emit: emit);
                  return;
                }
              }
              print(
                'https://www.google.com/maps/search/?api=1&query=$_latitude,$_longitude',
              );
              final id = _orderId?.value;
              _orderDocStatus[id] =
                  (status: DocUploadStatus.uploading, progress: '0%');
              emitCustomLoaded(emit: emit);
              try {
                emitCustomLoaded(emit: emit);
                final resu = await docsUseCase.createDoc(
                  orderId: _orderId!.value,
                  videoOne: _videoOne!.value!,
                  videoTwo: _videoTwo!.value!,
                  imageOne: _imageOne!.value!,
                  imageTwo: _imageTwo!.value!,
                  longitude: _longitude!.value!,
                  latitude: _latitude!.value!,
                  shippingCosts: _shippingCosts!.value!,
                  onSendProgress: (
                    sent,
                    total,
                  ) {
                    _uploadingProgress = '${((sent / total) * 100).toInt()}%';
                    if (id != null) {
                      _orderDocStatus[id] = (
                        status: DocUploadStatus.uploading,
                        progress: _uploadingProgress,
                      );
                    }
                    emitCustomLoaded(
                      emit: emit,
                    );
                  },
                );
                // await result.when(
                //   success: (
                //     order,
                //   ) async {
                //     _orderDocStatus[id!] = (
                //       status: DocUploadStatus.success,
                //       progress: '100%',
                //     );
                //     resetFormInputs();
                //     _allDocs = [
                //       order!,
                //       ...?_allDocs,
                //     ];
                //     _uploadingProgress = null;
                //     emit(
                //       const DocsState.success(),
                //     );
                //     emitCustomLoaded(
                //       emit: emit,
                //     );
                //   },
                //   failure: (
                //     apiErrorModel,
                //   ) async {
                //     _orderDocStatus[id!] = (
                //       status: DocUploadStatus.failed,
                //       progress: _uploadingProgress,
                //     );
                //     emit(
                //       DocsState.failure(
                //         apiErrorModel: apiErrorModel,
                //       ),
                //     );
                //     emitCustomLoaded(
                //       emit: emit,
                //     );
                //   },
                // );
              } catch (e) {
                _orderDocStatus[id!] = (
                  status: DocUploadStatus.failed,
                  progress: _uploadingProgress,
                );
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
                const DocsState.failure(
                  apiErrorModel: ApiErrorModel(
                    error: 'قم بملئ جميع الحقول',
                  ),
                ),
              );
              emitCustomLoaded(
                emit: emit,
              );
            }
          },
          orderIdChanged: (orderId) {
            _orderId = GenericFormzInput<int>.dirty(orderId);
            emitCustomLoaded(emit: emit);
          },
          videoOneChanged: (f) {
            _videoOne = FileFormzInput.dirty(f);
            emitCustomLoaded(emit: emit);
          },
          videoTwoChanged: (f) {
            _videoTwo = FileFormzInput.dirty(f);
            emitCustomLoaded(emit: emit);
          },
          imageOneChanged: (f) {
            _imageOne = FileFormzInput.dirty(f);
            emitCustomLoaded(emit: emit);
          },
          imageTwoChanged: (f) {
            _imageTwo = FileFormzInput.dirty(f);
            emitCustomLoaded(emit: emit);
          },
          updateLocation: (latitude, longitude) {
            _latitude = GenericFormzInput<String>.dirty(latitude);
            _longitude = GenericFormzInput<String>.dirty(longitude);
            emitCustomLoaded(emit: emit);
          },
          shippingCostChanged: (String shippingCosts) {
            _shippingCosts = GenericFormzInput<String>.dirty(shippingCosts);
            emitCustomLoaded(emit: emit);
          },
          resumePendingUploads: () async {
            // for (final pending in _pendingUploads) {
            // await add(DocsEvent.orderIdChanged(orderId: pending.orderId));
            // await add(DocsEvent.imageOneChanged(file: pending.imageOne));
            // await add(DocsEvent.imageTwoChanged(file: pending.imageTwo));
            // await add(DocsEvent.videoOneChanged(file: pending.videoOne));
            // await add(DocsEvent.videoTwoChanged(file: pending.videoTwo));
            // await add(const DocsEvent.createDoc());
            // }
          },
          getUploadStatusForOrder: () {},
        );
      },
    );
  }
  void emitCustomLoaded({
    required Emitter<DocsState> emit,
  }) {
    _formzSubmissionStatus = Formz.validate([
      _orderId ?? const GenericFormzInput.pure(),
      _videoOne ?? const FileFormzInput.pure(),
      _videoTwo ?? const FileFormzInput.pure(),
      _imageOne ?? const FileFormzInput.pure(),
      _imageTwo ?? const FileFormzInput.pure(),
      _shippingCosts ?? const GenericFormzInput.pure(),
    ])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
    emit(
      DocsState.loaded(
        docs: _allDocs ?? [],
        hasMore: _meta?.hasNextPage ?? false,
        orderId: _orderId ?? const GenericFormzInput.pure(),
        videoOne: _videoOne ?? const FileFormzInput.pure(),
        videoTwo: _videoTwo ?? const FileFormzInput.pure(),
        imageOne: _imageOne ?? const FileFormzInput.pure(),
        imageTwo: _imageTwo ?? const FileFormzInput.pure(),
        latitude: _latitude ?? const GenericFormzInput.pure(),
        longitude: _longitude ?? const GenericFormzInput.pure(),
        shippingCost: _shippingCosts ?? const GenericFormzInput.pure(),
        formzSubmissionStatus:
            _formzSubmissionStatus ?? FormzSubmissionStatus.initial,
        uploadingProgress: _uploadingProgress,
      ),
    );
  }

  // @override
  // DocsState? fromJson(Map<String, dynamic> json) {
  //   final raw = json['orderDocStatuses'] as Map<String, dynamic>? ?? {};
  //   _orderDocStatus.clear();
  //   for (final entry in raw.entries) {
  //     final orderId = int.tryParse(entry.key);
  //     if (orderId == null) continue;
  //     final data = entry.value as Map<String, dynamic>;
  //     final status = DocUploadStatus.values.byName(data['status'] as String);
  //     final progress = data['progress'] as String?;
  //     _orderDocStatus[orderId] = (
  //       status: status,
  //       progress: progress,
  //     );
  //   }
  //   return DocsState.loaded(
  //     docs: _allDocs ?? [],
  //     hasMore: _meta?.hasNextPage ?? false,
  //     orderId: GenericFormzInput<int>.dirty(json['orderId'] as int?),
  //     videoOne: FileFormzInput.dirty(
  //         json['videoOnePath'] != null ? File(json['videoOnePath']) : null),
  //     videoTwo: FileFormzInput.dirty(
  //         json['videoTwoPath'] != null ? File(json['videoTwoPath']) : null),
  //     imageOne: FileFormzInput.dirty(
  //         json['imageOnePath'] != null ? File(json['imageOnePath']) : null),
  //     imageTwo: FileFormzInput.dirty(
  //         json['imageTwoPath'] != null ? File(json['imageTwoPath']) : null),
  //     latitude: GenericFormzInput<String>.dirty(json['latitude'] as String?),
  //     longitude: GenericFormzInput<String>.dirty(json['longitude'] as String?),
  //     formzSubmissionStatus: FormzSubmissionStatus.initial,
  //     uploadingProgress: json['uploadingProgress'] as String?,
  //   );
  // }

  // @override
  // Map<String, dynamic>? toJson(DocsState state) {
  //   return state.whenOrNull(
  //     loaded: (
  //       docs,
  //       hasMore,
  //       orderId,
  //       videoOne,
  //       videoTwo,
  //       imageOne,
  //       imageTwo,
  //       latitude,
  //       longitude,
  //       status,
  //       uploadingProgress,
  //     ) =>
  //         {
  //       'orderId': orderId?.value ?? 0,
  //       'videoOnePath': videoOne.value?.path,
  //       'videoTwoPath': videoTwo.value?.path,
  //       'imageOnePath': imageOne.value?.path,
  //       'imageTwoPath': imageTwo.value?.path,
  //       'latitude': latitude.value,
  //       'longitude': longitude.value,
  //       'uploadingProgress': uploadingProgress,
  //       'orderDocStatuses': _orderDocStatus.map(
  //         (key, value) => MapEntry(
  //           key.toString(),
  //           {
  //             'status': value.status.name,
  //             'progress': value.progress,
  //           },
  //         ),
  //       ),
  //     },
  //   );
  // }
  void resetFormInputs() {
    _orderId = const GenericFormzInput<int>.pure();
    _imageOne = const FileFormzInput.pure();
    _imageTwo = const FileFormzInput.pure();
    _videoOne = const FileFormzInput.pure();
    _videoTwo = const FileFormzInput.pure();
    _latitude = const GenericFormzInput<String>.pure();
    _longitude = const GenericFormzInput<String>.pure();
    _shippingCosts = const GenericFormzInput<String>.pure();
    _formzSubmissionStatus = FormzSubmissionStatus.initial;
    _uploadingProgress = null;
  }

  ({DocUploadStatus status, String? progress})? getUploadStatusForOrder(
    int orderId,
  ) =>
      _orderDocStatus[orderId];
}
