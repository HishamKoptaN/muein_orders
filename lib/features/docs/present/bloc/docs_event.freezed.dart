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
    required TResult Function(AddDocReqEntity addDocReqEntity) updateData,
    required TResult Function() createDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult? Function()? createDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult Function()? createDoc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_CreateDoc value) createDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_CreateDoc value)? createDoc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_CreateDoc value)? createDoc,
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
    required TResult Function(AddDocReqEntity addDocReqEntity) updateData,
    required TResult Function() createDoc,
  }) {
    return getDocs(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult? Function()? createDoc,
  }) {
    return getDocs?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult Function()? createDoc,
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
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_CreateDoc value) createDoc,
  }) {
    return getDocs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_CreateDoc value)? createDoc,
  }) {
    return getDocs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_CreateDoc value)? createDoc,
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
abstract class _$$UpdateDataImplCopyWith<$Res> {
  factory _$$UpdateDataImplCopyWith(
          _$UpdateDataImpl value, $Res Function(_$UpdateDataImpl) then) =
      __$$UpdateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddDocReqEntity addDocReqEntity});

  $AddDocReqEntityCopyWith<$Res> get addDocReqEntity;
}

/// @nodoc
class __$$UpdateDataImplCopyWithImpl<$Res>
    extends _$DocsEventCopyWithImpl<$Res, _$UpdateDataImpl>
    implements _$$UpdateDataImplCopyWith<$Res> {
  __$$UpdateDataImplCopyWithImpl(
      _$UpdateDataImpl _value, $Res Function(_$UpdateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addDocReqEntity = null,
  }) {
    return _then(_$UpdateDataImpl(
      addDocReqEntity: null == addDocReqEntity
          ? _value.addDocReqEntity
          : addDocReqEntity // ignore: cast_nullable_to_non_nullable
              as AddDocReqEntity,
    ));
  }

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddDocReqEntityCopyWith<$Res> get addDocReqEntity {
    return $AddDocReqEntityCopyWith<$Res>(_value.addDocReqEntity, (value) {
      return _then(_value.copyWith(addDocReqEntity: value));
    });
  }
}

/// @nodoc

class _$UpdateDataImpl implements _UpdateData {
  const _$UpdateDataImpl({required this.addDocReqEntity});

  @override
  final AddDocReqEntity addDocReqEntity;

  @override
  String toString() {
    return 'DocsEvent.updateData(addDocReqEntity: $addDocReqEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataImpl &&
            (identical(other.addDocReqEntity, addDocReqEntity) ||
                other.addDocReqEntity == addDocReqEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addDocReqEntity);

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
      __$$UpdateDataImplCopyWithImpl<_$UpdateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int orderId) getDocs,
    required TResult Function(AddDocReqEntity addDocReqEntity) updateData,
    required TResult Function() createDoc,
  }) {
    return updateData(addDocReqEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult? Function()? createDoc,
  }) {
    return updateData?.call(addDocReqEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult Function()? createDoc,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(addDocReqEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDocs value) getDocs,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_CreateDoc value) createDoc,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_CreateDoc value)? createDoc,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_CreateDoc value)? createDoc,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _UpdateData implements DocsEvent {
  const factory _UpdateData({required final AddDocReqEntity addDocReqEntity}) =
      _$UpdateDataImpl;

  AddDocReqEntity get addDocReqEntity;

  /// Create a copy of DocsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
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
    required TResult Function(AddDocReqEntity addDocReqEntity) updateData,
    required TResult Function() createDoc,
  }) {
    return createDoc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int orderId)? getDocs,
    TResult? Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult? Function()? createDoc,
  }) {
    return createDoc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int orderId)? getDocs,
    TResult Function(AddDocReqEntity addDocReqEntity)? updateData,
    TResult Function()? createDoc,
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
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_CreateDoc value) createDoc,
  }) {
    return createDoc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDocs value)? getDocs,
    TResult? Function(_UpdateData value)? updateData,
    TResult? Function(_CreateDoc value)? createDoc,
  }) {
    return createDoc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDocs value)? getDocs,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_CreateDoc value)? createDoc,
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
