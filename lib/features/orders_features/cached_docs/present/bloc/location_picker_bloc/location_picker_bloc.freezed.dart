// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationPickerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationPickerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationPickerEvent()';
}


}

/// @nodoc
class $LocationPickerEventCopyWith<$Res>  {
$LocationPickerEventCopyWith(LocationPickerEvent _, $Res Function(LocationPickerEvent) __);
}


/// Adds pattern-matching-related methods to [LocationPickerEvent].
extension LocationPickerEventPatterns on LocationPickerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckClipboard value)?  checkClipboard,TResult Function( _PasteFromClipboardEvent value)?  pasteFromClipboardEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckClipboard() when checkClipboard != null:
return checkClipboard(_that);case _PasteFromClipboardEvent() when pasteFromClipboardEvent != null:
return pasteFromClipboardEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckClipboard value)  checkClipboard,required TResult Function( _PasteFromClipboardEvent value)  pasteFromClipboardEvent,}){
final _that = this;
switch (_that) {
case _CheckClipboard():
return checkClipboard(_that);case _PasteFromClipboardEvent():
return pasteFromClipboardEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckClipboard value)?  checkClipboard,TResult? Function( _PasteFromClipboardEvent value)?  pasteFromClipboardEvent,}){
final _that = this;
switch (_that) {
case _CheckClipboard() when checkClipboard != null:
return checkClipboard(_that);case _PasteFromClipboardEvent() when pasteFromClipboardEvent != null:
return pasteFromClipboardEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkClipboard,TResult Function()?  pasteFromClipboardEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckClipboard() when checkClipboard != null:
return checkClipboard();case _PasteFromClipboardEvent() when pasteFromClipboardEvent != null:
return pasteFromClipboardEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkClipboard,required TResult Function()  pasteFromClipboardEvent,}) {final _that = this;
switch (_that) {
case _CheckClipboard():
return checkClipboard();case _PasteFromClipboardEvent():
return pasteFromClipboardEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkClipboard,TResult? Function()?  pasteFromClipboardEvent,}) {final _that = this;
switch (_that) {
case _CheckClipboard() when checkClipboard != null:
return checkClipboard();case _PasteFromClipboardEvent() when pasteFromClipboardEvent != null:
return pasteFromClipboardEvent();case _:
  return null;

}
}

}

/// @nodoc


class _CheckClipboard implements LocationPickerEvent {
  const _CheckClipboard();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckClipboard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationPickerEvent.checkClipboard()';
}


}




/// @nodoc


class _PasteFromClipboardEvent implements LocationPickerEvent {
  const _PasteFromClipboardEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasteFromClipboardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationPickerEvent.pasteFromClipboardEvent()';
}


}




/// @nodoc
mixin _$LocationPickerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationPickerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationPickerState()';
}


}

/// @nodoc
class $LocationPickerStateCopyWith<$Res>  {
$LocationPickerStateCopyWith(LocationPickerState _, $Res Function(LocationPickerState) __);
}


/// Adds pattern-matching-related methods to [LocationPickerState].
extension LocationPickerStatePatterns on LocationPickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( bool hasValidClipboardLocation,  LatLng? pastedLocation)?  loaded,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.hasValidClipboardLocation,_that.pastedLocation);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( bool hasValidClipboardLocation,  LatLng? pastedLocation)  loaded,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.hasValidClipboardLocation,_that.pastedLocation);case _Failure():
return failure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( bool hasValidClipboardLocation,  LatLng? pastedLocation)?  loaded,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.hasValidClipboardLocation,_that.pastedLocation);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LocationPickerState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationPickerState.initial()';
}


}




/// @nodoc


class _Loading implements LocationPickerState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationPickerState.loading()';
}


}




/// @nodoc


class _Loaded implements LocationPickerState {
  const _Loaded({this.hasValidClipboardLocation = false, this.pastedLocation = null});
  

@JsonKey() final  bool hasValidClipboardLocation;
@JsonKey() final  LatLng? pastedLocation;

/// Create a copy of LocationPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.hasValidClipboardLocation, hasValidClipboardLocation) || other.hasValidClipboardLocation == hasValidClipboardLocation)&&(identical(other.pastedLocation, pastedLocation) || other.pastedLocation == pastedLocation));
}


@override
int get hashCode => Object.hash(runtimeType,hasValidClipboardLocation,pastedLocation);

@override
String toString() {
  return 'LocationPickerState.loaded(hasValidClipboardLocation: $hasValidClipboardLocation, pastedLocation: $pastedLocation)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $LocationPickerStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 bool hasValidClipboardLocation, LatLng? pastedLocation
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of LocationPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasValidClipboardLocation = null,Object? pastedLocation = freezed,}) {
  return _then(_Loaded(
hasValidClipboardLocation: null == hasValidClipboardLocation ? _self.hasValidClipboardLocation : hasValidClipboardLocation // ignore: cast_nullable_to_non_nullable
as bool,pastedLocation: freezed == pastedLocation ? _self.pastedLocation : pastedLocation // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}


}

/// @nodoc


class _Failure implements LocationPickerState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of LocationPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode => Object.hash(runtimeType,errorInfo);

@override
String toString() {
  return 'LocationPickerState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $LocationPickerStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of LocationPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of LocationPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<$Res> get errorInfo {
  
  return $ErrorInfoCopyWith<$Res>(_self.errorInfo, (value) {
    return _then(_self.copyWith(errorInfo: value));
  });
}
}

// dart format on
