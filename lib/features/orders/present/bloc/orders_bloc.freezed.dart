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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersEvent()';
}


}

/// @nodoc
class $OrdersEventCopyWith<$Res>  {
$OrdersEventCopyWith(OrdersEvent _, $Res Function(OrdersEvent) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetOrders value)?  getOrders,TResult Function( _UpdateIsDistributionPhotographed value)?  updateIsDistributionPhotographed,TResult Function( _SearchOrders value)?  searchOrders,TResult Function( _DisposeSearch value)?  disposeSearch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that);case _UpdateIsDistributionPhotographed() when updateIsDistributionPhotographed != null:
return updateIsDistributionPhotographed(_that);case _SearchOrders() when searchOrders != null:
return searchOrders(_that);case _DisposeSearch() when disposeSearch != null:
return disposeSearch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetOrders value)  getOrders,required TResult Function( _UpdateIsDistributionPhotographed value)  updateIsDistributionPhotographed,required TResult Function( _SearchOrders value)  searchOrders,required TResult Function( _DisposeSearch value)  disposeSearch,}){
final _that = this;
switch (_that) {
case _GetOrders():
return getOrders(_that);case _UpdateIsDistributionPhotographed():
return updateIsDistributionPhotographed(_that);case _SearchOrders():
return searchOrders(_that);case _DisposeSearch():
return disposeSearch(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetOrders value)?  getOrders,TResult? Function( _UpdateIsDistributionPhotographed value)?  updateIsDistributionPhotographed,TResult? Function( _SearchOrders value)?  searchOrders,TResult? Function( _DisposeSearch value)?  disposeSearch,}){
final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that);case _UpdateIsDistributionPhotographed() when updateIsDistributionPhotographed != null:
return updateIsDistributionPhotographed(_that);case _SearchOrders() when searchOrders != null:
return searchOrders(_that);case _DisposeSearch() when disposeSearch != null:
return disposeSearch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int subCategoryId,  bool loadMore,  bool? isQuranPhotographed)?  getOrders,TResult Function( int orderId)?  updateIsDistributionPhotographed,TResult Function( String query,  bool getMore)?  searchOrders,TResult Function()?  disposeSearch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that.subCategoryId,_that.loadMore,_that.isQuranPhotographed);case _UpdateIsDistributionPhotographed() when updateIsDistributionPhotographed != null:
return updateIsDistributionPhotographed(_that.orderId);case _SearchOrders() when searchOrders != null:
return searchOrders(_that.query,_that.getMore);case _DisposeSearch() when disposeSearch != null:
return disposeSearch();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int subCategoryId,  bool loadMore,  bool? isQuranPhotographed)  getOrders,required TResult Function( int orderId)  updateIsDistributionPhotographed,required TResult Function( String query,  bool getMore)  searchOrders,required TResult Function()  disposeSearch,}) {final _that = this;
switch (_that) {
case _GetOrders():
return getOrders(_that.subCategoryId,_that.loadMore,_that.isQuranPhotographed);case _UpdateIsDistributionPhotographed():
return updateIsDistributionPhotographed(_that.orderId);case _SearchOrders():
return searchOrders(_that.query,_that.getMore);case _DisposeSearch():
return disposeSearch();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int subCategoryId,  bool loadMore,  bool? isQuranPhotographed)?  getOrders,TResult? Function( int orderId)?  updateIsDistributionPhotographed,TResult? Function( String query,  bool getMore)?  searchOrders,TResult? Function()?  disposeSearch,}) {final _that = this;
switch (_that) {
case _GetOrders() when getOrders != null:
return getOrders(_that.subCategoryId,_that.loadMore,_that.isQuranPhotographed);case _UpdateIsDistributionPhotographed() when updateIsDistributionPhotographed != null:
return updateIsDistributionPhotographed(_that.orderId);case _SearchOrders() when searchOrders != null:
return searchOrders(_that.query,_that.getMore);case _DisposeSearch() when disposeSearch != null:
return disposeSearch();case _:
  return null;

}
}

}

/// @nodoc


class _GetOrders implements OrdersEvent {
  const _GetOrders({required this.subCategoryId, required this.loadMore, this.isQuranPhotographed});
  

 final  int subCategoryId;
 final  bool loadMore;
 final  bool? isQuranPhotographed;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrdersCopyWith<_GetOrders> get copyWith => __$GetOrdersCopyWithImpl<_GetOrders>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrders&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore)&&(identical(other.isQuranPhotographed, isQuranPhotographed) || other.isQuranPhotographed == isQuranPhotographed));
}


