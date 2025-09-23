// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int packageId, bool loadMore, bool? isQuranPhotographed)
        getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult Function(int orderId)? updateIsDistributionPhotographed,
    TResult Function(String query, bool getMore)? searchOrders,
    TResult Function()? disposeSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateIsDistributionPhotographed value)
        updateIsDistributionPhotographed,
    required TResult Function(_SearchOrders value) searchOrders,
    required TResult Function(_DisposeSearch value) disposeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult? Function(_SearchOrders value)? searchOrders,
    TResult? Function(_DisposeSearch value)? disposeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult Function(_SearchOrders value)? searchOrders,
    TResult Function(_DisposeSearch value)? disposeSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int packageId, bool loadMore, bool? isQuranPhotographed});
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
    Object? loadMore = null,
    Object? isQuranPhotographed = freezed,
  }) {
    return _then(_$GetOrdersImpl(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuranPhotographed: freezed == isQuranPhotographed
          ? _value.isQuranPhotographed
          : isQuranPhotographed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl(
      {required this.packageId,
      required this.loadMore,
      this.isQuranPhotographed});

  @override
  final int packageId;
  @override
  final bool loadMore;
  @override
  final bool? isQuranPhotographed;

  @override
  String toString() {
    return 'OrdersEvent.getOrders(packageId: $packageId, loadMore: $loadMore, isQuranPhotographed: $isQuranPhotographed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersImpl &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore) &&
            (identical(other.isQuranPhotographed, isQuranPhotographed) ||
                other.isQuranPhotographed == isQuranPhotographed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, packageId, loadMore, isQuranPhotographed);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      __$$GetOrdersImplCopyWithImpl<_$GetOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int packageId, bool loadMore, bool? isQuranPhotographed)
        getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return getOrders(packageId, loadMore, isQuranPhotographed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return getOrders?.call(packageId, loadMore, isQuranPhotographed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult Function(int orderId)? updateIsDistributionPhotographed,
    TResult Function(String query, bool getMore)? searchOrders,
    TResult Function()? disposeSearch,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(packageId, loadMore, isQuranPhotographed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateIsDistributionPhotographed value)
        updateIsDistributionPhotographed,
    required TResult Function(_SearchOrders value) searchOrders,
    required TResult Function(_DisposeSearch value) disposeSearch,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult? Function(_SearchOrders value)? searchOrders,
    TResult? Function(_DisposeSearch value)? disposeSearch,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult Function(_SearchOrders value)? searchOrders,
    TResult Function(_DisposeSearch value)? disposeSearch,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements OrdersEvent {
  const factory _GetOrders(
      {required final int packageId,
      required final bool loadMore,
      final bool? isQuranPhotographed}) = _$GetOrdersImpl;

  int get packageId;
  bool get loadMore;
  bool? get isQuranPhotographed;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIsDistributionPhotographedImplCopyWith<$Res> {
  factory _$$UpdateIsDistributionPhotographedImplCopyWith(
          _$UpdateIsDistributionPhotographedImpl value,
          $Res Function(_$UpdateIsDistributionPhotographedImpl) then) =
      __$$UpdateIsDistributionPhotographedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$UpdateIsDistributionPhotographedImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res,
        _$UpdateIsDistributionPhotographedImpl>
    implements _$$UpdateIsDistributionPhotographedImplCopyWith<$Res> {
  __$$UpdateIsDistributionPhotographedImplCopyWithImpl(
      _$UpdateIsDistributionPhotographedImpl _value,
      $Res Function(_$UpdateIsDistributionPhotographedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$UpdateIsDistributionPhotographedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateIsDistributionPhotographedImpl
    implements _UpdateIsDistributionPhotographed {
  const _$UpdateIsDistributionPhotographedImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.updateIsDistributionPhotographed(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIsDistributionPhotographedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIsDistributionPhotographedImplCopyWith<
          _$UpdateIsDistributionPhotographedImpl>
      get copyWith => __$$UpdateIsDistributionPhotographedImplCopyWithImpl<
          _$UpdateIsDistributionPhotographedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int packageId, bool loadMore, bool? isQuranPhotographed)
        getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return updateIsDistributionPhotographed(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return updateIsDistributionPhotographed?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult Function(int orderId)? updateIsDistributionPhotographed,
    TResult Function(String query, bool getMore)? searchOrders,
    TResult Function()? disposeSearch,
    required TResult orElse(),
  }) {
    if (updateIsDistributionPhotographed != null) {
      return updateIsDistributionPhotographed(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateIsDistributionPhotographed value)
        updateIsDistributionPhotographed,
    required TResult Function(_SearchOrders value) searchOrders,
    required TResult Function(_DisposeSearch value) disposeSearch,
  }) {
    return updateIsDistributionPhotographed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult? Function(_SearchOrders value)? searchOrders,
    TResult? Function(_DisposeSearch value)? disposeSearch,
  }) {
    return updateIsDistributionPhotographed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult Function(_SearchOrders value)? searchOrders,
    TResult Function(_DisposeSearch value)? disposeSearch,
    required TResult orElse(),
  }) {
    if (updateIsDistributionPhotographed != null) {
      return updateIsDistributionPhotographed(this);
    }
    return orElse();
  }
}

abstract class _UpdateIsDistributionPhotographed implements OrdersEvent {
  const factory _UpdateIsDistributionPhotographed(
      {required final int orderId}) = _$UpdateIsDistributionPhotographedImpl;

  int get orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateIsDistributionPhotographedImplCopyWith<
          _$UpdateIsDistributionPhotographedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchOrdersImplCopyWith<$Res> {
  factory _$$SearchOrdersImplCopyWith(
          _$SearchOrdersImpl value, $Res Function(_$SearchOrdersImpl) then) =
      __$$SearchOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, bool getMore});
}

/// @nodoc
class __$$SearchOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SearchOrdersImpl>
    implements _$$SearchOrdersImplCopyWith<$Res> {
  __$$SearchOrdersImplCopyWithImpl(
      _$SearchOrdersImpl _value, $Res Function(_$SearchOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? getMore = null,
  }) {
    return _then(_$SearchOrdersImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      getMore: null == getMore
          ? _value.getMore
          : getMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchOrdersImpl implements _SearchOrders {
  const _$SearchOrdersImpl({required this.query, this.getMore = false});

  @override
  final String query;
  @override
  @JsonKey()
  final bool getMore;

  @override
  String toString() {
    return 'OrdersEvent.searchOrders(query: $query, getMore: $getMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOrdersImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.getMore, getMore) || other.getMore == getMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, getMore);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchOrdersImplCopyWith<_$SearchOrdersImpl> get copyWith =>
      __$$SearchOrdersImplCopyWithImpl<_$SearchOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int packageId, bool loadMore, bool? isQuranPhotographed)
        getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return searchOrders(query, getMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return searchOrders?.call(query, getMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult Function(int orderId)? updateIsDistributionPhotographed,
    TResult Function(String query, bool getMore)? searchOrders,
    TResult Function()? disposeSearch,
    required TResult orElse(),
  }) {
    if (searchOrders != null) {
      return searchOrders(query, getMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateIsDistributionPhotographed value)
        updateIsDistributionPhotographed,
    required TResult Function(_SearchOrders value) searchOrders,
    required TResult Function(_DisposeSearch value) disposeSearch,
  }) {
    return searchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult? Function(_SearchOrders value)? searchOrders,
    TResult? Function(_DisposeSearch value)? disposeSearch,
  }) {
    return searchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult Function(_SearchOrders value)? searchOrders,
    TResult Function(_DisposeSearch value)? disposeSearch,
    required TResult orElse(),
  }) {
    if (searchOrders != null) {
      return searchOrders(this);
    }
    return orElse();
  }
}

abstract class _SearchOrders implements OrdersEvent {
  const factory _SearchOrders(
      {required final String query, final bool getMore}) = _$SearchOrdersImpl;

  String get query;
  bool get getMore;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchOrdersImplCopyWith<_$SearchOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeSearchImplCopyWith<$Res> {
  factory _$$DisposeSearchImplCopyWith(
          _$DisposeSearchImpl value, $Res Function(_$DisposeSearchImpl) then) =
      __$$DisposeSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeSearchImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$DisposeSearchImpl>
    implements _$$DisposeSearchImplCopyWith<$Res> {
  __$$DisposeSearchImplCopyWithImpl(
      _$DisposeSearchImpl _value, $Res Function(_$DisposeSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisposeSearchImpl implements _DisposeSearch {
  const _$DisposeSearchImpl();

  @override
  String toString() {
    return 'OrdersEvent.disposeSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisposeSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int packageId, bool loadMore, bool? isQuranPhotographed)
        getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return disposeSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return disposeSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int packageId, bool loadMore, bool? isQuranPhotographed)?
        getOrders,
    TResult Function(int orderId)? updateIsDistributionPhotographed,
    TResult Function(String query, bool getMore)? searchOrders,
    TResult Function()? disposeSearch,
    required TResult orElse(),
  }) {
    if (disposeSearch != null) {
      return disposeSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_UpdateIsDistributionPhotographed value)
        updateIsDistributionPhotographed,
    required TResult Function(_SearchOrders value) searchOrders,
    required TResult Function(_DisposeSearch value) disposeSearch,
  }) {
    return disposeSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult? Function(_SearchOrders value)? searchOrders,
    TResult? Function(_DisposeSearch value)? disposeSearch,
  }) {
    return disposeSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_UpdateIsDistributionPhotographed value)?
        updateIsDistributionPhotographed,
    TResult Function(_SearchOrders value)? searchOrders,
    TResult Function(_DisposeSearch value)? disposeSearch,
    required TResult orElse(),
  }) {
    if (disposeSearch != null) {
      return disposeSearch(this);
    }
    return orElse();
  }
}

abstract class _DisposeSearch implements OrdersEvent {
  const factory _DisposeSearch() = _$DisposeSearchImpl;
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<OrderEntity>? orders, bool? hasMore) loaded,
    required TResult Function() clientShare,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult? Function()? clientShare,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult Function()? clientShare,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientShare value) clientShare,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientShare value)? clientShare,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientShare value)? clientShare,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrdersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<OrderEntity>? orders, bool? hasMore) loaded,
    required TResult Function() clientShare,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult? Function()? clientShare,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult Function()? clientShare,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientShare value) clientShare,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientShare value)? clientShare,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientShare value)? clientShare,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrdersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<OrderEntity>? orders, bool? hasMore) loaded,
    required TResult Function() clientShare,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult? Function()? clientShare,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult Function()? clientShare,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientShare value) clientShare,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientShare value)? clientShare,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientShare value)? clientShare,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrdersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'OrdersState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<OrderEntity>? orders, bool? hasMore) loaded,
    required TResult Function() clientShare,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult? Function()? clientShare,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult Function()? clientShare,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientShare value) clientShare,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientShare value)? clientShare,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientShare value)? clientShare,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements OrdersState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderEntity>? orders, bool? hasMore});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_$LoadedImpl(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<OrderEntity>? orders, required this.hasMore})
      : _orders = orders;

  final List<OrderEntity>? _orders;
  @override
  List<OrderEntity>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? hasMore;

  @override
  String toString() {
    return 'OrdersState.loaded(orders: $orders, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), hasMore);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<OrderEntity>? orders, bool? hasMore) loaded,
    required TResult Function() clientShare,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loaded(orders, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult? Function()? clientShare,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loaded?.call(orders, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult Function()? clientShare,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orders, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientShare value) clientShare,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientShare value)? clientShare,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientShare value)? clientShare,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OrdersState {
  const factory _Loaded(
      {required final List<OrderEntity>? orders,
      required final bool? hasMore}) = _$LoadedImpl;

  List<OrderEntity>? get orders;
  bool? get hasMore;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientShareImplCopyWith<$Res> {
  factory _$$ClientShareImplCopyWith(
          _$ClientShareImpl value, $Res Function(_$ClientShareImpl) then) =
      __$$ClientShareImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientShareImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$ClientShareImpl>
    implements _$$ClientShareImplCopyWith<$Res> {
  __$$ClientShareImplCopyWithImpl(
      _$ClientShareImpl _value, $Res Function(_$ClientShareImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientShareImpl implements _ClientShare {
  const _$ClientShareImpl();

  @override
  String toString() {
    return 'OrdersState.clientShare()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientShareImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<OrderEntity>? orders, bool? hasMore) loaded,
    required TResult Function() clientShare,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return clientShare();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult? Function()? clientShare,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return clientShare?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult Function()? clientShare,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (clientShare != null) {
      return clientShare();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientShare value) clientShare,
    required TResult Function(_Failure value) failure,
  }) {
    return clientShare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientShare value)? clientShare,
    TResult? Function(_Failure value)? failure,
  }) {
    return clientShare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientShare value)? clientShare,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (clientShare != null) {
      return clientShare(this);
    }
    return orElse();
  }
}

abstract class _ClientShare implements OrdersState {
  const factory _ClientShare() = _$ClientShareImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$FailureImpl(
      apiErrorModel: null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.apiErrorModel});

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'OrdersState.failure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<OrderEntity>? orders, bool? hasMore) loaded,
    required TResult Function() clientShare,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return failure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult? Function()? clientShare,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return failure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<OrderEntity>? orders, bool? hasMore)? loaded,
    TResult Function()? clientShare,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientShare value) clientShare,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientShare value)? clientShare,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientShare value)? clientShare,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OrdersState {
  const factory _Failure({required final ApiErrorModel apiErrorModel}) =
      _$FailureImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
