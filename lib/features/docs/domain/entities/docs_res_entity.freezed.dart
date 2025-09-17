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
  @JsonKey(name: 'docs')
  List<DocEntity>? get docs => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetaEntity? get meta => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'docs') List<DocEntity>? docs,
            @JsonKey(name: 'meta') MetaEntity? meta)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'docs') List<DocEntity>? docs,
            @JsonKey(name: 'meta') MetaEntity? meta)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'docs') List<DocEntity>? docs,
            @JsonKey(name: 'meta') MetaEntity? meta)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DocsResEntity value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DocsResEntity value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DocsResEntity value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'docs') List<DocEntity>? docs,
      @JsonKey(name: 'meta') MetaEntity? meta});

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
  $Res call(
      {@JsonKey(name: 'docs') List<DocEntity>? docs,
      @JsonKey(name: 'meta') MetaEntity? meta});

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
  const _$DocsResEntityImpl(
      {@JsonKey(name: 'docs') final List<DocEntity>? docs,
      @JsonKey(name: 'meta') this.meta})
      : _docs = docs;

  factory _$DocsResEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocsResEntityImplFromJson(json);

  final List<DocEntity>? _docs;
  @override
  @JsonKey(name: 'docs')
  List<DocEntity>? get docs {
    final value = _docs;
    if (value == null) return null;
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'meta')
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'docs') List<DocEntity>? docs,
            @JsonKey(name: 'meta') MetaEntity? meta)
        $default,
  ) {
    return $default(docs, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'docs') List<DocEntity>? docs,
            @JsonKey(name: 'meta') MetaEntity? meta)?
        $default,
  ) {
    return $default?.call(docs, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'docs') List<DocEntity>? docs,
            @JsonKey(name: 'meta') MetaEntity? meta)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(docs, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DocsResEntity value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DocsResEntity value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DocsResEntity value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DocsResEntityImplToJson(
      this,
    );
  }
}

abstract class _DocsResEntity implements DocsResEntity {
  const factory _DocsResEntity(
      {@JsonKey(name: 'docs') final List<DocEntity>? docs,
      @JsonKey(name: 'meta') final MetaEntity? meta}) = _$DocsResEntityImpl;

  factory _DocsResEntity.fromJson(Map<String, dynamic> json) =
      _$DocsResEntityImpl.fromJson;

