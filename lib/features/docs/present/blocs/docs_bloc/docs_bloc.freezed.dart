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
    required TResult Function() startBackgroundMonitoring,
    required TResult Function() stopBackgroundMonitoring,
    required TResult Function() checkPendingUploads,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
    TResult? Function()? startBackgroundMonitoring,
    TResult? Function()? stopBackgroundMonitoring,
    TResult? Function()? checkPendingUploads,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    TResult Function()? startBackgroundMonitoring,
    TResult Function()? stopBackgroundMonitoring,
    TResult Function()? checkPendingUploads,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
    required TResult Function(_StartBackgroundMonitoring value)
        startBackgroundMonitoring,
    required TResult Function(_StopBackgroundMonitoring value)
        stopBackgroundMonitoring,
    required TResult Function(_CheckPendingUploads value) checkPendingUploads,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
    TResult? Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult? Function(_StopBackgroundMonitoring value)?
        stopBackgroundMonitoring,
    TResult? Function(_CheckPendingUploads value)? checkPendingUploads,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    TResult Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult Function(_StopBackgroundMonitoring value)? stopBackgroundMonitoring,
    TResult Function(_CheckPendingUploads value)? checkPendingUploads,
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
    required TResult Function() startBackgroundMonitoring,
    required TResult Function() stopBackgroundMonitoring,
    required TResult Function() checkPendingUploads,
  }) {
    return getDocs(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
    TResult? Function()? startBackgroundMonitoring,
    TResult? Function()? stopBackgroundMonitoring,
    TResult? Function()? checkPendingUploads,
  }) {
    return getDocs?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    TResult Function()? startBackgroundMonitoring,
    TResult Function()? stopBackgroundMonitoring,
    TResult Function()? checkPendingUploads,
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
    required TResult Function(_StartBackgroundMonitoring value)
        startBackgroundMonitoring,
    required TResult Function(_StopBackgroundMonitoring value)
        stopBackgroundMonitoring,
    required TResult Function(_CheckPendingUploads value) checkPendingUploads,
  }) {
    return getDocs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
    TResult? Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult? Function(_StopBackgroundMonitoring value)?
        stopBackgroundMonitoring,
    TResult? Function(_CheckPendingUploads value)? checkPendingUploads,
  }) {
    return getDocs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    TResult Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult Function(_StopBackgroundMonitoring value)? stopBackgroundMonitoring,
    TResult Function(_CheckPendingUploads value)? checkPendingUploads,
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
    required TResult Function() startBackgroundMonitoring,
    required TResult Function() stopBackgroundMonitoring,
    required TResult Function() checkPendingUploads,
  }) {
    return startUpload(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
    TResult? Function()? startBackgroundMonitoring,
    TResult? Function()? stopBackgroundMonitoring,
    TResult? Function()? checkPendingUploads,
  }) {
    return startUpload?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    TResult Function()? startBackgroundMonitoring,
    TResult Function()? stopBackgroundMonitoring,
    TResult Function()? checkPendingUploads,
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
    required TResult Function(_StartBackgroundMonitoring value)
        startBackgroundMonitoring,
    required TResult Function(_StopBackgroundMonitoring value)
        stopBackgroundMonitoring,
    required TResult Function(_CheckPendingUploads value) checkPendingUploads,
  }) {
    return startUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
    TResult? Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult? Function(_StopBackgroundMonitoring value)?
        stopBackgroundMonitoring,
    TResult? Function(_CheckPendingUploads value)? checkPendingUploads,
  }) {
    return startUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    TResult Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult Function(_StopBackgroundMonitoring value)? stopBackgroundMonitoring,
    TResult Function(_CheckPendingUploads value)? checkPendingUploads,
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
    required TResult Function() startBackgroundMonitoring,
    required TResult Function() stopBackgroundMonitoring,
    required TResult Function() checkPendingUploads,
  }) {
    return retryUpload(docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
    TResult? Function()? startBackgroundMonitoring,
    TResult? Function()? stopBackgroundMonitoring,
    TResult? Function()? checkPendingUploads,
  }) {
    return retryUpload?.call(docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    TResult Function()? startBackgroundMonitoring,
    TResult Function()? stopBackgroundMonitoring,
    TResult Function()? checkPendingUploads,
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
    required TResult Function(_StartBackgroundMonitoring value)
        startBackgroundMonitoring,
    required TResult Function(_StopBackgroundMonitoring value)
        stopBackgroundMonitoring,
    required TResult Function(_CheckPendingUploads value) checkPendingUploads,
  }) {
    return retryUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
    TResult? Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult? Function(_StopBackgroundMonitoring value)?
        stopBackgroundMonitoring,
    TResult? Function(_CheckPendingUploads value)? checkPendingUploads,
  }) {
    return retryUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    TResult Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult Function(_StopBackgroundMonitoring value)? stopBackgroundMonitoring,
    TResult Function(_CheckPendingUploads value)? checkPendingUploads,
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
abstract class _$$StartBackgroundMonitoringImplCopyWith<$Res> {
  factory _$$StartBackgroundMonitoringImplCopyWith(
          _$StartBackgroundMonitoringImpl value,
          $Res Function(_$StartBackgroundMonitoringImpl) then) =
      __$$StartBackgroundMonitoringImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartBackgroundMonitoringImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$StartBackgroundMonitoringImpl>
    implements _$$StartBackgroundMonitoringImplCopyWith<$Res> {
  __$$StartBackgroundMonitoringImplCopyWithImpl(
      _$StartBackgroundMonitoringImpl _value,
      $Res Function(_$StartBackgroundMonitoringImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartBackgroundMonitoringImpl implements _StartBackgroundMonitoring {
  const _$StartBackgroundMonitoringImpl();

  @override
  String toString() {
    return 'DocsEvent.startBackgroundMonitoring()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartBackgroundMonitoringImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) startUpload,
    required TResult Function(int docId) retryUpload,
    required TResult Function() startBackgroundMonitoring,
    required TResult Function() stopBackgroundMonitoring,
    required TResult Function() checkPendingUploads,
  }) {
    return startBackgroundMonitoring();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
    TResult? Function()? startBackgroundMonitoring,
    TResult? Function()? stopBackgroundMonitoring,
    TResult? Function()? checkPendingUploads,
  }) {
    return startBackgroundMonitoring?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    TResult Function()? startBackgroundMonitoring,
    TResult Function()? stopBackgroundMonitoring,
    TResult Function()? checkPendingUploads,
    required TResult orElse(),
  }) {
    if (startBackgroundMonitoring != null) {
      return startBackgroundMonitoring();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
    required TResult Function(_StartBackgroundMonitoring value)
        startBackgroundMonitoring,
    required TResult Function(_StopBackgroundMonitoring value)
        stopBackgroundMonitoring,
    required TResult Function(_CheckPendingUploads value) checkPendingUploads,
  }) {
    return startBackgroundMonitoring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
    TResult? Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult? Function(_StopBackgroundMonitoring value)?
        stopBackgroundMonitoring,
    TResult? Function(_CheckPendingUploads value)? checkPendingUploads,
  }) {
    return startBackgroundMonitoring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    TResult Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult Function(_StopBackgroundMonitoring value)? stopBackgroundMonitoring,
    TResult Function(_CheckPendingUploads value)? checkPendingUploads,
    required TResult orElse(),
  }) {
    if (startBackgroundMonitoring != null) {
      return startBackgroundMonitoring(this);
    }
    return orElse();
  }
}

