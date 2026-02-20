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
mixin _$CachedDocEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int docId)?  initialize,TResult Function( Loaded? loaded,  CreateCachedDocEntity createCachedDoc)?  updateData,TResult Function( Loaded loaded)?  cachedDoc,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.docId);case _UpdateData() when updateData != null:
return updateData(_that.loaded,_that.createCachedDoc);case _CachedDoc() when cachedDoc != null:
return cachedDoc(_that.loaded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int docId)  initialize,required TResult Function( Loaded? loaded,  CreateCachedDocEntity createCachedDoc)  updateData,required TResult Function( Loaded loaded)  cachedDoc,}) {final _that = this;
switch (_that) {
case _Initialize():
return initialize(_that.docId);case _UpdateData():
return updateData(_that.loaded,_that.createCachedDoc);case _CachedDoc():
return cachedDoc(_that.loaded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int docId)?  initialize,TResult? Function( Loaded? loaded,  CreateCachedDocEntity createCachedDoc)?  updateData,TResult? Function( Loaded loaded)?  cachedDoc,}) {final _that = this;
switch (_that) {
case _Initialize() when initialize != null:
return initialize(_that.docId);case _UpdateData() when updateData != null:
return updateData(_that.loaded,_that.createCachedDoc);case _CachedDoc() when cachedDoc != null:
return cachedDoc(_that.loaded);case _:
  return null;

}
}

}

/// @nodoc


class _Initialize with DiagnosticableTreeMixin implements CachedDocEvent {
  const _Initialize({required this.docId});
  

 final  int docId;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializeCopyWith<_Initialize> get copyWith => __$InitializeCopyWithImpl<_Initialize>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocEvent.initialize'))
    ..add(DiagnosticsProperty('docId', docId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialize&&(identical(other.docId, docId) || other.docId == docId));
}


@override
int get hashCode => Object.hash(runtimeType,docId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CachedDocEvent.initialize(docId: $docId)';
}


}

/// @nodoc
abstract mixin class _$InitializeCopyWith<$Res> implements $CachedDocEventCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) _then) = __$InitializeCopyWithImpl;
@useResult
$Res call({
 int docId
});




}
/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(this._self, this._then);

  final _Initialize _self;
  final $Res Function(_Initialize) _then;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? docId = null,}) {
  return _then(_Initialize(
docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateData with DiagnosticableTreeMixin implements CachedDocEvent {
  const _UpdateData({this.loaded, required this.createCachedDoc});
  

 final  Loaded? loaded;
 final  CreateCachedDocEntity createCachedDoc;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDataCopyWith<_UpdateData> get copyWith => __$UpdateDataCopyWithImpl<_UpdateData>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocEvent.updateData'))
    ..add(DiagnosticsProperty('loaded', loaded))..add(DiagnosticsProperty('createCachedDoc', createCachedDoc));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateData&&const DeepCollectionEquality().equals(other.loaded, loaded)&&(identical(other.createCachedDoc, createCachedDoc) || other.createCachedDoc == createCachedDoc));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(loaded),createCachedDoc);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CachedDocEvent.updateData(loaded: $loaded, createCachedDoc: $createCachedDoc)';
}


}

/// @nodoc
abstract mixin class _$UpdateDataCopyWith<$Res> implements $CachedDocEventCopyWith<$Res> {
  factory _$UpdateDataCopyWith(_UpdateData value, $Res Function(_UpdateData) _then) = __$UpdateDataCopyWithImpl;
@useResult
$Res call({
 Loaded? loaded, CreateCachedDocEntity createCachedDoc
});


$CreateCachedDocEntityCopyWith<$Res> get createCachedDoc;

}
/// @nodoc
class __$UpdateDataCopyWithImpl<$Res>
    implements _$UpdateDataCopyWith<$Res> {
  __$UpdateDataCopyWithImpl(this._self, this._then);

  final _UpdateData _self;
  final $Res Function(_UpdateData) _then;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loaded = freezed,Object? createCachedDoc = null,}) {
  return _then(_UpdateData(
loaded: freezed == loaded ? _self.loaded : loaded // ignore: cast_nullable_to_non_nullable
as Loaded?,createCachedDoc: null == createCachedDoc ? _self.createCachedDoc : createCachedDoc // ignore: cast_nullable_to_non_nullable
as CreateCachedDocEntity,
  ));
}

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCachedDocEntityCopyWith<$Res> get createCachedDoc {
  
  return $CreateCachedDocEntityCopyWith<$Res>(_self.createCachedDoc, (value) {
    return _then(_self.copyWith(createCachedDoc: value));
  });
}
}

