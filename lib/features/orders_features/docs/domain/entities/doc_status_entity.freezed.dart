// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocStatusEntity {

 int get id; String get name; Color get textColor; Color get backgroundColor; Color get iconColor; String get createdAt; String get updatedAt;
/// Create a copy of DocStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocStatusEntityCopyWith<DocStatusEntity> get copyWith => _$DocStatusEntityCopyWithImpl<DocStatusEntity>(this as DocStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocStatusEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.iconColor, iconColor) || other.iconColor == iconColor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,textColor,backgroundColor,iconColor,createdAt,updatedAt);

@override
String toString() {
  return 'DocStatusEntity(id: $id, name: $name, textColor: $textColor, backgroundColor: $backgroundColor, iconColor: $iconColor, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DocStatusEntityCopyWith<$Res>  {
  factory $DocStatusEntityCopyWith(DocStatusEntity value, $Res Function(DocStatusEntity) _then) = _$DocStatusEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, Color textColor, Color backgroundColor, Color iconColor, String createdAt, String updatedAt
});




}
/// @nodoc
class _$DocStatusEntityCopyWithImpl<$Res>
    implements $DocStatusEntityCopyWith<$Res> {
  _$DocStatusEntityCopyWithImpl(this._self, this._then);

  final DocStatusEntity _self;
  final $Res Function(DocStatusEntity) _then;

/// Create a copy of DocStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? textColor = null,Object? backgroundColor = null,Object? iconColor = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,textColor: null == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,iconColor: null == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as Color,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DocStatusEntity].
extension DocStatusEntityPatterns on DocStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  Color textColor,  Color backgroundColor,  Color iconColor,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocStatusEntity() when $default != null:
return $default(_that.id,_that.name,_that.textColor,_that.backgroundColor,_that.iconColor,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  Color textColor,  Color backgroundColor,  Color iconColor,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DocStatusEntity():
return $default(_that.id,_that.name,_that.textColor,_that.backgroundColor,_that.iconColor,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  Color textColor,  Color backgroundColor,  Color iconColor,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DocStatusEntity() when $default != null:
return $default(_that.id,_that.name,_that.textColor,_that.backgroundColor,_that.iconColor,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _DocStatusEntity implements DocStatusEntity {
  const _DocStatusEntity({this.id = 0, this.name = '', this.textColor = Colors.transparent, this.backgroundColor = Colors.transparent, this.iconColor = Colors.transparent, this.createdAt = '', this.updatedAt = ''});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  Color textColor;
@override@JsonKey() final  Color backgroundColor;
@override@JsonKey() final  Color iconColor;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;

/// Create a copy of DocStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocStatusEntityCopyWith<_DocStatusEntity> get copyWith => __$DocStatusEntityCopyWithImpl<_DocStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocStatusEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.iconColor, iconColor) || other.iconColor == iconColor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,textColor,backgroundColor,iconColor,createdAt,updatedAt);

@override
String toString() {
  return 'DocStatusEntity(id: $id, name: $name, textColor: $textColor, backgroundColor: $backgroundColor, iconColor: $iconColor, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DocStatusEntityCopyWith<$Res> implements $DocStatusEntityCopyWith<$Res> {
  factory _$DocStatusEntityCopyWith(_DocStatusEntity value, $Res Function(_DocStatusEntity) _then) = __$DocStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, Color textColor, Color backgroundColor, Color iconColor, String createdAt, String updatedAt
});




}
/// @nodoc
class __$DocStatusEntityCopyWithImpl<$Res>
    implements _$DocStatusEntityCopyWith<$Res> {
  __$DocStatusEntityCopyWithImpl(this._self, this._then);

  final _DocStatusEntity _self;
  final $Res Function(_DocStatusEntity) _then;

/// Create a copy of DocStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? textColor = null,Object? backgroundColor = null,Object? iconColor = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_DocStatusEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,textColor: null == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,iconColor: null == iconColor ? _self.iconColor : iconColor // ignore: cast_nullable_to_non_nullable
as Color,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
