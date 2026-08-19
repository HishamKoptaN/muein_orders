// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ErrorInfo {

 String get title; String get message; Object? get data; bool get reportToCrashlytics; bool get fatal;
/// Create a copy of ErrorInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<ErrorInfo> get copyWith => _$ErrorInfoCopyWithImpl<ErrorInfo>(this as ErrorInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.reportToCrashlytics, reportToCrashlytics) || other.reportToCrashlytics == reportToCrashlytics)&&(identical(other.fatal, fatal) || other.fatal == fatal));
}


@override
int get hashCode => Object.hash(runtimeType,title,message,const DeepCollectionEquality().hash(data),reportToCrashlytics,fatal);

@override
String toString() {
  return 'ErrorInfo(title: $title, message: $message, data: $data, reportToCrashlytics: $reportToCrashlytics, fatal: $fatal)';
}


}

/// @nodoc
abstract mixin class $ErrorInfoCopyWith<$Res>  {
  factory $ErrorInfoCopyWith(ErrorInfo value, $Res Function(ErrorInfo) _then) = _$ErrorInfoCopyWithImpl;
@useResult
$Res call({
 String title, String message, Object? data, bool reportToCrashlytics, bool fatal
});




}
/// @nodoc
class _$ErrorInfoCopyWithImpl<$Res>
    implements $ErrorInfoCopyWith<$Res> {
  _$ErrorInfoCopyWithImpl(this._self, this._then);

  final ErrorInfo _self;
  final $Res Function(ErrorInfo) _then;

/// Create a copy of ErrorInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? message = null,Object? data = freezed,Object? reportToCrashlytics = null,Object? fatal = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data ,reportToCrashlytics: null == reportToCrashlytics ? _self.reportToCrashlytics : reportToCrashlytics // ignore: cast_nullable_to_non_nullable
as bool,fatal: null == fatal ? _self.fatal : fatal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorInfo].
extension ErrorInfoPatterns on ErrorInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorInfo value)  $default,){
final _that = this;
switch (_that) {
case _ErrorInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String message,  Object? data,  bool reportToCrashlytics,  bool fatal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorInfo() when $default != null:
return $default(_that.title,_that.message,_that.data,_that.reportToCrashlytics,_that.fatal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String message,  Object? data,  bool reportToCrashlytics,  bool fatal)  $default,) {final _that = this;
switch (_that) {
case _ErrorInfo():
return $default(_that.title,_that.message,_that.data,_that.reportToCrashlytics,_that.fatal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String message,  Object? data,  bool reportToCrashlytics,  bool fatal)?  $default,) {final _that = this;
switch (_that) {
case _ErrorInfo() when $default != null:
return $default(_that.title,_that.message,_that.data,_that.reportToCrashlytics,_that.fatal);case _:
  return null;

}
}

}

/// @nodoc


class _ErrorInfo implements ErrorInfo {
  const _ErrorInfo({this.title = '', this.message = '', this.data, this.reportToCrashlytics = false, this.fatal = false});
  

@override@JsonKey() final  String title;
@override@JsonKey() final  String message;
@override final  Object? data;
@override@JsonKey() final  bool reportToCrashlytics;
@override@JsonKey() final  bool fatal;

/// Create a copy of ErrorInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorInfoCopyWith<_ErrorInfo> get copyWith => __$ErrorInfoCopyWithImpl<_ErrorInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.reportToCrashlytics, reportToCrashlytics) || other.reportToCrashlytics == reportToCrashlytics)&&(identical(other.fatal, fatal) || other.fatal == fatal));
}


@override
int get hashCode => Object.hash(runtimeType,title,message,const DeepCollectionEquality().hash(data),reportToCrashlytics,fatal);

@override
String toString() {
  return 'ErrorInfo(title: $title, message: $message, data: $data, reportToCrashlytics: $reportToCrashlytics, fatal: $fatal)';
}


}

/// @nodoc
abstract mixin class _$ErrorInfoCopyWith<$Res> implements $ErrorInfoCopyWith<$Res> {
  factory _$ErrorInfoCopyWith(_ErrorInfo value, $Res Function(_ErrorInfo) _then) = __$ErrorInfoCopyWithImpl;
@override @useResult
$Res call({
 String title, String message, Object? data, bool reportToCrashlytics, bool fatal
});




}
/// @nodoc
class __$ErrorInfoCopyWithImpl<$Res>
    implements _$ErrorInfoCopyWith<$Res> {
  __$ErrorInfoCopyWithImpl(this._self, this._then);

  final _ErrorInfo _self;
  final $Res Function(_ErrorInfo) _then;

/// Create a copy of ErrorInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? message = null,Object? data = freezed,Object? reportToCrashlytics = null,Object? fatal = null,}) {
  return _then(_ErrorInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data ,reportToCrashlytics: null == reportToCrashlytics ? _self.reportToCrashlytics : reportToCrashlytics // ignore: cast_nullable_to_non_nullable
as bool,fatal: null == fatal ? _self.fatal : fatal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
