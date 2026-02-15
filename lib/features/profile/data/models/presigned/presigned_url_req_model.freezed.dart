// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_url_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresignedUrlReqModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'extension') String? get extensionProperty;
/// Create a copy of PresignedUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresignedUrlReqModelCopyWith<PresignedUrlReqModel> get copyWith => _$PresignedUrlReqModelCopyWithImpl<PresignedUrlReqModel>(this as PresignedUrlReqModel, _$identity);

  /// Serializes this PresignedUrlReqModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PresignedUrlReqModel'))
    ..add(DiagnosticsProperty('extensionProperty', extensionProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresignedUrlReqModel&&(identical(other.extensionProperty, extensionProperty) || other.extensionProperty == extensionProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,extensionProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PresignedUrlReqModel(extensionProperty: $extensionProperty)';
}


}

/// @nodoc
abstract mixin class $PresignedUrlReqModelCopyWith<$Res>  {
  factory $PresignedUrlReqModelCopyWith(PresignedUrlReqModel value, $Res Function(PresignedUrlReqModel) _then) = _$PresignedUrlReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'extension') String? extensionProperty
});




}
/// @nodoc
class _$PresignedUrlReqModelCopyWithImpl<$Res>
    implements $PresignedUrlReqModelCopyWith<$Res> {
  _$PresignedUrlReqModelCopyWithImpl(this._self, this._then);

  final PresignedUrlReqModel _self;
  final $Res Function(PresignedUrlReqModel) _then;

/// Create a copy of PresignedUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extensionProperty = freezed,}) {
  return _then(_self.copyWith(
extensionProperty: freezed == extensionProperty ? _self.extensionProperty : extensionProperty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PresignedUrlReqModel].
extension PresignedUrlReqModelPatterns on PresignedUrlReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresignedUrlReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresignedUrlReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresignedUrlReqModel value)  $default,){
final _that = this;
switch (_that) {
case _PresignedUrlReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresignedUrlReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _PresignedUrlReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'extension')  String? extensionProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresignedUrlReqModel() when $default != null:
return $default(_that.extensionProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'extension')  String? extensionProperty)  $default,) {final _that = this;
switch (_that) {
case _PresignedUrlReqModel():
return $default(_that.extensionProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'extension')  String? extensionProperty)?  $default,) {final _that = this;
switch (_that) {
case _PresignedUrlReqModel() when $default != null:
return $default(_that.extensionProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresignedUrlReqModel with DiagnosticableTreeMixin implements PresignedUrlReqModel {
  const _PresignedUrlReqModel({@JsonKey(name: 'extension') this.extensionProperty});
  factory _PresignedUrlReqModel.fromJson(Map<String, dynamic> json) => _$PresignedUrlReqModelFromJson(json);

@override@JsonKey(name: 'extension') final  String? extensionProperty;

/// Create a copy of PresignedUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresignedUrlReqModelCopyWith<_PresignedUrlReqModel> get copyWith => __$PresignedUrlReqModelCopyWithImpl<_PresignedUrlReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresignedUrlReqModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PresignedUrlReqModel'))
    ..add(DiagnosticsProperty('extensionProperty', extensionProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresignedUrlReqModel&&(identical(other.extensionProperty, extensionProperty) || other.extensionProperty == extensionProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,extensionProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PresignedUrlReqModel(extensionProperty: $extensionProperty)';
}


}

/// @nodoc
abstract mixin class _$PresignedUrlReqModelCopyWith<$Res> implements $PresignedUrlReqModelCopyWith<$Res> {
  factory _$PresignedUrlReqModelCopyWith(_PresignedUrlReqModel value, $Res Function(_PresignedUrlReqModel) _then) = __$PresignedUrlReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'extension') String? extensionProperty
});




}
/// @nodoc
class __$PresignedUrlReqModelCopyWithImpl<$Res>
    implements _$PresignedUrlReqModelCopyWith<$Res> {
  __$PresignedUrlReqModelCopyWithImpl(this._self, this._then);

  final _PresignedUrlReqModel _self;
  final $Res Function(_PresignedUrlReqModel) _then;

/// Create a copy of PresignedUrlReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extensionProperty = freezed,}) {
  return _then(_PresignedUrlReqModel(
extensionProperty: freezed == extensionProperty ? _self.extensionProperty : extensionProperty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
