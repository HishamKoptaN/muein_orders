// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetaEntity {

 int? get currentPage; int? get totalPages; int? get perPage; bool? get hasNextPage; bool? get hasPreviousPage;
/// Create a copy of MetaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<MetaEntity> get copyWith => _$MetaEntityCopyWithImpl<MetaEntity>(this as MetaEntity, _$identity);

  /// Serializes this MetaEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaEntity&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPreviousPage, hasPreviousPage) || other.hasPreviousPage == hasPreviousPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,perPage,hasNextPage,hasPreviousPage);

@override
String toString() {
  return 'MetaEntity(currentPage: $currentPage, totalPages: $totalPages, perPage: $perPage, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
}


}

/// @nodoc
abstract mixin class $MetaEntityCopyWith<$Res>  {
  factory $MetaEntityCopyWith(MetaEntity value, $Res Function(MetaEntity) _then) = _$MetaEntityCopyWithImpl;
@useResult
$Res call({
 int? currentPage, int? totalPages, int? perPage, bool? hasNextPage, bool? hasPreviousPage
});




}
/// @nodoc
class _$MetaEntityCopyWithImpl<$Res>
    implements $MetaEntityCopyWith<$Res> {
  _$MetaEntityCopyWithImpl(this._self, this._then);

  final MetaEntity _self;
  final $Res Function(MetaEntity) _then;

/// Create a copy of MetaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? perPage = freezed,Object? hasNextPage = freezed,Object? hasPreviousPage = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPreviousPage: freezed == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaEntity].
extension MetaEntityPatterns on MetaEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaEntity value)  $default,){
final _that = this;
switch (_that) {
case _MetaEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MetaEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? currentPage,  int? totalPages,  int? perPage,  bool? hasNextPage,  bool? hasPreviousPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaEntity() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.perPage,_that.hasNextPage,_that.hasPreviousPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? currentPage,  int? totalPages,  int? perPage,  bool? hasNextPage,  bool? hasPreviousPage)  $default,) {final _that = this;
switch (_that) {
case _MetaEntity():
return $default(_that.currentPage,_that.totalPages,_that.perPage,_that.hasNextPage,_that.hasPreviousPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? currentPage,  int? totalPages,  int? perPage,  bool? hasNextPage,  bool? hasPreviousPage)?  $default,) {final _that = this;
switch (_that) {
case _MetaEntity() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.perPage,_that.hasNextPage,_that.hasPreviousPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaEntity implements MetaEntity {
  const _MetaEntity({this.currentPage, this.totalPages, this.perPage, this.hasNextPage, this.hasPreviousPage});
  factory _MetaEntity.fromJson(Map<String, dynamic> json) => _$MetaEntityFromJson(json);

@override final  int? currentPage;
@override final  int? totalPages;
@override final  int? perPage;
@override final  bool? hasNextPage;
@override final  bool? hasPreviousPage;

/// Create a copy of MetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaEntityCopyWith<_MetaEntity> get copyWith => __$MetaEntityCopyWithImpl<_MetaEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaEntity&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPreviousPage, hasPreviousPage) || other.hasPreviousPage == hasPreviousPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,perPage,hasNextPage,hasPreviousPage);

@override
String toString() {
  return 'MetaEntity(currentPage: $currentPage, totalPages: $totalPages, perPage: $perPage, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
}


}

/// @nodoc
abstract mixin class _$MetaEntityCopyWith<$Res> implements $MetaEntityCopyWith<$Res> {
  factory _$MetaEntityCopyWith(_MetaEntity value, $Res Function(_MetaEntity) _then) = __$MetaEntityCopyWithImpl;
@override @useResult
$Res call({
 int? currentPage, int? totalPages, int? perPage, bool? hasNextPage, bool? hasPreviousPage
});




}
/// @nodoc
class __$MetaEntityCopyWithImpl<$Res>
    implements _$MetaEntityCopyWith<$Res> {
  __$MetaEntityCopyWithImpl(this._self, this._then);

  final _MetaEntity _self;
  final $Res Function(_MetaEntity) _then;

/// Create a copy of MetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? perPage = freezed,Object? hasNextPage = freezed,Object? hasPreviousPage = freezed,}) {
  return _then(_MetaEntity(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,hasPreviousPage: freezed == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
