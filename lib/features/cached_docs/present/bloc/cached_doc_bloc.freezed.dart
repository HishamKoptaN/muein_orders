// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_doc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CachedDocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CachedDocEvent()';
}


}

/// @nodoc
class $CachedDocEventCopyWith<$Res>  {
$CachedDocEventCopyWith(CachedDocEvent _, $Res Function(CachedDocEvent) __);
}


/// Adds pattern-matching-related methods to [CachedDocEvent].
extension CachedDocEventPatterns on CachedDocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initialize value)?  initialize,TResult Function( _UpdateData value)?  updateData,TResult Function( _CachedDoc value)?  cachedDoc,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _CachedDoc() when cachedDoc != null:
return cachedDoc(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initialize value)  initialize,required TResult Function( _UpdateData value)  updateData,required TResult Function( _CachedDoc value)  cachedDoc,}){
final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that);case _UpdateData():
return updateData(_that);case _CachedDoc():
return cachedDoc(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initialize value)?  initialize,TResult? Function( _UpdateData value)?  updateData,TResult? Function( _CachedDoc value)?  cachedDoc,}){
final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _CachedDoc() when cachedDoc != null:
return cachedDoc(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialize,TResult Function( GenericFormzInput<int>? orderId,  FileFormzInput? imageOne,  FileFormzInput? imageTwo,  FileFormzInput? videoOne,  FileFormzInput? videoTwo,  GenericFormzInput<double>? latitude,  GenericFormzInput<double>? longitude,  ProductTypeEntity? package)?  updateData,TResult Function()?  cachedDoc,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize();case _UpdateData() when updateData != null:
return updateData(_that.orderId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.package);case _CachedDoc() when cachedDoc != null:
return cachedDoc();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialize,required TResult Function( GenericFormzInput<int>? orderId,  FileFormzInput? imageOne,  FileFormzInput? imageTwo,  FileFormzInput? videoOne,  FileFormzInput? videoTwo,  GenericFormzInput<double>? latitude,  GenericFormzInput<double>? longitude,  ProductTypeEntity? package)  updateData,required TResult Function()  cachedDoc,}) {final _that = this;
switch (_that) {
case _Initialize():
return initialize();case _UpdateData():
return updateData(_that.orderId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.package);case _CachedDoc():
return cachedDoc();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialize,TResult? Function( GenericFormzInput<int>? orderId,  FileFormzInput? imageOne,  FileFormzInput? imageTwo,  FileFormzInput? videoOne,  FileFormzInput? videoTwo,  GenericFormzInput<double>? latitude,  GenericFormzInput<double>? longitude,  ProductTypeEntity? package)?  updateData,TResult? Function()?  cachedDoc,}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize();case _UpdateData() when updateData != null:
return updateData(_that.orderId,_that.imageOne,_that.imageTwo,_that.videoOne,_that.videoTwo,_that.latitude,_that.longitude,_that.package);case _CachedDoc() when cachedDoc != null:
return cachedDoc();case _:
  return null;

}
}

}

/// @nodoc


class _Initialize implements CachedDocEvent {
  const _Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CachedDocEvent.initialize()';
}


}




/// @nodoc


class _UpdateData implements CachedDocEvent {
  const _UpdateData({this.orderId, this.imageOne, this.imageTwo, this.videoOne, this.videoTwo, this.latitude, this.longitude, this.package});
  

 final  GenericFormzInput<int>? orderId;
 final  FileFormzInput? imageOne;
 final  FileFormzInput? imageTwo;
 final  FileFormzInput? videoOne;
 final  FileFormzInput? videoTwo;
 final  GenericFormzInput<double>? latitude;
 final  GenericFormzInput<double>? longitude;
 final  ProductTypeEntity? package;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDataCopyWith<_UpdateData> get copyWith => __$UpdateDataCopyWithImpl<_UpdateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateData&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.package, package) || other.package == package));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,imageOne,imageTwo,videoOne,videoTwo,latitude,longitude,package);

@override
String toString() {
  return 'CachedDocEvent.updateData(orderId: $orderId, imageOne: $imageOne, imageTwo: $imageTwo, videoOne: $videoOne, videoTwo: $videoTwo, latitude: $latitude, longitude: $longitude, package: $package)';
}


}

/// @nodoc
abstract mixin class _$UpdateDataCopyWith<$Res> implements $CachedDocEventCopyWith<$Res> {
  factory _$UpdateDataCopyWith(_UpdateData value, $Res Function(_UpdateData) _then) = __$UpdateDataCopyWithImpl;
@useResult
$Res call({
 GenericFormzInput<int>? orderId, FileFormzInput? imageOne, FileFormzInput? imageTwo, FileFormzInput? videoOne, FileFormzInput? videoTwo, GenericFormzInput<double>? latitude, GenericFormzInput<double>? longitude, ProductTypeEntity? package
});




}
/// @nodoc
class __$UpdateDataCopyWithImpl<$Res>
    implements _$UpdateDataCopyWith<$Res> {
  __$UpdateDataCopyWithImpl(this._self, this._then);

  final _UpdateData _self;
  final $Res Function(_UpdateData) _then;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? package = freezed,}) {
  return _then(_UpdateData(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<double>?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<double>?,package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as ProductTypeEntity?,
  ));
}


}

/// @nodoc


