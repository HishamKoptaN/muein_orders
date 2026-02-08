// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instruction_page_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InstructionPageEntity {

 String get titleKey; String get descriptionKey; String get imagePath;
/// Create a copy of InstructionPageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstructionPageEntityCopyWith<InstructionPageEntity> get copyWith => _$InstructionPageEntityCopyWithImpl<InstructionPageEntity>(this as InstructionPageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstructionPageEntity&&(identical(other.titleKey, titleKey) || other.titleKey == titleKey)&&(identical(other.descriptionKey, descriptionKey) || other.descriptionKey == descriptionKey)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,titleKey,descriptionKey,imagePath);

@override
String toString() {
  return 'InstructionPageEntity(titleKey: $titleKey, descriptionKey: $descriptionKey, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $InstructionPageEntityCopyWith<$Res>  {
  factory $InstructionPageEntityCopyWith(InstructionPageEntity value, $Res Function(InstructionPageEntity) _then) = _$InstructionPageEntityCopyWithImpl;
@useResult
$Res call({
 String titleKey, String descriptionKey, String imagePath
});




}
/// @nodoc
class _$InstructionPageEntityCopyWithImpl<$Res>
    implements $InstructionPageEntityCopyWith<$Res> {
  _$InstructionPageEntityCopyWithImpl(this._self, this._then);

  final InstructionPageEntity _self;
  final $Res Function(InstructionPageEntity) _then;

/// Create a copy of InstructionPageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? titleKey = null,Object? descriptionKey = null,Object? imagePath = null,}) {
  return _then(_self.copyWith(
titleKey: null == titleKey ? _self.titleKey : titleKey // ignore: cast_nullable_to_non_nullable
as String,descriptionKey: null == descriptionKey ? _self.descriptionKey : descriptionKey // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InstructionPageEntity].
extension InstructionPageEntityPatterns on InstructionPageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstructionPageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstructionPageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstructionPageEntity value)  $default,){
final _that = this;
switch (_that) {
case _InstructionPageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstructionPageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InstructionPageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String titleKey,  String descriptionKey,  String imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstructionPageEntity() when $default != null:
return $default(_that.titleKey,_that.descriptionKey,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String titleKey,  String descriptionKey,  String imagePath)  $default,) {final _that = this;
switch (_that) {
case _InstructionPageEntity():
return $default(_that.titleKey,_that.descriptionKey,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String titleKey,  String descriptionKey,  String imagePath)?  $default,) {final _that = this;
switch (_that) {
case _InstructionPageEntity() when $default != null:
return $default(_that.titleKey,_that.descriptionKey,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc


class _InstructionPageEntity implements InstructionPageEntity {
  const _InstructionPageEntity({required this.titleKey, required this.descriptionKey, required this.imagePath});
  

@override final  String titleKey;
@override final  String descriptionKey;
@override final  String imagePath;

/// Create a copy of InstructionPageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstructionPageEntityCopyWith<_InstructionPageEntity> get copyWith => __$InstructionPageEntityCopyWithImpl<_InstructionPageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstructionPageEntity&&(identical(other.titleKey, titleKey) || other.titleKey == titleKey)&&(identical(other.descriptionKey, descriptionKey) || other.descriptionKey == descriptionKey)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,titleKey,descriptionKey,imagePath);

@override
String toString() {
  return 'InstructionPageEntity(titleKey: $titleKey, descriptionKey: $descriptionKey, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$InstructionPageEntityCopyWith<$Res> implements $InstructionPageEntityCopyWith<$Res> {
  factory _$InstructionPageEntityCopyWith(_InstructionPageEntity value, $Res Function(_InstructionPageEntity) _then) = __$InstructionPageEntityCopyWithImpl;
@override @useResult
$Res call({
 String titleKey, String descriptionKey, String imagePath
});




}
/// @nodoc
class __$InstructionPageEntityCopyWithImpl<$Res>
    implements _$InstructionPageEntityCopyWith<$Res> {
  __$InstructionPageEntityCopyWithImpl(this._self, this._then);

  final _InstructionPageEntity _self;
  final $Res Function(_InstructionPageEntity) _then;

/// Create a copy of InstructionPageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? titleKey = null,Object? descriptionKey = null,Object? imagePath = null,}) {
  return _then(_InstructionPageEntity(
titleKey: null == titleKey ? _self.titleKey : titleKey // ignore: cast_nullable_to_non_nullable
as String,descriptionKey: null == descriptionKey ? _self.descriptionKey : descriptionKey // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
