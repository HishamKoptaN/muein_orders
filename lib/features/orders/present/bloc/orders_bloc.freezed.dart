// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersEvent {

 int get subCategoryId; bool get loadMore;
/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersEventCopyWith<OrdersEvent> get copyWith => _$OrdersEventCopyWithImpl<OrdersEvent>(this as OrdersEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersEvent&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}


@override
int get hashCode => Object.hash(runtimeType,subCategoryId,loadMore);

@override
String toString() {
  return 'OrdersEvent(subCategoryId: $subCategoryId, loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class $OrdersEventCopyWith<$Res>  {
  factory $OrdersEventCopyWith(OrdersEvent value, $Res Function(OrdersEvent) _then) = _$OrdersEventCopyWithImpl;
@useResult
$Res call({
 int subCategoryId, bool loadMore
});




}
/// @nodoc
class _$OrdersEventCopyWithImpl<$Res>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._self, this._then);

  final OrdersEvent _self;
  final $Res Function(OrdersEvent) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subCategoryId = null,Object? loadMore = null,}) {
  return _then(_self.copyWith(
subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersEvent].
extension OrdersEventPatterns on OrdersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetOrders value)?  getOrders,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetOrders value)  getOrders,}){
final _that = this;
switch (_that) {
case _GetOrders():
return getOrders(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetOrders value)?  getOrders,}){
final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int subCategoryId,  bool loadMore)?  getOrders,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that.subCategoryId,_that.loadMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int subCategoryId,  bool loadMore)  getOrders,}) {final _that = this;
switch (_that) {
case _GetOrders():
return getOrders(_that.subCategoryId,_that.loadMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int subCategoryId,  bool loadMore)?  getOrders,}) {final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that.subCategoryId,_that.loadMore);case _:
  return null;

}
}

}

/// @nodoc


class _GetOrders implements OrdersEvent {
  const _GetOrders({required this.subCategoryId, required this.loadMore});
  

@override final  int subCategoryId;
@override final  bool loadMore;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrdersCopyWith<_GetOrders> get copyWith => __$GetOrdersCopyWithImpl<_GetOrders>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrders&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}


@override
int get hashCode => Object.hash(runtimeType,subCategoryId,loadMore);

@override
String toString() {
  return 'OrdersEvent.getOrders(subCategoryId: $subCategoryId, loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class _$GetOrdersCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$GetOrdersCopyWith(_GetOrders value, $Res Function(_GetOrders) _then) = __$GetOrdersCopyWithImpl;
@override @useResult
$Res call({
 int subCategoryId, bool loadMore
});




}
/// @nodoc
class __$GetOrdersCopyWithImpl<$Res>
    implements _$GetOrdersCopyWith<$Res> {
  __$GetOrdersCopyWithImpl(this._self, this._then);

  final _GetOrders _self;
  final $Res Function(_GetOrders) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subCategoryId = null,Object? loadMore = null,}) {
  return _then(_GetOrders(
subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$OrdersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState()';
}


}

/// @nodoc
class $OrdersStateCopyWith<$Res>  {
$OrdersStateCopyWith(OrdersState _, $Res Function(OrdersState) __);
}


/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( OrdersResEntity ordersRes)?  loaded,TResult Function( ApiErrorModel apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.ordersRes);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( OrdersResEntity ordersRes)  loaded,required TResult Function( ApiErrorModel apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.ordersRes);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( OrdersResEntity ordersRes)?  loaded,TResult? Function( ApiErrorModel apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.ordersRes);case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OrdersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.initial()';
}


}




/// @nodoc


class _Loading implements OrdersState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.loading()';
}


}




/// @nodoc


class _Loaded implements OrdersState {
  const _Loaded({required this.ordersRes});
  

 final  OrdersResEntity ordersRes;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.ordersRes, ordersRes) || other.ordersRes == ordersRes));
}


@override
int get hashCode => Object.hash(runtimeType,ordersRes);

@override
String toString() {
  return 'OrdersState.loaded(ordersRes: $ordersRes)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 OrdersResEntity ordersRes
});


$OrdersResEntityCopyWith<$Res> get ordersRes;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ordersRes = null,}) {
  return _then(_Loaded(
ordersRes: null == ordersRes ? _self.ordersRes : ordersRes // ignore: cast_nullable_to_non_nullable
as OrdersResEntity,
  ));
}

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrdersResEntityCopyWith<$Res> get ordersRes {
  
  return $OrdersResEntityCopyWith<$Res>(_self.ordersRes, (value) {
    return _then(_self.copyWith(ordersRes: value));
  });
}
}

/// @nodoc


class _Failure implements OrdersState {
  const _Failure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of OrdersState
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
  return 'OrdersState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
