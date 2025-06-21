// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocsResModel _$DocsResModelFromJson(Map<String, dynamic> json) {
  return _DocsResModel.fromJson(json);
}

/// @nodoc
mixin _$DocsResModel {
  @JsonKey(name: "docs")
  List<Doc>? get docs => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this DocsResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocsResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocsResModelCopyWith<DocsResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocsResModelCopyWith<$Res> {
  factory $DocsResModelCopyWith(
          DocsResModel value, $Res Function(DocsResModel) then) =
      _$DocsResModelCopyWithImpl<$Res, DocsResModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<Doc>? docs,
      @JsonKey(name: "meta") Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DocsResModelCopyWithImpl<$Res, $Val extends DocsResModel>
    implements $DocsResModelCopyWith<$Res> {
  _$DocsResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocsResModel
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
              as List<Doc>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  /// Create a copy of DocsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocsResModelImplCopyWith<$Res>
    implements $DocsResModelCopyWith<$Res> {
  factory _$$DocsResModelImplCopyWith(
          _$DocsResModelImpl value, $Res Function(_$DocsResModelImpl) then) =
      __$$DocsResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<Doc>? docs,
      @JsonKey(name: "meta") Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$DocsResModelImplCopyWithImpl<$Res>
    extends _$DocsResModelCopyWithImpl<$Res, _$DocsResModelImpl>
    implements _$$DocsResModelImplCopyWith<$Res> {
  __$$DocsResModelImplCopyWithImpl(
      _$DocsResModelImpl _value, $Res Function(_$DocsResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocsResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$DocsResModelImpl(
      docs: freezed == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<Doc>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocsResModelImpl implements _DocsResModel {
  const _$DocsResModelImpl(
      {@JsonKey(name: "docs") final List<Doc>? docs,
      @JsonKey(name: "meta") this.meta})
      : _docs = docs;

  factory _$DocsResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocsResModelImplFromJson(json);

  final List<Doc>? _docs;
  @override
  @JsonKey(name: "docs")
  List<Doc>? get docs {
    final value = _docs;
    if (value == null) return null;
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "meta")
  final Meta? meta;

  @override
  String toString() {
    return 'DocsResModel(docs: $docs, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocsResModelImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_docs), meta);

  /// Create a copy of DocsResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocsResModelImplCopyWith<_$DocsResModelImpl> get copyWith =>
      __$$DocsResModelImplCopyWithImpl<_$DocsResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocsResModelImplToJson(
      this,
    );
  }
}

abstract class _DocsResModel implements DocsResModel {
  const factory _DocsResModel(
      {@JsonKey(name: "docs") final List<Doc>? docs,
      @JsonKey(name: "meta") final Meta? meta}) = _$DocsResModelImpl;

  factory _DocsResModel.fromJson(Map<String, dynamic> json) =
      _$DocsResModelImpl.fromJson;

  @override
  @JsonKey(name: "docs")
  List<Doc>? get docs;
  @override
  @JsonKey(name: "meta")
  Meta? get meta;

  /// Create a copy of DocsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocsResModelImplCopyWith<_$DocsResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Doc _$DocFromJson(Map<String, dynamic> json) {
  return _Doc.fromJson(json);
}

/// @nodoc
mixin _$Doc {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_number")
  String? get orderNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "place")
  String? get place => throw _privateConstructorUsedError;
  @JsonKey(name: "video")
  String? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_url")
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "image_one")
  String? get imageOne => throw _privateConstructorUsedError;
  @JsonKey(name: "image_two")
  String? get imageTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Doc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Doc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocCopyWith<Doc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocCopyWith<$Res> {
  factory $DocCopyWith(Doc value, $Res Function(Doc) then) =
      _$DocCopyWithImpl<$Res, Doc>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "order_number") String? orderNumber,
      @JsonKey(name: "place") String? place,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
      @JsonKey(name: "image_one") String? imageOne,
      @JsonKey(name: "image_two") String? imageTwo,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "created_at") String? createdAt});
}

/// @nodoc
class _$DocCopyWithImpl<$Res, $Val extends Doc> implements $DocCopyWith<$Res> {
  _$DocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Doc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? place = freezed,
    Object? video = freezed,
    Object? thumbnailUrl = freezed,
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
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DocImplCopyWith<$Res> implements $DocCopyWith<$Res> {
  factory _$$DocImplCopyWith(_$DocImpl value, $Res Function(_$DocImpl) then) =
      __$$DocImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "order_number") String? orderNumber,
      @JsonKey(name: "place") String? place,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
      @JsonKey(name: "image_one") String? imageOne,
      @JsonKey(name: "image_two") String? imageTwo,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "created_at") String? createdAt});
}

