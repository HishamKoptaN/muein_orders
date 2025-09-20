// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaEntity _$MetaEntityFromJson(Map<String, dynamic> json) {
  return _MetaEntity.fromJson(json);
}

/// @nodoc
mixin _$MetaEntity {
  int? get postId => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalComments => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;
  bool? get hasPreviousPage => throw _privateConstructorUsedError;

  /// Serializes this MetaEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaEntityCopyWith<MetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaEntityCopyWith<$Res> {
  factory $MetaEntityCopyWith(
          MetaEntity value, $Res Function(MetaEntity) then) =
      _$MetaEntityCopyWithImpl<$Res, MetaEntity>;
  @useResult
  $Res call(
      {int? postId,
      int? currentPage,
      int? totalPages,
      int? totalComments,
      int? perPage,
      bool? hasNextPage,
      bool? hasPreviousPage});
}

/// @nodoc
class _$MetaEntityCopyWithImpl<$Res, $Val extends MetaEntity>
    implements $MetaEntityCopyWith<$Res> {
  _$MetaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? totalComments = freezed,
    Object? perPage = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaEntityImplCopyWith<$Res>
    implements $MetaEntityCopyWith<$Res> {
  factory _$$MetaEntityImplCopyWith(
          _$MetaEntityImpl value, $Res Function(_$MetaEntityImpl) then) =
      __$$MetaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? postId,
      int? currentPage,
      int? totalPages,
      int? totalComments,
      int? perPage,
      bool? hasNextPage,
      bool? hasPreviousPage});
}

/// @nodoc
class __$$MetaEntityImplCopyWithImpl<$Res>
    extends _$MetaEntityCopyWithImpl<$Res, _$MetaEntityImpl>
    implements _$$MetaEntityImplCopyWith<$Res> {
  __$$MetaEntityImplCopyWithImpl(
      _$MetaEntityImpl _value, $Res Function(_$MetaEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? totalComments = freezed,
    Object? perPage = freezed,
    Object? hasNextPage = freezed,
    Object? hasPreviousPage = freezed,
  }) {
    return _then(_$MetaEntityImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaEntityImpl implements _MetaEntity {
  const _$MetaEntityImpl(
      {this.postId,
      this.currentPage,
      this.totalPages,
      this.totalComments,
      this.perPage,
      this.hasNextPage,
      this.hasPreviousPage});

  factory _$MetaEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaEntityImplFromJson(json);

  @override
  final int? postId;
  @override
  final int? currentPage;
  @override
  final int? totalPages;
  @override
  final int? totalComments;
  @override
  final int? perPage;
  @override
  final bool? hasNextPage;
  @override
  final bool? hasPreviousPage;

  @override
  String toString() {
    return 'MetaEntity(postId: $postId, currentPage: $currentPage, totalPages: $totalPages, totalComments: $totalComments, perPage: $perPage, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaEntityImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postId, currentPage, totalPages,
      totalComments, perPage, hasNextPage, hasPreviousPage);

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaEntityImplCopyWith<_$MetaEntityImpl> get copyWith =>
      __$$MetaEntityImplCopyWithImpl<_$MetaEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaEntityImplToJson(
      this,
    );
  }
}

abstract class _MetaEntity implements MetaEntity {
  const factory _MetaEntity(
      {final int? postId,
      final int? currentPage,
      final int? totalPages,
      final int? totalComments,
      final int? perPage,
      final bool? hasNextPage,
      final bool? hasPreviousPage}) = _$MetaEntityImpl;

  factory _MetaEntity.fromJson(Map<String, dynamic> json) =
      _$MetaEntityImpl.fromJson;

  @override
  int? get postId;
  @override
  int? get currentPage;
  @override
  int? get totalPages;
  @override
  int? get totalComments;
  @override
  int? get perPage;
  @override
  bool? get hasNextPage;
  @override
  bool? get hasPreviousPage;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaEntityImplCopyWith<_$MetaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
