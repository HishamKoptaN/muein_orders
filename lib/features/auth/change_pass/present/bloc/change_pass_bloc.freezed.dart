// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePassEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePassEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePassEvent()';
}


}

/// @nodoc
class $ChangePassEventCopyWith<$Res>  {
$ChangePassEventCopyWith(ChangePassEvent _, $Res Function(ChangePassEvent) __);
}


/// Adds pattern-matching-related methods to [ChangePassEvent].
extension ChangePassEventPatterns on ChangePassEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DataChanged value)?  dataChanged,TResult Function( _Update value)?  update,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _Update() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DataChanged value)  dataChanged,required TResult Function( _Update value)  update,}){
final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that);case _Update():
return update(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DataChanged value)?  dataChanged,TResult? Function( _Update value)?  update,}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _Update() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ChangePasswordReqEntity changePasswordReq)?  dataChanged,TResult Function()?  update,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.changePasswordReq);case _Update() when update != null:
return update();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ChangePasswordReqEntity changePasswordReq)  dataChanged,required TResult Function()  update,}) {final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that.changePasswordReq);case _Update():
return update();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ChangePasswordReqEntity changePasswordReq)?  dataChanged,TResult? Function()?  update,}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.changePasswordReq);case _Update() when update != null:
return update();case _:
  return null;

}
}

}

/// @nodoc


class _DataChanged implements ChangePassEvent {
  const _DataChanged({required this.changePasswordReq});
  

 final  ChangePasswordReqEntity changePasswordReq;

/// Create a copy of ChangePassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataChangedCopyWith<_DataChanged> get copyWith => __$DataChangedCopyWithImpl<_DataChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataChanged&&(identical(other.changePasswordReq, changePasswordReq) || other.changePasswordReq == changePasswordReq));
}


@override
int get hashCode => Object.hash(runtimeType,changePasswordReq);

@override
String toString() {
  return 'ChangePassEvent.dataChanged(changePasswordReq: $changePasswordReq)';
}


}

/// @nodoc
abstract mixin class _$DataChangedCopyWith<$Res> implements $ChangePassEventCopyWith<$Res> {
  factory _$DataChangedCopyWith(_DataChanged value, $Res Function(_DataChanged) _then) = __$DataChangedCopyWithImpl;
@useResult
$Res call({
 ChangePasswordReqEntity changePasswordReq
});


$ChangePasswordReqEntityCopyWith<$Res> get changePasswordReq;

}
/// @nodoc
class __$DataChangedCopyWithImpl<$Res>
    implements _$DataChangedCopyWith<$Res> {
  __$DataChangedCopyWithImpl(this._self, this._then);

  final _DataChanged _self;
  final $Res Function(_DataChanged) _then;

/// Create a copy of ChangePassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? changePasswordReq = null,}) {
  return _then(_DataChanged(
changePasswordReq: null == changePasswordReq ? _self.changePasswordReq : changePasswordReq // ignore: cast_nullable_to_non_nullable
as ChangePasswordReqEntity,
  ));
}

/// Create a copy of ChangePassEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangePasswordReqEntityCopyWith<$Res> get changePasswordReq {
  
  return $ChangePasswordReqEntityCopyWith<$Res>(_self.changePasswordReq, (value) {
    return _then(_self.copyWith(changePasswordReq: value));
  });
}
}

/// @nodoc


class _Update implements ChangePassEvent {
  const _Update();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePassEvent.update()';
}


}




/// @nodoc
mixin _$ChangePassState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePassState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePassState()';
}


}

/// @nodoc
class $ChangePassStateCopyWith<$Res>  {
$ChangePassStateCopyWith(ChangePassState _, $Res Function(ChangePassState) __);
}


