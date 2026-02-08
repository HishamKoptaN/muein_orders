part of 'cached_doc_bloc.dart';

@freezed
abstract class CachedDocState with _$CachedDocState {
  const factory CachedDocState.loading() = _Loading;
  const factory CachedDocState.loaded({
    required GenericFormzInput<int>? orderId,
    required FileFormzInput? videoOne,
    required FileFormzInput? videoTwo,
    required FileFormzInput? imageOne,
    required FileFormzInput? imageTwo,
    required GenericFormzInput<double>? latitude,
    required GenericFormzInput<double>? longitude,
    required FormzSubmissionStatus formzSubmissionStatus,
    required double? cachedProgress,
  }) = _Loaded;
  const factory CachedDocState.success() = _Success;
  const factory CachedDocState.failure({required String error}) = _Failure;
}