/// @nodoc
class __$$DocImplCopyWithImpl<$Res> extends _$DocCopyWithImpl<$Res, _$DocImpl>
    implements _$$DocImplCopyWith<$Res> {
  __$$DocImplCopyWithImpl(_$DocImpl _value, $Res Function(_$DocImpl) _then)
      : super(_value, _then);

  /// Create a copy of Doc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? place = freezed,
    Object? video = freezed,
    Object? thumbnailUrl = freezed,
    Object? imageOne = freezed,
    Object? imageTwo = freezed,
    Object? updatedAt = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? branchId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$DocImpl(
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
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
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
class _$DocImpl implements _Doc {
  const _$DocImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "order_number") this.orderNumber,
      @JsonKey(name: "place") this.place,
      @JsonKey(name: "video") this.video,
      @JsonKey(name: "thumbnail_url") this.thumbnailUrl,
      @JsonKey(name: "image_one") this.imageOne,
      @JsonKey(name: "image_two") this.imageTwo,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "branch_id") this.branchId,
      @JsonKey(name: "created_at") this.createdAt});

  factory _$DocImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "order_number")
  final String? orderNumber;
  @override
  @JsonKey(name: "place")
  final String? place;
  @override
  @JsonKey(name: "video")
  final String? video;
  @override
  @JsonKey(name: "thumbnail_url")
  final String? thumbnailUrl;
  @override
  @JsonKey(name: "image_one")
  final String? imageOne;
  @override
  @JsonKey(name: "image_two")
  final String? imageTwo;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "latitude")
  final String? latitude;
  @override
  @JsonKey(name: "longitude")
  final String? longitude;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;

  @override
  String toString() {
    return 'Doc(id: $id, orderNumber: $orderNumber, place: $place, video: $video, thumbnailUrl: $thumbnailUrl, imageOne: $imageOne, imageTwo: $imageTwo, updatedAt: $updatedAt, latitude: $latitude, longitude: $longitude, branchId: $branchId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
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
      video,
      thumbnailUrl,
      imageOne,
      imageTwo,
      updatedAt,
      latitude,
      longitude,
      branchId,
      createdAt);

  /// Create a copy of Doc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocImplCopyWith<_$DocImpl> get copyWith =>
      __$$DocImplCopyWithImpl<_$DocImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocImplToJson(
      this,
    );
  }
}

abstract class _Doc implements Doc {
  const factory _Doc(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "order_number") final String? orderNumber,
      @JsonKey(name: "place") final String? place,
      @JsonKey(name: "video") final String? video,
      @JsonKey(name: "thumbnail_url") final String? thumbnailUrl,
      @JsonKey(name: "image_one") final String? imageOne,
      @JsonKey(name: "image_two") final String? imageTwo,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "latitude") final String? latitude,
      @JsonKey(name: "longitude") final String? longitude,
      @JsonKey(name: "branch_id") final int? branchId,
      @JsonKey(name: "created_at") final String? createdAt}) = _$DocImpl;

  factory _Doc.fromJson(Map<String, dynamic> json) = _$DocImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "order_number")
  String? get orderNumber;
  @override
  @JsonKey(name: "place")
  String? get place;
  @override
  @JsonKey(name: "video")
  String? get video;
  @override
  @JsonKey(name: "thumbnail_url")
  String? get thumbnailUrl;
  @override
  @JsonKey(name: "image_one")
  String? get imageOne;
  @override
  @JsonKey(name: "image_two")
  String? get imageTwo;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "latitude")
  String? get latitude;
  @override
  @JsonKey(name: "longitude")
  String? get longitude;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;

  /// Create a copy of Doc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocImplCopyWith<_$DocImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
