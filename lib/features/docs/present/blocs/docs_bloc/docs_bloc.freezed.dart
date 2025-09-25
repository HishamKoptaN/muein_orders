// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) startUpload,
    required TResult Function(int docId) retryUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocsEventCopyWith<$Res> {
  factory $DocsEventCopyWith(DocsEvent value, $Res Function(DocsEvent) then) =
      _$DocsEventCopyWithImpl<$Res, DocsEvent>;
}

/// @nodoc
class _$DocsEventCopyWithImpl<$Res, $Val extends DocsEvent>
    implements $DocsEventCopyWith<$Res> {
  _$DocsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDocsImplCopyWith<$Res> {
  factory _$$GetDocsImplCopyWith(
          _$GetDocsImpl value, $Res Function(_$GetDocsImpl) then) =
      __$$GetDocsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$GetDocsImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$GetDocsImpl>
    implements _$$GetDocsImplCopyWith<$Res> {
  __$$GetDocsImplCopyWithImpl(
      _$GetDocsImpl _value, $Res Function(_$GetDocsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetDocsImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDocsImpl implements _GetDocs {
  const _$GetDocsImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DocsEvent.getDocs(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocsImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDocsImplCopyWith<_$GetDocsImpl> get copyWith =>
      __$$GetDocsImplCopyWithImpl<_$GetDocsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) startUpload,
    required TResult Function(int docId) retryUpload,
  }) {
    return getDocs(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
  }) {
    return getDocs?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    required TResult orElse(),
  }) {
    if (getDocs != null) {
      return getDocs(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
  }) {
    return getDocs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
  }) {
    return getDocs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    required TResult orElse(),
  }) {
    if (getDocs != null) {
      return getDocs(this);
    }
    return orElse();
  }
}

abstract class _GetDocs implements DocsEvent {
  const factory _GetDocs({required final int orderId}) = _$GetDocsImpl;

  int get orderId;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDocsImplCopyWith<_$GetDocsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartUploadImplCopyWith<$Res> {
  factory _$$StartUploadImplCopyWith(
          _$StartUploadImpl value, $Res Function(_$StartUploadImpl) then) =
      __$$StartUploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$StartUploadImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$StartUploadImpl>
    implements _$$StartUploadImplCopyWith<$Res> {
  __$$StartUploadImplCopyWithImpl(
      _$StartUploadImpl _value, $Res Function(_$StartUploadImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$StartUploadImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartUploadImpl implements _StartUpload {
  const _$StartUploadImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DocsEvent.startUpload(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartUploadImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartUploadImplCopyWith<_$StartUploadImpl> get copyWith =>
      __$$StartUploadImplCopyWithImpl<_$StartUploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) startUpload,
    required TResult Function(int docId) retryUpload,
  }) {
    return startUpload(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
  }) {
    return startUpload?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    required TResult orElse(),
  }) {
    if (startUpload != null) {
      return startUpload(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
  }) {
    return startUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
  }) {
    return startUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    required TResult orElse(),
  }) {
    if (startUpload != null) {
      return startUpload(this);
    }
    return orElse();
  }
}

abstract class _StartUpload implements DocsEvent {
  const factory _StartUpload({required final int orderId}) = _$StartUploadImpl;

  int get orderId;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartUploadImplCopyWith<_$StartUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetryUploadImplCopyWith<$Res> {
  factory _$$RetryUploadImplCopyWith(
          _$RetryUploadImpl value, $Res Function(_$RetryUploadImpl) then) =
      __$$RetryUploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int docId});
}

/// @nodoc
class __$$RetryUploadImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$RetryUploadImpl>
    implements _$$RetryUploadImplCopyWith<$Res> {
  __$$RetryUploadImplCopyWithImpl(
      _$RetryUploadImpl _value, $Res Function(_$RetryUploadImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
  }) {
    return _then(_$RetryUploadImpl(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RetryUploadImpl implements _RetryUpload {
  const _$RetryUploadImpl({required this.docId});

  @override
  final int docId;

  @override
  String toString() {
    return 'DocsEvent.retryUpload(docId: $docId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetryUploadImpl &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docId);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetryUploadImplCopyWith<_$RetryUploadImpl> get copyWith =>
      __$$RetryUploadImplCopyWithImpl<_$RetryUploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) startUpload,
    required TResult Function(int docId) retryUpload,
  }) {
    return retryUpload(docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
  }) {
    return retryUpload?.call(docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    required TResult orElse(),
  }) {
    if (retryUpload != null) {
      return retryUpload(docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
  }) {
    return retryUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
  }) {
    return retryUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    required TResult orElse(),
  }) {
    if (retryUpload != null) {
      return retryUpload(this);
    }
    return orElse();
  }
}

abstract class _RetryUpload implements DocsEvent {
  const factory _RetryUpload({required final int docId}) = _$RetryUploadImpl;

  int get docId;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetryUploadImplCopyWith<_$RetryUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<DocEntity>? docs, bool? hasMore) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocsStateCopyWith<$Res> {
  factory $DocsStateCopyWith(DocsState value, $Res Function(DocsState) then) =
      _$DocsStateCopyWithImpl<$Res, DocsState>;
}

/// @nodoc
class _$DocsStateCopyWithImpl<$Res, $Val extends DocsState>
    implements $DocsStateCopyWith<$Res> {
  _$DocsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$DocsStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'DocsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<DocEntity>? docs, bool? hasMore) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements DocsState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DocsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'DocsState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<DocEntity>? docs, bool? hasMore) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements DocsState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DocEntity>? docs, bool? hasMore});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DocsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_$LoadedImpl(
      docs: freezed == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<DocEntity>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {final List<DocEntity>? docs = const [], this.hasMore = false})
      : _docs = docs;

  final List<DocEntity>? _docs;
  @override
  @JsonKey()
  List<DocEntity>? get docs {
    final value = _docs;
    if (value == null) return null;
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? hasMore;

  @override
  String toString() {
    return 'DocsState.loaded(docs: $docs, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_docs), hasMore);

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<DocEntity>? docs, bool? hasMore) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loaded(docs, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loaded?.call(docs, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(docs, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DocsState {
  const factory _Loaded({final List<DocEntity>? docs, final bool? hasMore}) =
      _$LoadedImpl;

  List<DocEntity>? get docs;
  bool? get hasMore;

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$DocsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$FailureImpl(
      apiErrorModel: null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.apiErrorModel});

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'DocsState.failure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<DocEntity>? docs, bool? hasMore) loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return failure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return failure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<DocEntity>? docs, bool? hasMore)? loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements DocsState {
  const factory _Failure({required final ApiErrorModel apiErrorModel}) =
      _$FailureImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of DocsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
