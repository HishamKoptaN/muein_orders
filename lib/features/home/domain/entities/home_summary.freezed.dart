// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeSummary {
  int get totalOrders => throw _privateConstructorUsedError;
  int get pendingOrders => throw _privateConstructorUsedError;
  int get deliveredOrders => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;

  /// Create a copy of HomeSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeSummaryCopyWith<HomeSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSummaryCopyWith<$Res> {
  factory $HomeSummaryCopyWith(
          HomeSummary value, $Res Function(HomeSummary) then) =
      _$HomeSummaryCopyWithImpl<$Res, HomeSummary>;
  @useResult
  $Res call(
      {int totalOrders,
      int pendingOrders,
      int deliveredOrders,
      double? revenue});
}

/// @nodoc
class _$HomeSummaryCopyWithImpl<$Res, $Val extends HomeSummary>
    implements $HomeSummaryCopyWith<$Res> {
  _$HomeSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? pendingOrders = null,
    Object? deliveredOrders = null,
    Object? revenue = freezed,
  }) {
    return _then(_value.copyWith(
      totalOrders: null == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int,
      pendingOrders: null == pendingOrders
          ? _value.pendingOrders
          : pendingOrders // ignore: cast_nullable_to_non_nullable
              as int,
      deliveredOrders: null == deliveredOrders
          ? _value.deliveredOrders
          : deliveredOrders // ignore: cast_nullable_to_non_nullable
              as int,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeSummaryImplCopyWith<$Res>
    implements $HomeSummaryCopyWith<$Res> {
  factory _$$HomeSummaryImplCopyWith(
          _$HomeSummaryImpl value, $Res Function(_$HomeSummaryImpl) then) =
      __$$HomeSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalOrders,
      int pendingOrders,
      int deliveredOrders,
      double? revenue});
}

/// @nodoc
class __$$HomeSummaryImplCopyWithImpl<$Res>
    extends _$HomeSummaryCopyWithImpl<$Res, _$HomeSummaryImpl>
    implements _$$HomeSummaryImplCopyWith<$Res> {
  __$$HomeSummaryImplCopyWithImpl(
      _$HomeSummaryImpl _value, $Res Function(_$HomeSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? pendingOrders = null,
    Object? deliveredOrders = null,
    Object? revenue = freezed,
  }) {
    return _then(_$HomeSummaryImpl(
      totalOrders: null == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int,
      pendingOrders: null == pendingOrders
          ? _value.pendingOrders
          : pendingOrders // ignore: cast_nullable_to_non_nullable
              as int,
      deliveredOrders: null == deliveredOrders
          ? _value.deliveredOrders
          : deliveredOrders // ignore: cast_nullable_to_non_nullable
              as int,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$HomeSummaryImpl implements _HomeSummary {
  const _$HomeSummaryImpl(
      {required this.totalOrders,
      required this.pendingOrders,
      required this.deliveredOrders,
      this.revenue});

  @override
  final int totalOrders;
  @override
  final int pendingOrders;
  @override
  final int deliveredOrders;
  @override
  final double? revenue;

  @override
  String toString() {
    return 'HomeSummary(totalOrders: $totalOrders, pendingOrders: $pendingOrders, deliveredOrders: $deliveredOrders, revenue: $revenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSummaryImpl &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.pendingOrders, pendingOrders) ||
                other.pendingOrders == pendingOrders) &&
            (identical(other.deliveredOrders, deliveredOrders) ||
                other.deliveredOrders == deliveredOrders) &&
            (identical(other.revenue, revenue) || other.revenue == revenue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalOrders, pendingOrders, deliveredOrders, revenue);

  /// Create a copy of HomeSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSummaryImplCopyWith<_$HomeSummaryImpl> get copyWith =>
      __$$HomeSummaryImplCopyWithImpl<_$HomeSummaryImpl>(this, _$identity);
}

abstract class _HomeSummary implements HomeSummary {
  const factory _HomeSummary(
      {required final int totalOrders,
      required final int pendingOrders,
      required final int deliveredOrders,
      final double? revenue}) = _$HomeSummaryImpl;

  @override
  int get totalOrders;
  @override
  int get pendingOrders;
  @override
  int get deliveredOrders;
  @override
  double? get revenue;

  /// Create a copy of HomeSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSummaryImplCopyWith<_$HomeSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