  @override
  @JsonKey(name: 'docs')
  List<DocEntity>? get docs;
  @override
  @JsonKey(name: 'meta')
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
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String? get orderNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'place')
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_one')
  String? get videoOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_two')
  String? get videoTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url_one')
  String? get thumbnailUrlOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url_two')
  String? get thumbnailUrlTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_one')
  String? get imageOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_two')
  String? get imageTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_id')
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'order_number') String? orderNumber,
            @JsonKey(name: 'place') String? place,
            @JsonKey(name: 'video_one') String? videoOne,
            @JsonKey(name: 'video_two') String? videoTwo,
            @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
            @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
            @JsonKey(name: 'image_one') String? imageOne,
            @JsonKey(name: 'image_two') String? imageTwo,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'latitude') String? latitude,
            @JsonKey(name: 'longitude') String? longitude,
            @JsonKey(name: 'branch_id') int? branchId,
            @JsonKey(name: 'created_at') String? createdAt)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'order_number') String? orderNumber,
            @JsonKey(name: 'place') String? place,
            @JsonKey(name: 'video_one') String? videoOne,
            @JsonKey(name: 'video_two') String? videoTwo,
            @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
            @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
            @JsonKey(name: 'image_one') String? imageOne,
            @JsonKey(name: 'image_two') String? imageTwo,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'latitude') String? latitude,
            @JsonKey(name: 'longitude') String? longitude,
            @JsonKey(name: 'branch_id') int? branchId,
            @JsonKey(name: 'created_at') String? createdAt)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'order_number') String? orderNumber,
            @JsonKey(name: 'place') String? place,
            @JsonKey(name: 'video_one') String? videoOne,
            @JsonKey(name: 'video_two') String? videoTwo,
            @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
            @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
            @JsonKey(name: 'image_one') String? imageOne,
            @JsonKey(name: 'image_two') String? imageTwo,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'latitude') String? latitude,
            @JsonKey(name: 'longitude') String? longitude,
            @JsonKey(name: 'branch_id') int? branchId,
            @JsonKey(name: 'created_at') String? createdAt)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DocEntity value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DocEntity value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DocEntity value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'order_number') String? orderNumber,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'video_one') String? videoOne,
      @JsonKey(name: 'video_two') String? videoTwo,
      @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
      @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
      @JsonKey(name: 'image_one') String? imageOne,
      @JsonKey(name: 'image_two') String? imageTwo,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'branch_id') int? branchId,
      @JsonKey(name: 'created_at') String? createdAt});
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
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'order_number') String? orderNumber,
      @JsonKey(name: 'place') String? place,
      @JsonKey(name: 'video_one') String? videoOne,
      @JsonKey(name: 'video_two') String? videoTwo,
      @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
      @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
      @JsonKey(name: 'image_one') String? imageOne,
      @JsonKey(name: 'image_two') String? imageTwo,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'branch_id') int? branchId,
      @JsonKey(name: 'created_at') String? createdAt});
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
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'order_number') this.orderNumber,
      @JsonKey(name: 'place') this.place,
      @JsonKey(name: 'video_one') this.videoOne,
      @JsonKey(name: 'video_two') this.videoTwo,
      @JsonKey(name: 'thumbnail_url_one') this.thumbnailUrlOne,
      @JsonKey(name: 'thumbnail_url_two') this.thumbnailUrlTwo,
      @JsonKey(name: 'image_one') this.imageOne,
      @JsonKey(name: 'image_two') this.imageTwo,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'branch_id') this.branchId,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$DocEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'order_number')
  final String? orderNumber;
  @override
  @JsonKey(name: 'place')
  final String? place;
  @override
  @JsonKey(name: 'video_one')
  final String? videoOne;
  @override
  @JsonKey(name: 'video_two')
  final String? videoTwo;
  @override
  @JsonKey(name: 'thumbnail_url_one')
  final String? thumbnailUrlOne;
  @override
  @JsonKey(name: 'thumbnail_url_two')
  final String? thumbnailUrlTwo;
  @override
  @JsonKey(name: 'image_one')
  final String? imageOne;
  @override
  @JsonKey(name: 'image_two')
  final String? imageTwo;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'latitude')
  final String? latitude;
  @override
  @JsonKey(name: 'longitude')
  final String? longitude;
  @override
  @JsonKey(name: 'branch_id')
  final int? branchId;
  @override
  @JsonKey(name: 'created_at')
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'order_number') String? orderNumber,
            @JsonKey(name: 'place') String? place,
            @JsonKey(name: 'video_one') String? videoOne,
            @JsonKey(name: 'video_two') String? videoTwo,
            @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
            @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
            @JsonKey(name: 'image_one') String? imageOne,
            @JsonKey(name: 'image_two') String? imageTwo,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'latitude') String? latitude,
            @JsonKey(name: 'longitude') String? longitude,
            @JsonKey(name: 'branch_id') int? branchId,
            @JsonKey(name: 'created_at') String? createdAt)
        $default,
  ) {
    return $default(
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
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'order_number') String? orderNumber,
            @JsonKey(name: 'place') String? place,
            @JsonKey(name: 'video_one') String? videoOne,
            @JsonKey(name: 'video_two') String? videoTwo,
            @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
            @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
            @JsonKey(name: 'image_one') String? imageOne,
            @JsonKey(name: 'image_two') String? imageTwo,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'latitude') String? latitude,
            @JsonKey(name: 'longitude') String? longitude,
            @JsonKey(name: 'branch_id') int? branchId,
            @JsonKey(name: 'created_at') String? createdAt)?
        $default,
  ) {
    return $default?.call(
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
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'order_number') String? orderNumber,
            @JsonKey(name: 'place') String? place,
            @JsonKey(name: 'video_one') String? videoOne,
            @JsonKey(name: 'video_two') String? videoTwo,
            @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
            @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
            @JsonKey(name: 'image_one') String? imageOne,
            @JsonKey(name: 'image_two') String? imageTwo,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'latitude') String? latitude,
            @JsonKey(name: 'longitude') String? longitude,
            @JsonKey(name: 'branch_id') int? branchId,
            @JsonKey(name: 'created_at') String? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
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
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DocEntity value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DocEntity value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DocEntity value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DocEntityImplToJson(
      this,
    );
  }
}

abstract class _DocEntity implements DocEntity {
  const factory _DocEntity(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'order_number') final String? orderNumber,
      @JsonKey(name: 'place') final String? place,
      @JsonKey(name: 'video_one') final String? videoOne,
      @JsonKey(name: 'video_two') final String? videoTwo,
      @JsonKey(name: 'thumbnail_url_one') final String? thumbnailUrlOne,
      @JsonKey(name: 'thumbnail_url_two') final String? thumbnailUrlTwo,
      @JsonKey(name: 'image_one') final String? imageOne,
      @JsonKey(name: 'image_two') final String? imageTwo,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'latitude') final String? latitude,
      @JsonKey(name: 'longitude') final String? longitude,
      @JsonKey(name: 'branch_id') final int? branchId,
      @JsonKey(name: 'created_at') final String? createdAt}) = _$DocEntityImpl;

  factory _DocEntity.fromJson(Map<String, dynamic> json) =
      _$DocEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'order_number')
  String? get orderNumber;
  @override
  @JsonKey(name: 'place')
  String? get place;
  @override
  @JsonKey(name: 'video_one')
  String? get videoOne;
  @override
  @JsonKey(name: 'video_two')
  String? get videoTwo;
  @override
  @JsonKey(name: 'thumbnail_url_one')
  String? get thumbnailUrlOne;
  @override
  @JsonKey(name: 'thumbnail_url_two')
  String? get thumbnailUrlTwo;
  @override
  @JsonKey(name: 'image_one')
  String? get imageOne;
  @override
  @JsonKey(name: 'image_two')
  String? get imageTwo;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'latitude')
  String? get latitude;
  @override
  @JsonKey(name: 'longitude')
  String? get longitude;
  @override
  @JsonKey(name: 'branch_id')
  int? get branchId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of DocEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocEntityImplCopyWith<_$DocEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
