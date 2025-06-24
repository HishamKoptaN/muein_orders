// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocsResEntity _$DocsResEntityFromJson(Map<String, dynamic> json) {
  return _DocsResEntity.fromJson(json);
}

/// @nodoc
mixin _$DocsResEntity {
  List<DocEntity>? get docs => throw _privateConstructorUsedError;
  MetaEntity? get meta => throw _privateConstructorUsedError;

  /// Serializes this DocsResEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocsResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocsResEntityCopyWith<DocsResEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocsResEntityCopyWith<$Res> {
  factory $DocsResEntityCopyWith(
          DocsResEntity value, $Res Function(DocsResEntity) then) =
      _$DocsResEntityCopyWithImpl<$Res, DocsResEntity>;
  @useResult
  $Res call({List<DocEntity>? docs, MetaEntity? meta});

  $MetaEntityCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DocsResEntityCopyWithImpl<$Res, $Val extends DocsResEntity>
    implements $DocsResEntityCopyWith<$Res> {
  _$DocsResEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocsResEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      docs: freezed == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<DocEntity>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity?,
    ) as $Val);
  }

  /// Create a copy of DocsResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaEntityCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaEntityCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocsResEntityImplCopyWith<$Res>
    implements $DocsResEntityCopyWith<$Res> {
  factory _$$DocsResEntityImplCopyWith(
          _$DocsResEntityImpl value, $Res Function(_$DocsResEntityImpl) then) =
      __$$DocsResEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DocEntity>? docs, MetaEntity? meta});

  @override
  $MetaEntityCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$DocsResEntityImplCopyWithImpl<$Res>
    extends _$DocsResEntityCopyWithImpl<$Res, _$DocsResEntityImpl>
    implements _$$DocsResEntityImplCopyWith<$Res> {
  __$$DocsResEntityImplCopyWithImpl(
      _$DocsResEntityImpl _value, $Res Function(_$DocsResEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsResEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$DocsResEntityImpl(
      docs: freezed == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<DocEntity>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocsResEntityImpl implements _DocsResEntity {
  const _$DocsResEntityImpl({final List<DocEntity>? docs, this.meta})
      : _docs = docs;

  factory _$DocsResEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocsResEntityImplFromJson(json);

  final List<DocEntity>? _docs;
  @override
  List<DocEntity>? get docs {
    final value = _docs;
    if (value == null) return null;
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MetaEntity? meta;

  @override
  String toString() {
    return 'DocsResEntity(docs: $docs, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocsResEntityImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_docs), meta);

  /// Create a copy of DocsResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocsResEntityImplCopyWith<_$DocsResEntityImpl> get copyWith =>
      __$$DocsResEntityImplCopyWithImpl<_$DocsResEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocsResEntityImplToJson(
      this,
    );
  }
}

abstract class _DocsResEntity implements DocsResEntity {
  const factory _DocsResEntity(
      {final List<DocEntity>? docs,
      final MetaEntity? meta}) = _$DocsResEntityImpl;

  factory _DocsResEntity.fromJson(Map<String, dynamic> json) =
      _$DocsResEntityImpl.fromJson;

  @override
  List<DocEntity>? get docs;
  @override
  MetaEntity? get meta;

  /// Create a copy of DocsResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocsResEntityImplCopyWith<_$DocsResEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DocEntity _$DocEntityFromJson(Map<String, dynamic> json) {
  return _DocEntity.fromJson(json);
}

/// @nodoc
mixin _$DocEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  String? get videoOne => throw _privateConstructorUsedError;
  String? get videoTwo => throw _privateConstructorUsedError;
  String? get thumbnailUrlOne => throw _privateConstructorUsedError;
  String? get thumbnailUrlTwo => throw _privateConstructorUsedError;
  String? get imageOne => throw _privateConstructorUsedError;
  String? get imageTwo => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  int? get branchId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DocEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocEntityCopyWith<DocEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocEntityCopyWith<$Res> {
  factory $DocEntityCopyWith(DocEntity value, $Res Function(DocEntity) then) =
      _$DocEntityCopyWithImpl<$Res, DocEntity>;
  @useResult
  $Res call(
      {int? id,
      String? orderNumber,
      String? place,
      String? videoOne,
      String? videoTwo,
      String? thumbnailUrlOne,
      String? thumbnailUrlTwo,
      String? imageOne,
      String? imageTwo,
      String? updatedAt,
      String? latitude,
      String? longitude,
      int? branchId,
      String? createdAt});
}

/// @nodoc
class _$DocEntityCopyWithImpl<$Res, $Val extends DocEntity>
    implements $DocEntityCopyWith<$Res> {
  _$DocEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? place = freezed,
    Object? videoOne = freezed,
    Object? videoTwo = freezed,
    Object? thumbnailUrlOne = freezed,
    Object? thumbnailUrlTwo = freezed,
    Object? imageOne = freezed,
    Object? imageTwo = freezed,
    Object? updatedAt = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? branchId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      videoOne: freezed == videoOne
          ? _value.videoOne
          : videoOne // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTwo: freezed == videoTwo
          ? _value.videoTwo
          : videoTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrlOne: freezed == thumbnailUrlOne
          ? _value.thumbnailUrlOne
          : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrlTwo: freezed == thumbnailUrlTwo
          ? _value.thumbnailUrlTwo
          : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      imageOne: freezed == imageOne
          ? _value.imageOne
          : imageOne // ignore: cast_nullable_to_non_nullable
              as String?,
      imageTwo: freezed == imageTwo
          ? _value.imageTwo
          : imageTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocEntityImplCopyWith<$Res>
    implements $DocEntityCopyWith<$Res> {
  factory _$$DocEntityImplCopyWith(
          _$DocEntityImpl value, $Res Function(_$DocEntityImpl) then) =
      __$$DocEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? orderNumber,
      String? place,
      String? videoOne,
      String? videoTwo,
      String? thumbnailUrlOne,
      String? thumbnailUrlTwo,
      String? imageOne,
      String? imageTwo,
      String? updatedAt,
      String? latitude,
      String? longitude,
      int? branchId,
      String? createdAt});
}

/// @nodoc
class __$$DocEntityImplCopyWithImpl<$Res>
    extends _$DocEntityCopyWithImpl<$Res, _$DocEntityImpl>
    implements _$$DocEntityImplCopyWith<$Res> {
  __$$DocEntityImplCopyWithImpl(
      _$DocEntityImpl _value, $Res Function(_$DocEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? place = freezed,
    Object? videoOne = freezed,
    Object? videoTwo = freezed,
    Object? thumbnailUrlOne = freezed,
    Object? thumbnailUrlTwo = freezed,
    Object? imageOne = freezed,
    Object? imageTwo = freezed,
    Object? updatedAt = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? branchId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$DocEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      videoOne: freezed == videoOne
          ? _value.videoOne
          : videoOne // ignore: cast_nullable_to_non_nullable
              as String?,
      videoTwo: freezed == videoTwo
          ? _value.videoTwo
          : videoTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrlOne: freezed == thumbnailUrlOne
          ? _value.thumbnailUrlOne
          : thumbnailUrlOne // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrlTwo: freezed == thumbnailUrlTwo
          ? _value.thumbnailUrlTwo
          : thumbnailUrlTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      imageOne: freezed == imageOne
          ? _value.imageOne
          : imageOne // ignore: cast_nullable_to_non_nullable
              as String?,
      imageTwo: freezed == imageTwo
          ? _value.imageTwo
          : imageTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocEntityImpl implements _DocEntity {
  const _$DocEntityImpl(
      {this.id,
      this.orderNumber,
      this.place,
      this.videoOne,
      this.videoTwo,
      this.thumbnailUrlOne,
      this.thumbnailUrlTwo,
      this.imageOne,
      this.imageTwo,
      this.updatedAt,
      this.latitude,
      this.longitude,
      this.branchId,
      this.createdAt});

  factory _$DocEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? orderNumber;
  @override
  final String? place;
  @override
  final String? videoOne;
  @override
  final String? videoTwo;
  @override
  final String? thumbnailUrlOne;
  @override
  final String? thumbnailUrlTwo;
  @override
  final String? imageOne;
  @override
  final String? imageTwo;
  @override
  final String? updatedAt;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final int? branchId;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'DocEntity(id: $id, orderNumber: $orderNumber, place: $place, videoOne: $videoOne, videoTwo: $videoTwo, thumbnailUrlOne: $thumbnailUrlOne, thumbnailUrlTwo: $thumbnailUrlTwo, imageOne: $imageOne, imageTwo: $imageTwo, updatedAt: $updatedAt, latitude: $latitude, longitude: $longitude, branchId: $branchId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.videoOne, videoOne) ||
                other.videoOne == videoOne) &&
            (identical(other.videoTwo, videoTwo) ||
                other.videoTwo == videoTwo) &&
            (identical(other.thumbnailUrlOne, thumbnailUrlOne) ||
                other.thumbnailUrlOne == thumbnailUrlOne) &&
            (identical(other.thumbnailUrlTwo, thumbnailUrlTwo) ||
                other.thumbnailUrlTwo == thumbnailUrlTwo) &&
            (identical(other.imageOne, imageOne) ||
                other.imageOne == imageOne) &&
            (identical(other.imageTwo, imageTwo) ||
                other.imageTwo == imageTwo) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderNumber,
      place,
      videoOne,
      videoTwo,
      thumbnailUrlOne,
      thumbnailUrlTwo,
      imageOne,
      imageTwo,
      updatedAt,
      latitude,
      longitude,
      branchId,
      createdAt);

  /// Create a copy of DocEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocEntityImplCopyWith<_$DocEntityImpl> get copyWith =>
      __$$DocEntityImplCopyWithImpl<_$DocEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocEntityImplToJson(
      this,
    );
  }
}

abstract class _DocEntity implements DocEntity {
  const factory _DocEntity(
      {final int? id,
      final String? orderNumber,
      final String? place,
      final String? videoOne,
      final String? videoTwo,
      final String? thumbnailUrlOne,
      final String? thumbnailUrlTwo,
      final String? imageOne,
      final String? imageTwo,
      final String? updatedAt,
      final String? latitude,
      final String? longitude,
      final int? branchId,
      final String? createdAt}) = _$DocEntityImpl;

  factory _DocEntity.fromJson(Map<String, dynamic> json) =
      _$DocEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get orderNumber;
  @override
  String? get place;
  @override
  String? get videoOne;
  @override
  String? get videoTwo;
  @override
  String? get thumbnailUrlOne;
  @override
  String? get thumbnailUrlTwo;
  @override
  String? get imageOne;
  @override
  String? get imageTwo;
  @override
  String? get updatedAt;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  int? get branchId;
  @override
  String? get createdAt;

  /// Create a copy of DocEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocEntityImplCopyWith<_$DocEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
