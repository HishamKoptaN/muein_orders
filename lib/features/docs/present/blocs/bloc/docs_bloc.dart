import 'dart:io';

import 'package:formz/formz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mubin_orders/core/entities/meta_entity.dart';
import 'package:mubin_orders/features/docs/domain/entities/docs_res_entity.dart';
import '../../../../../core/all_imports.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/form_inputs/file_formz_input.dart';
import '../../../../../core/form_inputs/generic_gormz_input.dart';
import '../../../domain/usecases/docs_use_cases.dart';
import 'docs_event.dart';
import 'docs_state.dart';
import 'package:injectable/injectable.dart' show Injectable;

@Injectable()
class DocsBloc extends HydratedBloc<DocsEvent, DocsState> {
  DocsUseCase docsUseCase;
  List<DocEntity>? _allDocs;
  MetaEntity? _meta;
  GenericFormzInput? _orderId;
  FileFormzInput? _imageOne;
  FileFormzInput? _imageTwo;
  FileFormzInput? _videoOne;
  FileFormzInput? _videoTwo;
  GenericFormzInput? _latitude;
  GenericFormzInput? _longitude;
  FormzSubmissionStatus? _formzSubmissionStatus;

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
          createDoc: () async {
            if (_formzSubmissionStatus?.isSuccess ?? false) {
              if (_latitude == null || _longitude == null) {
                try {
                  final result = await docsUseCase.getCurrentLocation();
                  _latitude =
                      GenericFormzInput<String>.dirty(result.lat.toString());
                  _longitude =
                      GenericFormzInput<String>.dirty(_longitude.toString());
                  emitCustomLoaded(
                    emit: emit,
                  );
                } catch (e) {
                  emit(
                    DocsState.failure(
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
                  'https://www.google.com/maps/search/?api=1&query=${_latitude},${_longitude}');
              try {
                emitCustomLoaded(emit: emit);
                final result = await docsUseCase.createDoc(
                  orderId: _orderId!.value,
                  videoOne: _videoOne!.value!,
                  videoTwo: _videoTwo!.value!,
                  imageOne: _imageOne!.value!,
                  imageTwo: _imageTwo!.value!,
                  longitude: _longitude!.value!,
                  latitude: _latitude!.value!,
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
                    resetFormInputs();
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
        );
      },
    );
  }
  void emitCustomLoaded({
    required Emitter<DocsState> emit,
  }) {
    _formzSubmissionStatus = Formz.validate([
      _orderId ?? GenericFormzInput.pure(),
      _videoOne ?? FileFormzInput.pure(),
      _videoTwo ?? FileFormzInput.pure(),
      _imageOne ?? FileFormzInput.pure(),
      _imageTwo ?? FileFormzInput.pure(),
    ])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
    emit(
      DocsState.loaded(
        docs: _allDocs ?? [],
        hasMore: _meta?.hasNextPage ?? false,
        orderId: _orderId ?? GenericFormzInput.pure(),
        videoOne: _videoOne ?? FileFormzInput.pure(),
        videoTwo: _videoTwo ?? FileFormzInput.pure(),
        imageOne: _imageOne ?? FileFormzInput.pure(),
        imageTwo: _imageTwo ?? FileFormzInput.pure(),
        latitude: _latitude ?? GenericFormzInput.pure(),
        longitude: _longitude ?? GenericFormzInput.pure(),
        formzSubmissionStatus:
            _formzSubmissionStatus ?? FormzSubmissionStatus.initial,
        uploadingProgress: _uploadingProgress,
      ),
    );
  }

  @override
  DocsState? fromJson(Map<String, dynamic> json) {
    return DocsState.loaded(
      docs: _allDocs ?? [],
      hasMore: _meta?.hasNextPage ?? false,
      orderId: GenericFormzInput<int>.dirty(json['orderId'] as int?),
      videoOne: FileFormzInput.dirty(
          json['videoOnePath'] != null ? File(json['videoOnePath']) : null),
      videoTwo: FileFormzInput.dirty(
          json['videoTwoPath'] != null ? File(json['videoTwoPath']) : null),
      imageOne: FileFormzInput.dirty(
          json['imageOnePath'] != null ? File(json['imageOnePath']) : null),
      imageTwo: FileFormzInput.dirty(
          json['imageTwoPath'] != null ? File(json['imageTwoPath']) : null),
      latitude: GenericFormzInput<String>.dirty(json['latitude'] as String?),
      longitude: GenericFormzInput<String>.dirty(json['longitude'] as String?),
      formzSubmissionStatus: FormzSubmissionStatus.initial,
      uploadingProgress: json['uploadingProgress'] as String?,
    );
  }

  @override
  Map<String, dynamic>? toJson(DocsState state) {
    return state.whenOrNull(
      loaded: (
        docs,
        hasMore,
        orderId,
        videoOne,
        videoTwo,
        imageOne,
        imageTwo,
        latitude,
        longitude,
        status,
        uploadingProgress,
      ) =>
          {
        'orderId': orderId?.value ?? 0,
        'videoOnePath': videoOne.value?.path,
        'videoTwoPath': videoTwo.value?.path,
        'imageOnePath': imageOne.value?.path,
        'imageTwoPath': imageTwo.value?.path,
        'latitude': latitude.value,
        'longitude': longitude.value,
        'uploadingProgress': uploadingProgress,
      },
    );
  }

  void resetFormInputs() {
    _orderId = const GenericFormzInput<int>.pure();
    _imageOne = const FileFormzInput.pure();
    _imageTwo = const FileFormzInput.pure();
    _videoOne = const FileFormzInput.pure();
    _videoTwo = const FileFormzInput.pure();
    _latitude = const GenericFormzInput<String>.pure();
    _longitude = const GenericFormzInput<String>.pure();
    _formzSubmissionStatus = FormzSubmissionStatus.initial;
  }
}
