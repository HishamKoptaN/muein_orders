// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "post_id")
  int? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_comments")
  int? get totalComments => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_next_page")
  bool? get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_previous_page")
  bool? get hasPreviousPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: "post_id") int? postId,
            @JsonKey(name: "current_page") int? currentPage,
            @JsonKey(name: "total_pages") int? totalPages,
            @JsonKey(name: "total_comments") int? totalComments,
            @JsonKey(name: "per_page") int? perPage,
            @JsonKey(name: "has_next_page") bool? hasNextPage,
            @JsonKey(name: "has_previous_page") bool? hasPreviousPage)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: "post_id") int? postId,
            @JsonKey(name: "current_page") int? currentPage,
            @JsonKey(name: "total_pages") int? totalPages,
            @JsonKey(name: "total_comments") int? totalComments,
            @JsonKey(name: "per_page") int? perPage,
            @JsonKey(name: "has_next_page") bool? hasNextPage,
            @JsonKey(name: "has_previous_page") bool? hasPreviousPage)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: "post_id") int? postId,
            @JsonKey(name: "current_page") int? currentPage,
            @JsonKey(name: "total_pages") int? totalPages,
            @JsonKey(name: "total_comments") int? totalComments,
            @JsonKey(name: "per_page") int? perPage,
            @JsonKey(name: "has_next_page") bool? hasNextPage,
            @JsonKey(name: "has_previous_page") bool? hasPreviousPage)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Meta value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Meta value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Meta value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "post_id") int? postId,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "total_comments") int? totalComments,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "has_next_page") bool? hasNextPage,
      @JsonKey(name: "has_previous_page") bool? hasPreviousPage});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
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
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "post_id") int? postId,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "total_comments") int? totalComments,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "has_next_page") bool? hasNextPage,
      @JsonKey(name: "has_previous_page") bool? hasPreviousPage});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
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
    return _then(_$MetaImpl(
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
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "post_id") this.postId,
      @JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "total_pages") this.totalPages,
      @JsonKey(name: "total_comments") this.totalComments,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "has_next_page") this.hasNextPage,
      @JsonKey(name: "has_previous_page") this.hasPreviousPage});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: "post_id")
  final int? postId;
  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;
  @override
  @JsonKey(name: "total_comments")
  final int? totalComments;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "has_next_page")
  final bool? hasNextPage;
  @override
  @JsonKey(name: "has_previous_page")
  final bool? hasPreviousPage;

  @override
  String toString() {
    return 'Meta(postId: $postId, currentPage: $currentPage, totalPages: $totalPages, totalComments: $totalComments, perPage: $perPage, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
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

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: "post_id") int? postId,
            @JsonKey(name: "current_page") int? currentPage,
            @JsonKey(name: "total_pages") int? totalPages,
            @JsonKey(name: "total_comments") int? totalComments,
            @JsonKey(name: "per_page") int? perPage,
            @JsonKey(name: "has_next_page") bool? hasNextPage,
            @JsonKey(name: "has_previous_page") bool? hasPreviousPage)
        $default,
  ) {
    return $default(postId, currentPage, totalPages, totalComments, perPage,
        hasNextPage, hasPreviousPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: "post_id") int? postId,
            @JsonKey(name: "current_page") int? currentPage,
            @JsonKey(name: "total_pages") int? totalPages,
            @JsonKey(name: "total_comments") int? totalComments,
            @JsonKey(name: "per_page") int? perPage,
            @JsonKey(name: "has_next_page") bool? hasNextPage,
            @JsonKey(name: "has_previous_page") bool? hasPreviousPage)?
        $default,
  ) {
    return $default?.call(postId, currentPage, totalPages, totalComments,
        perPage, hasNextPage, hasPreviousPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: "post_id") int? postId,
            @JsonKey(name: "current_page") int? currentPage,
            @JsonKey(name: "total_pages") int? totalPages,
            @JsonKey(name: "total_comments") int? totalComments,
            @JsonKey(name: "per_page") int? perPage,
            @JsonKey(name: "has_next_page") bool? hasNextPage,
            @JsonKey(name: "has_previous_page") bool? hasPreviousPage)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(postId, currentPage, totalPages, totalComments, perPage,
          hasNextPage, hasPreviousPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Meta value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Meta value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Meta value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
          {@JsonKey(name: "post_id") final int? postId,
          @JsonKey(name: "current_page") final int? currentPage,
          @JsonKey(name: "total_pages") final int? totalPages,
          @JsonKey(name: "total_comments") final int? totalComments,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "has_next_page") final bool? hasNextPage,
          @JsonKey(name: "has_previous_page") final bool? hasPreviousPage}) =
      _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "post_id")
  int? get postId;
  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;
  @override
  @JsonKey(name: "total_comments")
  int? get totalComments;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "has_next_page")
  bool? get hasNextPage;
  @override
  @JsonKey(name: "has_previous_page")
  bool? get hasPreviousPage;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