/// Adds pattern-matching-related methods to [ChangePassState].
extension ChangePassStatePatterns on ChangePassState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangePassLoading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( ChangePassSuccess value)?  success,TResult Function( ChangePassFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangePassLoading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case ChangePassSuccess() when success != null:
return success(_that);case ChangePassFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangePassLoading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( ChangePassSuccess value)  success,required TResult Function( ChangePassFailure value)  failure,}){
final _that = this;
switch (_that) {
case ChangePassLoading():
return loading(_that);case _Loaded():
return loaded(_that);case ChangePassSuccess():
return success(_that);case ChangePassFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangePassLoading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( ChangePassSuccess value)?  success,TResult? Function( ChangePassFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ChangePassLoading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case ChangePassSuccess() when success != null:
return success(_that);case ChangePassFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( ChangePasswordReqEntity changePasswordReq,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult Function()?  success,TResult Function( String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangePassLoading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.changePasswordReq,_that.formzSubmissionStatus);case ChangePassSuccess() when success != null:
return success();case ChangePassFailure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( ChangePasswordReqEntity changePasswordReq,  FormzSubmissionStatus formzSubmissionStatus)  loaded,required TResult Function()  success,required TResult Function( String error)  failure,}) {final _that = this;
switch (_that) {
case ChangePassLoading():
return loading();case _Loaded():
return loaded(_that.changePasswordReq,_that.formzSubmissionStatus);case ChangePassSuccess():
return success();case ChangePassFailure():
return failure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( ChangePasswordReqEntity changePasswordReq,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult? Function()?  success,TResult? Function( String error)?  failure,}) {final _that = this;
switch (_that) {
case ChangePassLoading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.changePasswordReq,_that.formzSubmissionStatus);case ChangePassSuccess() when success != null:
return success();case ChangePassFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ChangePassLoading implements ChangePassState {
  const ChangePassLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePassLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePassState.loading()';
}


}




/// @nodoc


class _Loaded implements ChangePassState {
  const _Loaded({required this.changePasswordReq, required this.formzSubmissionStatus});
  

 final  ChangePasswordReqEntity changePasswordReq;
 final  FormzSubmissionStatus formzSubmissionStatus;

/// Create a copy of ChangePassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.changePasswordReq, changePasswordReq) || other.changePasswordReq == changePasswordReq)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,changePasswordReq,formzSubmissionStatus);

@override
String toString() {
  return 'ChangePassState.loaded(changePasswordReq: $changePasswordReq, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ChangePassStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 ChangePasswordReqEntity changePasswordReq, FormzSubmissionStatus formzSubmissionStatus
});


$ChangePasswordReqEntityCopyWith<$Res> get changePasswordReq;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ChangePassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? changePasswordReq = null,Object? formzSubmissionStatus = null,}) {
  return _then(_Loaded(
changePasswordReq: null == changePasswordReq ? _self.changePasswordReq : changePasswordReq // ignore: cast_nullable_to_non_nullable
as ChangePasswordReqEntity,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,
  ));
}

/// Create a copy of ChangePassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChangePasswordReqEntityCopyWith<$Res> get changePasswordReq {
  
  return $ChangePasswordReqEntityCopyWith<$Res>(_self.changePasswordReq, (value) {
    return _then(_self.copyWith(changePasswordReq: value));
  });
}
}

/// @nodoc


class ChangePassSuccess implements ChangePassState {
  const ChangePassSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePassSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePassState.success()';
}


}




/// @nodoc


class ChangePassFailure implements ChangePassState {
  const ChangePassFailure(this.error);
  

 final  String error;

/// Create a copy of ChangePassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePassFailureCopyWith<ChangePassFailure> get copyWith => _$ChangePassFailureCopyWithImpl<ChangePassFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePassFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ChangePassState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ChangePassFailureCopyWith<$Res> implements $ChangePassStateCopyWith<$Res> {
  factory $ChangePassFailureCopyWith(ChangePassFailure value, $Res Function(ChangePassFailure) _then) = _$ChangePassFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ChangePassFailureCopyWithImpl<$Res>
    implements $ChangePassFailureCopyWith<$Res> {
  _$ChangePassFailureCopyWithImpl(this._self, this._then);

  final ChangePassFailure _self;
  final $Res Function(ChangePassFailure) _then;

/// Create a copy of ChangePassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ChangePassFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