@override
int get hashCode => Object.hash(runtimeType,subCategoryId,loadMore,isQuranPhotographed);

@override
String toString() {
  return 'OrdersEvent.getOrders(subCategoryId: $subCategoryId, loadMore: $loadMore, isQuranPhotographed: $isQuranPhotographed)';
}


}

/// @nodoc
abstract mixin class _$GetOrdersCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$GetOrdersCopyWith(_GetOrders value, $Res Function(_GetOrders) _then) = __$GetOrdersCopyWithImpl;
@useResult
$Res call({
 int subCategoryId, bool loadMore, bool? isQuranPhotographed
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
@pragma('vm:prefer-inline') $Res call({Object? subCategoryId = null,Object? loadMore = null,Object? isQuranPhotographed = freezed,}) {
  return _then(_GetOrders(
subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,isQuranPhotographed: freezed == isQuranPhotographed ? _self.isQuranPhotographed : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _UpdateIsDistributionPhotographed implements OrdersEvent {
  const _UpdateIsDistributionPhotographed({required this.orderId});
  

 final  int orderId;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateIsDistributionPhotographedCopyWith<_UpdateIsDistributionPhotographed> get copyWith => __$UpdateIsDistributionPhotographedCopyWithImpl<_UpdateIsDistributionPhotographed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateIsDistributionPhotographed&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode => Object.hash(runtimeType,orderId);

@override
String toString() {
  return 'OrdersEvent.updateIsDistributionPhotographed(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class _$UpdateIsDistributionPhotographedCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$UpdateIsDistributionPhotographedCopyWith(_UpdateIsDistributionPhotographed value, $Res Function(_UpdateIsDistributionPhotographed) _then) = __$UpdateIsDistributionPhotographedCopyWithImpl;
@useResult
$Res call({
 int orderId
});




}
/// @nodoc
class __$UpdateIsDistributionPhotographedCopyWithImpl<$Res>
    implements _$UpdateIsDistributionPhotographedCopyWith<$Res> {
  __$UpdateIsDistributionPhotographedCopyWithImpl(this._self, this._then);

  final _UpdateIsDistributionPhotographed _self;
  final $Res Function(_UpdateIsDistributionPhotographed) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(_UpdateIsDistributionPhotographed(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SearchOrders implements OrdersEvent {
  const _SearchOrders({required this.query, this.getMore = false});
  

 final  String query;
@JsonKey() final  bool getMore;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchOrdersCopyWith<_SearchOrders> get copyWith => __$SearchOrdersCopyWithImpl<_SearchOrders>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchOrders&&(identical(other.query, query) || other.query == query)&&(identical(other.getMore, getMore) || other.getMore == getMore));
}


@override
int get hashCode => Object.hash(runtimeType,query,getMore);

@override
String toString() {
  return 'OrdersEvent.searchOrders(query: $query, getMore: $getMore)';
}


}

/// @nodoc
abstract mixin class _$SearchOrdersCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$SearchOrdersCopyWith(_SearchOrders value, $Res Function(_SearchOrders) _then) = __$SearchOrdersCopyWithImpl;
@useResult
$Res call({
 String query, bool getMore
});




}
/// @nodoc
class __$SearchOrdersCopyWithImpl<$Res>
    implements _$SearchOrdersCopyWith<$Res> {
  __$SearchOrdersCopyWithImpl(this._self, this._then);

  final _SearchOrders _self;
  final $Res Function(_SearchOrders) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? getMore = null,}) {
  return _then(_SearchOrders(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,getMore: null == getMore ? _self.getMore : getMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _DisposeSearch implements OrdersEvent {
  const _DisposeSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisposeSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersEvent.disposeSearch()';
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<OrderEntity>? orders,  bool? hasMore)?  loaded,TResult Function( ApiErrorModel apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.orders,_that.hasMore);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<OrderEntity>? orders,  bool? hasMore)  loaded,required TResult Function( ApiErrorModel apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.orders,_that.hasMore);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<OrderEntity>? orders,  bool? hasMore)?  loaded,TResult? Function( ApiErrorModel apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.orders,_that.hasMore);case _Failure() when failure != null:
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
  const _Loaded({required final  List<OrderEntity>? orders, required this.hasMore}): _orders = orders;
  

 final  List<OrderEntity>? _orders;
 List<OrderEntity>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  bool? hasMore;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),hasMore);

@override
String toString() {
  return 'OrdersState.loaded(orders: $orders, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<OrderEntity>? orders, bool? hasMore
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orders = freezed,Object? hasMore = freezed,}) {
  return _then(_Loaded(
orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
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
