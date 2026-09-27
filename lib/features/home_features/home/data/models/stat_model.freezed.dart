// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'count') int? get count;
/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatModelCopyWith<StatModel> get copyWith => _$StatModelCopyWithImpl<StatModel>(this as StatModel, _$identity);

  /// Serializes this StatModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  final _this = this as StatModel;
  properties
    ..add(DiagnosticsProperty('type', 'StatModel'))
    ..add(DiagnosticsProperty('id', _this.id))..add(DiagnosticsProperty('name', _this.name))..add(DiagnosticsProperty('image', _this.image))..add(DiagnosticsProperty('count', _this.count));
}

@override
bool operator ==(Object other) {
  final _this = this as StatModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.count, _this.count) || other.count == _this.count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StatModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,_this.count);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  final _this = this as StatModel;
  return 'StatModel(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $StatModelCopyWith<$Res>  {
  factory $StatModelCopyWith(StatModel value, $Res Function(StatModel) _then) = _$StatModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image,@JsonKey(name: 'count') int? count
});




}
/// @nodoc
class _$StatModelCopyWithImpl<$Res>
    implements $StatModelCopyWith<$Res> {
  _$StatModelCopyWithImpl(this._self, this._then);

  final StatModel _self;
  final $Res Function(StatModel) _then;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? count = freezed,}) {
  return _then(StatModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatModel].
extension StatModelPatterns on StatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatModel value)  $default,){
final _that = this;
switch (_that) {
case _StatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'count')  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'count')  int? count)  $default,) {final _that = this;
switch (_that) {
case _StatModel():
return $default(_that.id,_that.name,_that.image,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'count')  int? count)?  $default,) {final _that = this;
switch (_that) {
case _StatModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatModel with DiagnosticableTreeMixin implements StatModel {
  const _StatModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'image') this.image, @JsonKey(name: 'count') this.count});
  factory _StatModel.fromJson(Map<String, dynamic> json) => _$StatModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'count') final  int? count;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatModelCopyWith<_StatModel> get copyWith => __$StatModelCopyWithImpl<_StatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
    ..add(DiagnosticsProperty('type', 'StatModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('count', count));
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,count);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'StatModel(id: $id, name: $name, image: $image, count: $count)';
}


}

/// @nodoc
abstract mixin class _$StatModelCopyWith<$Res> implements $StatModelCopyWith<$Res> {
  factory _$StatModelCopyWith(_StatModel value, $Res Function(_StatModel) _then) = __$StatModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image,@JsonKey(name: 'count') int? count
});




}
/// @nodoc
class __$StatModelCopyWithImpl<$Res>
    implements _$StatModelCopyWith<$Res> {
  __$StatModelCopyWithImpl(this._self, this._then);

  final _StatModel _self;
  final $Res Function(_StatModel) _then;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,Object? count = freezed,}) {
  return _then(_StatModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
