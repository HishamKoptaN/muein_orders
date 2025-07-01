// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_event.dart';

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
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
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
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return getDocs(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return getDocs?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
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
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return getDocs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return getDocs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
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
abstract class _$$OrderIdChangedImplCopyWith<$Res> {
  factory _$$OrderIdChangedImplCopyWith(_$OrderIdChangedImpl value,
          $Res Function(_$OrderIdChangedImpl) then) =
      __$$OrderIdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$OrderIdChangedImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$OrderIdChangedImpl>
    implements _$$OrderIdChangedImplCopyWith<$Res> {
  __$$OrderIdChangedImplCopyWithImpl(
      _$OrderIdChangedImpl _value, $Res Function(_$OrderIdChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$OrderIdChangedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OrderIdChangedImpl implements _OrderIdChanged {
  const _$OrderIdChangedImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'DocsEvent.orderIdChanged(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderIdChangedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderIdChangedImplCopyWith<_$OrderIdChangedImpl> get copyWith =>
      __$$OrderIdChangedImplCopyWithImpl<_$OrderIdChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return orderIdChanged(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return orderIdChanged?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (orderIdChanged != null) {
      return orderIdChanged(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return orderIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return orderIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (orderIdChanged != null) {
      return orderIdChanged(this);
    }
    return orElse();
  }
}

abstract class _OrderIdChanged implements DocsEvent {
  const factory _OrderIdChanged({required final int orderId}) =
      _$OrderIdChangedImpl;

  int get orderId;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderIdChangedImplCopyWith<_$OrderIdChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoOneChangedImplCopyWith<$Res> {
  factory _$$VideoOneChangedImplCopyWith(_$VideoOneChangedImpl value,
          $Res Function(_$VideoOneChangedImpl) then) =
      __$$VideoOneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$VideoOneChangedImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$VideoOneChangedImpl>
    implements _$$VideoOneChangedImplCopyWith<$Res> {
  __$$VideoOneChangedImplCopyWithImpl(
      _$VideoOneChangedImpl _value, $Res Function(_$VideoOneChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$VideoOneChangedImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$VideoOneChangedImpl implements _VideoOneChanged {
  const _$VideoOneChangedImpl({required this.file});

  @override
  final File? file;

  @override
  String toString() {
    return 'DocsEvent.videoOneChanged(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoOneChangedImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoOneChangedImplCopyWith<_$VideoOneChangedImpl> get copyWith =>
      __$$VideoOneChangedImplCopyWithImpl<_$VideoOneChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return videoOneChanged(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return videoOneChanged?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (videoOneChanged != null) {
      return videoOneChanged(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return videoOneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return videoOneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (videoOneChanged != null) {
      return videoOneChanged(this);
    }
    return orElse();
  }
}

abstract class _VideoOneChanged implements DocsEvent {
  const factory _VideoOneChanged({required final File? file}) =
      _$VideoOneChangedImpl;

  File? get file;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoOneChangedImplCopyWith<_$VideoOneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoTwoChangedImplCopyWith<$Res> {
  factory _$$VideoTwoChangedImplCopyWith(_$VideoTwoChangedImpl value,
          $Res Function(_$VideoTwoChangedImpl) then) =
      __$$VideoTwoChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$VideoTwoChangedImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$VideoTwoChangedImpl>
    implements _$$VideoTwoChangedImplCopyWith<$Res> {
  __$$VideoTwoChangedImplCopyWithImpl(
      _$VideoTwoChangedImpl _value, $Res Function(_$VideoTwoChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$VideoTwoChangedImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$VideoTwoChangedImpl implements _VideoTwoChanged {
  const _$VideoTwoChangedImpl({required this.file});

  @override
  final File? file;

  @override
  String toString() {
    return 'DocsEvent.videoTwoChanged(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoTwoChangedImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoTwoChangedImplCopyWith<_$VideoTwoChangedImpl> get copyWith =>
      __$$VideoTwoChangedImplCopyWithImpl<_$VideoTwoChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return videoTwoChanged(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return videoTwoChanged?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (videoTwoChanged != null) {
      return videoTwoChanged(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return videoTwoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return videoTwoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (videoTwoChanged != null) {
      return videoTwoChanged(this);
    }
    return orElse();
  }
}

abstract class _VideoTwoChanged implements DocsEvent {
  const factory _VideoTwoChanged({required final File? file}) =
      _$VideoTwoChangedImpl;

  File? get file;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoTwoChangedImplCopyWith<_$VideoTwoChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageOneChangedImplCopyWith<$Res> {
  factory _$$ImageOneChangedImplCopyWith(_$ImageOneChangedImpl value,
          $Res Function(_$ImageOneChangedImpl) then) =
      __$$ImageOneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$ImageOneChangedImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$ImageOneChangedImpl>
    implements _$$ImageOneChangedImplCopyWith<$Res> {
  __$$ImageOneChangedImplCopyWithImpl(
      _$ImageOneChangedImpl _value, $Res Function(_$ImageOneChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$ImageOneChangedImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ImageOneChangedImpl implements _ImageOneChanged {
  const _$ImageOneChangedImpl({required this.file});

  @override
  final File? file;

  @override
  String toString() {
    return 'DocsEvent.imageOneChanged(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageOneChangedImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageOneChangedImplCopyWith<_$ImageOneChangedImpl> get copyWith =>
      __$$ImageOneChangedImplCopyWithImpl<_$ImageOneChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return imageOneChanged(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return imageOneChanged?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (imageOneChanged != null) {
      return imageOneChanged(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return imageOneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return imageOneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (imageOneChanged != null) {
      return imageOneChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageOneChanged implements DocsEvent {
  const factory _ImageOneChanged({required final File? file}) =
      _$ImageOneChangedImpl;

  File? get file;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageOneChangedImplCopyWith<_$ImageOneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageTwoChangedImplCopyWith<$Res> {
  factory _$$ImageTwoChangedImplCopyWith(_$ImageTwoChangedImpl value,
          $Res Function(_$ImageTwoChangedImpl) then) =
      __$$ImageTwoChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$ImageTwoChangedImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$ImageTwoChangedImpl>
    implements _$$ImageTwoChangedImplCopyWith<$Res> {
  __$$ImageTwoChangedImplCopyWithImpl(
      _$ImageTwoChangedImpl _value, $Res Function(_$ImageTwoChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$ImageTwoChangedImpl(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ImageTwoChangedImpl implements _ImageTwoChanged {
  const _$ImageTwoChangedImpl({required this.file});

  @override
  final File? file;

  @override
  String toString() {
    return 'DocsEvent.imageTwoChanged(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTwoChangedImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTwoChangedImplCopyWith<_$ImageTwoChangedImpl> get copyWith =>
      __$$ImageTwoChangedImplCopyWithImpl<_$ImageTwoChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return imageTwoChanged(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return imageTwoChanged?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (imageTwoChanged != null) {
      return imageTwoChanged(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return imageTwoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return imageTwoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (imageTwoChanged != null) {
      return imageTwoChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageTwoChanged implements DocsEvent {
  const factory _ImageTwoChanged({required final File? file}) =
      _$ImageTwoChangedImpl;

  File? get file;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageTwoChangedImplCopyWith<_$ImageTwoChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLocationImplCopyWith<$Res> {
  factory _$$UpdateLocationImplCopyWith(_$UpdateLocationImpl value,
          $Res Function(_$UpdateLocationImpl) then) =
      __$$UpdateLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String latitude, String longitude});
}

/// @nodoc
class __$$UpdateLocationImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$UpdateLocationImpl>
    implements _$$UpdateLocationImplCopyWith<$Res> {
  __$$UpdateLocationImplCopyWithImpl(
      _$UpdateLocationImpl _value, $Res Function(_$UpdateLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$UpdateLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateLocationImpl implements _UpdateLocation {
  const _$UpdateLocationImpl({required this.latitude, required this.longitude});

  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'DocsEvent.updateLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLocationImplCopyWith<_$UpdateLocationImpl> get copyWith =>
      __$$UpdateLocationImplCopyWithImpl<_$UpdateLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return updateLocation(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return updateLocation?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return updateLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return updateLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (updateLocation != null) {
      return updateLocation(this);
    }
    return orElse();
  }
}

abstract class _UpdateLocation implements DocsEvent {
  const factory _UpdateLocation(
      {required final String latitude,
      required final String longitude}) = _$UpdateLocationImpl;

  String get latitude;
  String get longitude;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLocationImplCopyWith<_$UpdateLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateDocImplCopyWith<$Res> {
  factory _$$CreateDocImplCopyWith(
          _$CreateDocImpl value, $Res Function(_$CreateDocImpl) then) =
      __$$CreateDocImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateDocImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$CreateDocImpl>
    implements _$$CreateDocImplCopyWith<$Res> {
  __$$CreateDocImplCopyWithImpl(
      _$CreateDocImpl _value, $Res Function(_$CreateDocImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateDocImpl implements _CreateDoc {
  const _$CreateDocImpl();

  @override
  String toString() {
    return 'DocsEvent.createDoc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateDocImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return createDoc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return createDoc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (createDoc != null) {
      return createDoc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return createDoc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return createDoc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (createDoc != null) {
      return createDoc(this);
    }
    return orElse();
  }
}

abstract class _CreateDoc implements DocsEvent {
  const factory _CreateDoc() = _$CreateDocImpl;
}

/// @nodoc
abstract class _$$ResumePendingUploadsImplCopyWith<$Res> {
  factory _$$ResumePendingUploadsImplCopyWith(_$ResumePendingUploadsImpl value,
          $Res Function(_$ResumePendingUploadsImpl) then) =
      __$$ResumePendingUploadsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumePendingUploadsImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$ResumePendingUploadsImpl>
    implements _$$ResumePendingUploadsImplCopyWith<$Res> {
  __$$ResumePendingUploadsImplCopyWithImpl(_$ResumePendingUploadsImpl _value,
      $Res Function(_$ResumePendingUploadsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumePendingUploadsImpl implements _ResumePendingUploads {
  const _$ResumePendingUploadsImpl();

  @override
  String toString() {
    return 'DocsEvent.resumePendingUploads()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumePendingUploadsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return resumePendingUploads();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return resumePendingUploads?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (resumePendingUploads != null) {
      return resumePendingUploads();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return resumePendingUploads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return resumePendingUploads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (resumePendingUploads != null) {
      return resumePendingUploads(this);
    }
    return orElse();
  }
}

abstract class _ResumePendingUploads implements DocsEvent {
  const factory _ResumePendingUploads() = _$ResumePendingUploadsImpl;
}

/// @nodoc
abstract class _$$GetUploadStatusForOrderImplCopyWith<$Res> {
  factory _$$GetUploadStatusForOrderImplCopyWith(
          _$GetUploadStatusForOrderImpl value,
          $Res Function(_$GetUploadStatusForOrderImpl) then) =
      __$$GetUploadStatusForOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUploadStatusForOrderImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$GetUploadStatusForOrderImpl>
    implements _$$GetUploadStatusForOrderImplCopyWith<$Res> {
  __$$GetUploadStatusForOrderImplCopyWithImpl(
      _$GetUploadStatusForOrderImpl _value,
      $Res Function(_$GetUploadStatusForOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUploadStatusForOrderImpl implements _GetUploadStatusForOrder {
  const _$GetUploadStatusForOrderImpl();

  @override
  String toString() {
    return 'DocsEvent.getUploadStatusForOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUploadStatusForOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(int orderId) orderIdChanged,
    required TResult Function(File? file) videoOneChanged,
    required TResult Function(File? file) videoTwoChanged,
    required TResult Function(File? file) imageOneChanged,
    required TResult Function(File? file) imageTwoChanged,
    required TResult Function(String latitude, String longitude) updateLocation,
    required TResult Function() createDoc,
    required TResult Function() resumePendingUploads,
    required TResult Function() getUploadStatusForOrder,
  }) {
    return getUploadStatusForOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(int orderId)? orderIdChanged,
    TResult? Function(File? file)? videoOneChanged,
    TResult? Function(File? file)? videoTwoChanged,
    TResult? Function(File? file)? imageOneChanged,
    TResult? Function(File? file)? imageTwoChanged,
    TResult? Function(String latitude, String longitude)? updateLocation,
    TResult? Function()? createDoc,
    TResult? Function()? resumePendingUploads,
    TResult? Function()? getUploadStatusForOrder,
  }) {
    return getUploadStatusForOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(int orderId)? orderIdChanged,
    TResult Function(File? file)? videoOneChanged,
    TResult Function(File? file)? videoTwoChanged,
    TResult Function(File? file)? imageOneChanged,
    TResult Function(File? file)? imageTwoChanged,
    TResult Function(String latitude, String longitude)? updateLocation,
    TResult Function()? createDoc,
    TResult Function()? resumePendingUploads,
    TResult Function()? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (getUploadStatusForOrder != null) {
      return getUploadStatusForOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_OrderIdChanged value) orderIdChanged,
    required TResult Function(_VideoOneChanged value) videoOneChanged,
    required TResult Function(_VideoTwoChanged value) videoTwoChanged,
    required TResult Function(_ImageOneChanged value) imageOneChanged,
    required TResult Function(_ImageTwoChanged value) imageTwoChanged,
    required TResult Function(_UpdateLocation value) updateLocation,
    required TResult Function(_CreateDoc value) createDoc,
    required TResult Function(_ResumePendingUploads value) resumePendingUploads,
    required TResult Function(_GetUploadStatusForOrder value)
        getUploadStatusForOrder,
  }) {
    return getUploadStatusForOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_OrderIdChanged value)? orderIdChanged,
    TResult? Function(_VideoOneChanged value)? videoOneChanged,
    TResult? Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult? Function(_ImageOneChanged value)? imageOneChanged,
    TResult? Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult? Function(_UpdateLocation value)? updateLocation,
    TResult? Function(_CreateDoc value)? createDoc,
    TResult? Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult? Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
  }) {
    return getUploadStatusForOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_OrderIdChanged value)? orderIdChanged,
    TResult Function(_VideoOneChanged value)? videoOneChanged,
    TResult Function(_VideoTwoChanged value)? videoTwoChanged,
    TResult Function(_ImageOneChanged value)? imageOneChanged,
    TResult Function(_ImageTwoChanged value)? imageTwoChanged,
    TResult Function(_UpdateLocation value)? updateLocation,
    TResult Function(_CreateDoc value)? createDoc,
    TResult Function(_ResumePendingUploads value)? resumePendingUploads,
    TResult Function(_GetUploadStatusForOrder value)? getUploadStatusForOrder,
    required TResult orElse(),
  }) {
    if (getUploadStatusForOrder != null) {
      return getUploadStatusForOrder(this);
    }
    return orElse();
  }
}

abstract class _GetUploadStatusForOrder implements DocsEvent {
  const factory _GetUploadStatusForOrder() = _$GetUploadStatusForOrderImpl;
}