abstract class _StartBackgroundMonitoring implements DocsEvent {
  const factory _StartBackgroundMonitoring() = _$StartBackgroundMonitoringImpl;
}

/// @nodoc
abstract class _$$StopBackgroundMonitoringImplCopyWith<$Res> {
  factory _$$StopBackgroundMonitoringImplCopyWith(
          _$StopBackgroundMonitoringImpl value,
          $Res Function(_$StopBackgroundMonitoringImpl) then) =
      __$$StopBackgroundMonitoringImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopBackgroundMonitoringImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$StopBackgroundMonitoringImpl>
    implements _$$StopBackgroundMonitoringImplCopyWith<$Res> {
  __$$StopBackgroundMonitoringImplCopyWithImpl(
      _$StopBackgroundMonitoringImpl _value,
      $Res Function(_$StopBackgroundMonitoringImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopBackgroundMonitoringImpl implements _StopBackgroundMonitoring {
  const _$StopBackgroundMonitoringImpl();

  @override
  String toString() {
    return 'DocsEvent.stopBackgroundMonitoring()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopBackgroundMonitoringImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) startUpload,
    required TResult Function(int docId) retryUpload,
    required TResult Function() startBackgroundMonitoring,
    required TResult Function() stopBackgroundMonitoring,
    required TResult Function() checkPendingUploads,
  }) {
    return stopBackgroundMonitoring();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
    TResult? Function()? startBackgroundMonitoring,
    TResult? Function()? stopBackgroundMonitoring,
    TResult? Function()? checkPendingUploads,
  }) {
    return stopBackgroundMonitoring?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    TResult Function()? startBackgroundMonitoring,
    TResult Function()? stopBackgroundMonitoring,
    TResult Function()? checkPendingUploads,
    required TResult orElse(),
  }) {
    if (stopBackgroundMonitoring != null) {
      return stopBackgroundMonitoring();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
    required TResult Function(_StartBackgroundMonitoring value)
        startBackgroundMonitoring,
    required TResult Function(_StopBackgroundMonitoring value)
        stopBackgroundMonitoring,
    required TResult Function(_CheckPendingUploads value) checkPendingUploads,
  }) {
    return stopBackgroundMonitoring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
    TResult? Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult? Function(_StopBackgroundMonitoring value)?
        stopBackgroundMonitoring,
    TResult? Function(_CheckPendingUploads value)? checkPendingUploads,
  }) {
    return stopBackgroundMonitoring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    TResult Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult Function(_StopBackgroundMonitoring value)? stopBackgroundMonitoring,
    TResult Function(_CheckPendingUploads value)? checkPendingUploads,
    required TResult orElse(),
  }) {
    if (stopBackgroundMonitoring != null) {
      return stopBackgroundMonitoring(this);
    }
    return orElse();
  }
}

