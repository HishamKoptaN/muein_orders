// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocsEvent {

 int get orderId;
/// Create a copy of DocsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocsEventCopyWith<DocsEvent> get copyWith => _$DocsEventCopyWithImpl<DocsEvent>(this as DocsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocsEvent&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode => Object.hash(runtimeType,orderId);

@override
String toString() {
  return 'DocsEvent(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class $DocsEventCopyWith<$Res>  {
  factory $DocsEventCopyWith(DocsEvent value, $Res Function(DocsEvent) _then) = _$DocsEventCopyWithImpl;
@useResult
$Res call({
 int orderId
});




}
/// @nodoc
class _$DocsEventCopyWithImpl<$Res>
    implements $DocsEventCopyWith<$Res> {
  _$DocsEventCopyWithImpl(this._self, this._then);

  final DocsEvent _self;
  final $Res Function(DocsEvent) _then;

/// Create a copy of DocsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DocsEvent].
extension DocsEventPatterns on DocsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetDocs value)?  getDocs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDocs() when getDocs != null:
return getDocs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetDocs value)  getDocs,}){
final _that = this;
switch (_that) {
case _GetDocs():
return getDocs(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetDocs value)?  getDocs,}){
final _that = this;
switch (_that) {
case _GetDocs() when getDocs != null:
return getDocs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int orderId)?  getDocs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDocs() when getDocs != null:
return getDocs(_that.orderId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int orderId)  getDocs,}) {final _that = this;
switch (_that) {
case _GetDocs():
return getDocs(_that.orderId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int orderId)?  getDocs,}) {final _that = this;
switch (_that) {
case _GetDocs() when getDocs != null:
return getDocs(_that.orderId);case _:
  return null;

}
}

}

/// @nodoc


class _GetDocs implements DocsEvent {
  const _GetDocs({required this.orderId});
  

@override final  int orderId;

/// Create a copy of DocsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDocsCopyWith<_GetDocs> get copyWith => __$GetDocsCopyWithImpl<_GetDocs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDocs&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode => Object.hash(runtimeType,orderId);

@override
String toString() {
  return 'DocsEvent.getDocs(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class _$GetDocsCopyWith<$Res> implements $DocsEventCopyWith<$Res> {
  factory _$GetDocsCopyWith(_GetDocs value, $Res Function(_GetDocs) _then) = __$GetDocsCopyWithImpl;
@override @useResult
$Res call({
 int orderId
});




}
/// @nodoc
class __$GetDocsCopyWithImpl<$Res>
    implements _$GetDocsCopyWith<$Res> {
  __$GetDocsCopyWithImpl(this._self, this._then);

  final _GetDocs _self;
  final $Res Function(_GetDocs) _then;

/// Create a copy of DocsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(_GetDocs(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DocsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DocsState()';
}


}

/// @nodoc
class $DocsStateCopyWith<$Res>  {
$DocsStateCopyWith(DocsState _, $Res Function(DocsState) __);
}


/// Adds pattern-matching-related methods to [DocsState].
extension DocsStatePatterns on DocsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadInProgress value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadInProgress() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadInProgress value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _LoadInProgress():
return loading(_that);case _Success():
return success(_that);case _Loaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadInProgress value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _LoadInProgress() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  success,TResult Function( List<DocEntity>? docs,  bool? hasMore)?  loaded,TResult Function( ApiErrorModel apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadInProgress() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.docs,_that.hasMore);case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  success,required TResult Function( List<DocEntity>? docs,  bool? hasMore)  loaded,required TResult Function( ApiErrorModel apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _LoadInProgress():
return loading();case _Success():
return success();case _Loaded():
return loaded(_that.docs,_that.hasMore);case _Failure():
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( List<DocEntity>? docs,  bool? hasMore)?  loaded,TResult? Function( ApiErrorModel apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _LoadInProgress() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.docs,_that.hasMore);case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _LoadInProgress implements DocsState {
  const _LoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DocsState.loading()';
}


}




/// @nodoc


class _Success implements DocsState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DocsState.success()';
}


}




/// @nodoc


class _Loaded implements DocsState {
  const _Loaded({final  List<DocEntity>? docs = const [], this.hasMore = false}): _docs = docs;
  

 final  List<DocEntity>? _docs;
@JsonKey() List<DocEntity>? get docs {
  final value = _docs;
  if (value == null) return null;
  if (_docs is EqualUnmodifiableListView) return _docs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@JsonKey() final  bool? hasMore;

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._docs, _docs)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_docs),hasMore);

@override
String toString() {
  return 'DocsState.loaded(docs: $docs, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $DocsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<DocEntity>? docs, bool? hasMore
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? docs = freezed,Object? hasMore = freezed,}) {
  return _then(_Loaded(
docs: freezed == docs ? _self._docs : docs // ignore: cast_nullable_to_non_nullable
as List<DocEntity>?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _Failure implements DocsState {
  const _Failure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'DocsState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $DocsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});


$ApiErrorModelCopyWith<$Res> get apiErrorModel;

}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}

/// Create a copy of DocsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiErrorModelCopyWith<$Res> get apiErrorModel {
  
  return $ApiErrorModelCopyWith<$Res>(_self.apiErrorModel, (value) {
    return _then(_self.copyWith(apiErrorModel: value));
  });
}
}

// dart format on
