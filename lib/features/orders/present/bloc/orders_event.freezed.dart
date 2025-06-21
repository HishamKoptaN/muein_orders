// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_event.dart';

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
    required TResult Function(bool getMore) getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getMore)? getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getMore)? getOrders,
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
  $Res call({bool getMore});
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
    Object? getMore = null,
  }) {
    return _then(_$GetOrdersImpl(
      getMore: null == getMore
          ? _value.getMore
          : getMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl({this.getMore = false});

  @override
  @JsonKey()
  final bool getMore;

  @override
  String toString() {
    return 'OrdersEvent.getOrders(getMore: $getMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersImpl &&
            (identical(other.getMore, getMore) || other.getMore == getMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getMore);

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
    required TResult Function(bool getMore) getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return getOrders(getMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getMore)? getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return getOrders?.call(getMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getMore)? getOrders,
    TResult Function(int orderId)? updateIsDistributionPhotographed,
    TResult Function(String query, bool getMore)? searchOrders,
    TResult Function()? disposeSearch,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(getMore);
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
  const factory _GetOrders({final bool getMore}) = _$GetOrdersImpl;

  bool get getMore;

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
    required TResult Function(bool getMore) getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return updateIsDistributionPhotographed(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getMore)? getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return updateIsDistributionPhotographed?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getMore)? getOrders,
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
    required TResult Function(bool getMore) getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return searchOrders(query, getMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getMore)? getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return searchOrders?.call(query, getMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getMore)? getOrders,
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
    required TResult Function(bool getMore) getOrders,
    required TResult Function(int orderId) updateIsDistributionPhotographed,
    required TResult Function(String query, bool getMore) searchOrders,
    required TResult Function() disposeSearch,
  }) {
    return disposeSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getMore)? getOrders,
    TResult? Function(int orderId)? updateIsDistributionPhotographed,
    TResult? Function(String query, bool getMore)? searchOrders,
    TResult? Function()? disposeSearch,
  }) {
    return disposeSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getMore)? getOrders,
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