class _CachedDoc implements CachedDocEvent {
  const _CachedDoc();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedDoc);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CachedDocEvent.cachedDoc()';
}


}




/// @nodoc
mixin _$CachedDocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CachedDocState()';
}


}

/// @nodoc
class $CachedDocStateCopyWith<$Res>  {
$CachedDocStateCopyWith(CachedDocState _, $Res Function(CachedDocState) __);
}


/// Adds pattern-matching-related methods to [CachedDocState].
extension CachedDocStatePatterns on CachedDocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Success():
return success(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( GenericFormzInput<int>? orderId,  FileFormzInput? videoOne,  FileFormzInput? videoTwo,  FileFormzInput? imageOne,  FileFormzInput? imageTwo,  GenericFormzInput<double>? latitude,  GenericFormzInput<double>? longitude,  FormzSubmissionStatus formzSubmissionStatus,  double? cachedProgress)?  loaded,TResult Function()?  success,TResult Function( String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.orderId,_that.videoOne,_that.videoTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude,_that.formzSubmissionStatus,_that.cachedProgress);case _Success() when success != null:
return success();case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( GenericFormzInput<int>? orderId,  FileFormzInput? videoOne,  FileFormzInput? videoTwo,  FileFormzInput? imageOne,  FileFormzInput? imageTwo,  GenericFormzInput<double>? latitude,  GenericFormzInput<double>? longitude,  FormzSubmissionStatus formzSubmissionStatus,  double? cachedProgress)  loaded,required TResult Function()  success,required TResult Function( String error)  failure,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.orderId,_that.videoOne,_that.videoTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude,_that.formzSubmissionStatus,_that.cachedProgress);case _Success():
return success();case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( GenericFormzInput<int>? orderId,  FileFormzInput? videoOne,  FileFormzInput? videoTwo,  FileFormzInput? imageOne,  FileFormzInput? imageTwo,  GenericFormzInput<double>? latitude,  GenericFormzInput<double>? longitude,  FormzSubmissionStatus formzSubmissionStatus,  double? cachedProgress)?  loaded,TResult? Function()?  success,TResult? Function( String error)?  failure,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.orderId,_that.videoOne,_that.videoTwo,_that.imageOne,_that.imageTwo,_that.latitude,_that.longitude,_that.formzSubmissionStatus,_that.cachedProgress);case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements CachedDocState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CachedDocState.loading()';
}


}




/// @nodoc


class _Loaded implements CachedDocState {
  const _Loaded({required this.orderId, required this.videoOne, required this.videoTwo, required this.imageOne, required this.imageTwo, required this.latitude, required this.longitude, required this.formzSubmissionStatus, required this.cachedProgress});
  

 final  GenericFormzInput<int>? orderId;
 final  FileFormzInput? videoOne;
 final  FileFormzInput? videoTwo;
 final  FileFormzInput? imageOne;
 final  FileFormzInput? imageTwo;
 final  GenericFormzInput<double>? latitude;
 final  GenericFormzInput<double>? longitude;
 final  FormzSubmissionStatus formzSubmissionStatus;
 final  double? cachedProgress;

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.videoOne, videoOne) || other.videoOne == videoOne)&&(identical(other.videoTwo, videoTwo) || other.videoTwo == videoTwo)&&(identical(other.imageOne, imageOne) || other.imageOne == imageOne)&&(identical(other.imageTwo, imageTwo) || other.imageTwo == imageTwo)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus)&&(identical(other.cachedProgress, cachedProgress) || other.cachedProgress == cachedProgress));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,videoOne,videoTwo,imageOne,imageTwo,latitude,longitude,formzSubmissionStatus,cachedProgress);

@override
String toString() {
  return 'CachedDocState.loaded(orderId: $orderId, videoOne: $videoOne, videoTwo: $videoTwo, imageOne: $imageOne, imageTwo: $imageTwo, latitude: $latitude, longitude: $longitude, formzSubmissionStatus: $formzSubmissionStatus, cachedProgress: $cachedProgress)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $CachedDocStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 GenericFormzInput<int>? orderId, FileFormzInput? videoOne, FileFormzInput? videoTwo, FileFormzInput? imageOne, FileFormzInput? imageTwo, GenericFormzInput<double>? latitude, GenericFormzInput<double>? longitude, FormzSubmissionStatus formzSubmissionStatus, double? cachedProgress
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? videoOne = freezed,Object? videoTwo = freezed,Object? imageOne = freezed,Object? imageTwo = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? formzSubmissionStatus = null,Object? cachedProgress = freezed,}) {
  return _then(_Loaded(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<int>?,videoOne: freezed == videoOne ? _self.videoOne : videoOne // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,videoTwo: freezed == videoTwo ? _self.videoTwo : videoTwo // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,imageOne: freezed == imageOne ? _self.imageOne : imageOne // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,imageTwo: freezed == imageTwo ? _self.imageTwo : imageTwo // ignore: cast_nullable_to_non_nullable
as FileFormzInput?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<double>?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as GenericFormzInput<double>?,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,cachedProgress: freezed == cachedProgress ? _self.cachedProgress : cachedProgress // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class _Success implements CachedDocState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CachedDocState.success()';
}


}




/// @nodoc


class _Failure implements CachedDocState {
  const _Failure({required this.error});
  

 final  String error;

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CachedDocState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CachedDocStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Failure(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