abstract class _StopBackgroundMonitoring implements DocsEvent {
  const factory _StopBackgroundMonitoring() = _$StopBackgroundMonitoringImpl;
}

/// @nodoc
abstract class _$$CheckPendingUploadsImplCopyWith<$Res> {
  factory _$$CheckPendingUploadsImplCopyWith(_$CheckPendingUploadsImpl value,
          $Res Function(_$CheckPendingUploadsImpl) then) =
      __$$CheckPendingUploadsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckPendingUploadsImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$CheckPendingUploadsImpl>
    implements _$$CheckPendingUploadsImplCopyWith<$Res> {
  __$$CheckPendingUploadsImplCopyWithImpl(_$CheckPendingUploadsImpl _value,
      $Res Function(_$CheckPendingUploadsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckPendingUploadsImpl implements _CheckPendingUploads {
  const _$CheckPendingUploadsImpl();

  @override
  String toString() {
    return 'DocsEvent.checkPendingUploads()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPendingUploadsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) startUpload,
    required TResult Function(int docId) retryUpload,
    required TResult Function() startBackgroundMonitoring,
    required TResult Function() stopBackgroundMonitoring,
    required TResult Function() checkPendingUploads,
  }) {
    return checkPendingUploads();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? startUpload,
    TResult? Function(int docId)? retryUpload,
    TResult? Function()? startBackgroundMonitoring,
    TResult? Function()? stopBackgroundMonitoring,
    TResult? Function()? checkPendingUploads,
  }) {
    return checkPendingUploads?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? startUpload,
    TResult Function(int docId)? retryUpload,
    TResult Function()? startBackgroundMonitoring,
    TResult Function()? stopBackgroundMonitoring,
    TResult Function()? checkPendingUploads,
    required TResult orElse(),
  }) {
    if (checkPendingUploads != null) {
      return checkPendingUploads();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_StartUpload value) startUpload,
    required TResult Function(_RetryUpload value) retryUpload,
    required TResult Function(_StartBackgroundMonitoring value)
        startBackgroundMonitoring,
    required TResult Function(_StopBackgroundMonitoring value)
        stopBackgroundMonitoring,
    required TResult Function(_CheckPendingUploads value) checkPendingUploads,
  }) {
    return checkPendingUploads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_StartUpload value)? startUpload,
    TResult? Function(_RetryUpload value)? retryUpload,
    TResult? Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult? Function(_StopBackgroundMonitoring value)?
        stopBackgroundMonitoring,
    TResult? Function(_CheckPendingUploads value)? checkPendingUploads,
  }) {
    return checkPendingUploads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_StartUpload value)? startUpload,
    TResult Function(_RetryUpload value)? retryUpload,
    TResult Function(_StartBackgroundMonitoring value)?
        startBackgroundMonitoring,
    TResult Function(_StopBackgroundMonitoring value)? stopBackgroundMonitoring,
    TResult Function(_CheckPendingUploads value)? checkPendingUploads,
    required TResult orElse(),
  }) {
    if (checkPendingUploads != null) {
      return checkPendingUploads(this);
    }
    return orElse();
  }
}