/// @nodoc


class _CachedDoc with DiagnosticableTreeMixin implements CachedDocEvent {
  const _CachedDoc({required this.loaded});
  

 final  Loaded loaded;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedDocCopyWith<_CachedDoc> get copyWith => __$CachedDocCopyWithImpl<_CachedDoc>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocEvent.cachedDoc'))
    ..add(DiagnosticsProperty('loaded', loaded));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedDoc&&const DeepCollectionEquality().equals(other.loaded, loaded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(loaded));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CachedDocEvent.cachedDoc(loaded: $loaded)';
}


}

/// @nodoc
abstract mixin class _$CachedDocCopyWith<$Res> implements $CachedDocEventCopyWith<$Res> {
  factory _$CachedDocCopyWith(_CachedDoc value, $Res Function(_CachedDoc) _then) = __$CachedDocCopyWithImpl;
@useResult
$Res call({
 Loaded loaded
});




}
/// @nodoc
class __$CachedDocCopyWithImpl<$Res>
    implements _$CachedDocCopyWith<$Res> {
  __$CachedDocCopyWithImpl(this._self, this._then);

  final _CachedDoc _self;
  final $Res Function(_CachedDoc) _then;

/// Create a copy of CachedDocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loaded = freezed,}) {
  return _then(_CachedDoc(
loaded: freezed == loaded ? _self.loaded : loaded // ignore: cast_nullable_to_non_nullable
as Loaded,
  ));
}


}

/// @nodoc
mixin _$CachedDocState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedDocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case Loaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( CreateCachedDocEntity createCachedDoc,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult Function()?  success,TResult Function( String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.createCachedDoc,_that.formzSubmissionStatus);case _Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( CreateCachedDocEntity createCachedDoc,  FormzSubmissionStatus formzSubmissionStatus)  loaded,required TResult Function()  success,required TResult Function( String error)  failure,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case Loaded():
return loaded(_that.createCachedDoc,_that.formzSubmissionStatus);case _Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( CreateCachedDocEntity createCachedDoc,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult? Function()?  success,TResult? Function( String error)?  failure,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.createCachedDoc,_that.formzSubmissionStatus);case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Loading with DiagnosticableTreeMixin implements CachedDocState {
  const _Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CachedDocState.loading()';
}


}




/// @nodoc


class Loaded with DiagnosticableTreeMixin implements CachedDocState {
  const Loaded({required this.createCachedDoc, required this.formzSubmissionStatus});
  

 final  CreateCachedDocEntity createCachedDoc;
 final  FormzSubmissionStatus formzSubmissionStatus;

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocState.loaded'))
    ..add(DiagnosticsProperty('createCachedDoc', createCachedDoc))..add(DiagnosticsProperty('formzSubmissionStatus', formzSubmissionStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&(identical(other.createCachedDoc, createCachedDoc) || other.createCachedDoc == createCachedDoc)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,createCachedDoc,formzSubmissionStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CachedDocState.loaded(createCachedDoc: $createCachedDoc, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $CachedDocStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 CreateCachedDocEntity createCachedDoc, FormzSubmissionStatus formzSubmissionStatus
});


$CreateCachedDocEntityCopyWith<$Res> get createCachedDoc;

}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createCachedDoc = null,Object? formzSubmissionStatus = null,}) {
  return _then(Loaded(
createCachedDoc: null == createCachedDoc ? _self.createCachedDoc : createCachedDoc // ignore: cast_nullable_to_non_nullable
as CreateCachedDocEntity,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,
  ));
}

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCachedDocEntityCopyWith<$Res> get createCachedDoc {
  
  return $CreateCachedDocEntityCopyWith<$Res>(_self.createCachedDoc, (value) {
    return _then(_self.copyWith(createCachedDoc: value));
  });
}
}

/// @nodoc


class _Success with DiagnosticableTreeMixin implements CachedDocState {
  const _Success();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocState.success'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CachedDocState.success()';
}


}




/// @nodoc


class _Failure with DiagnosticableTreeMixin implements CachedDocState {
  const _Failure({required this.error});
  

 final  String error;

/// Create a copy of CachedDocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CachedDocState.failure'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
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