abstract class _CheckPendingUploads implements DocsEvent {
  const factory _CheckPendingUploads() = _$CheckPendingUploadsImpl;
}

/// @nodoc
mixin _$DocsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
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
    required TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
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
    required TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
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
  $Res call(
      {List<DocEntity>? docs,
      bool? hasMore,
      bool? backgroundMonitoringActive,
      bool? backgroundMonitoringInactive});
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
    Object? backgroundMonitoringActive = freezed,
    Object? backgroundMonitoringInactive = freezed,
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
      backgroundMonitoringActive: freezed == backgroundMonitoringActive
          ? _value.backgroundMonitoringActive
          : backgroundMonitoringActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      backgroundMonitoringInactive: freezed == backgroundMonitoringInactive
          ? _value.backgroundMonitoringInactive
          : backgroundMonitoringInactive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {final List<DocEntity>? docs = const [],
      this.hasMore = false,
      this.backgroundMonitoringActive = false,
      this.backgroundMonitoringInactive = false})
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
  @JsonKey()
  final bool? backgroundMonitoringActive;
  @override
  @JsonKey()
  final bool? backgroundMonitoringInactive;

  @override
  String toString() {
    return 'DocsState.loaded(docs: $docs, hasMore: $hasMore, backgroundMonitoringActive: $backgroundMonitoringActive, backgroundMonitoringInactive: $backgroundMonitoringInactive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.backgroundMonitoringActive,
                    backgroundMonitoringActive) ||
                other.backgroundMonitoringActive ==
                    backgroundMonitoringActive) &&
            (identical(other.backgroundMonitoringInactive,
                    backgroundMonitoringInactive) ||
                other.backgroundMonitoringInactive ==
                    backgroundMonitoringInactive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_docs),
      hasMore,
      backgroundMonitoringActive,
      backgroundMonitoringInactive);

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
    required TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loaded(docs, hasMore, backgroundMonitoringActive,
        backgroundMonitoringInactive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loaded?.call(docs, hasMore, backgroundMonitoringActive,
        backgroundMonitoringInactive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(docs, hasMore, backgroundMonitoringActive,
          backgroundMonitoringInactive);
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
  const factory _Loaded(
      {final List<DocEntity>? docs,
      final bool? hasMore,
      final bool? backgroundMonitoringActive,
      final bool? backgroundMonitoringInactive}) = _$LoadedImpl;

  List<DocEntity>? get docs;
  bool? get hasMore;
  bool? get backgroundMonitoringActive;
  bool? get backgroundMonitoringInactive;

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
    required TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)
        loaded,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return failure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return failure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            List<DocEntity>? docs,
            bool? hasMore,
            bool? backgroundMonitoringActive,
            bool? backgroundMonitoringInactive)?
        loaded,
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
