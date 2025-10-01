// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileResModel _$ProfileResModelFromJson(Map<String, dynamic> json) {
  return _ProfileResModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileResModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  Balance? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileResModelCopyWith<ProfileResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResModelCopyWith<$Res> {
  factory $ProfileResModelCopyWith(
          ProfileResModel value, $Res Function(ProfileResModel) then) =
      _$ProfileResModelCopyWithImpl<$Res, ProfileResModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'phone') String? phone,
      String? email,
      @JsonKey(name: 'balance') Balance? balance,
      @JsonKey(name: 'created_at') String? createdAt});

  $BalanceCopyWith<$Res>? get balance;
}

/// @nodoc
class _$ProfileResModelCopyWithImpl<$Res, $Val extends ProfileResModel>
    implements $ProfileResModelCopyWith<$Res> {
  _$ProfileResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? balance = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProfileResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BalanceCopyWith<$Res>? get balance {
    if (_value.balance == null) {
      return null;
    }

    return $BalanceCopyWith<$Res>(_value.balance!, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResModelImplCopyWith<$Res>
    implements $ProfileResModelCopyWith<$Res> {
  factory _$$ProfileResModelImplCopyWith(_$ProfileResModelImpl value,
          $Res Function(_$ProfileResModelImpl) then) =
      __$$ProfileResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'phone') String? phone,
      String? email,
      @JsonKey(name: 'balance') Balance? balance,
      @JsonKey(name: 'created_at') String? createdAt});

  @override
  $BalanceCopyWith<$Res>? get balance;
}

/// @nodoc
class __$$ProfileResModelImplCopyWithImpl<$Res>
    extends _$ProfileResModelCopyWithImpl<$Res, _$ProfileResModelImpl>
    implements _$$ProfileResModelImplCopyWith<$Res> {
  __$$ProfileResModelImplCopyWithImpl(
      _$ProfileResModelImpl _value, $Res Function(_$ProfileResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? balance = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ProfileResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResModelImpl implements _ProfileResModel {
  const _$ProfileResModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'phone') this.phone,
      this.email,
      @JsonKey(name: 'balance') this.balance,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$ProfileResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  final String? email;
  @override
  @JsonKey(name: 'balance')
  final Balance? balance;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'ProfileResModel(id: $id, name: $name, image: $image, phone: $phone, email: $email, balance: $balance, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, phone, email, balance, createdAt);

  /// Create a copy of ProfileResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResModelImplCopyWith<_$ProfileResModelImpl> get copyWith =>
      __$$ProfileResModelImplCopyWithImpl<_$ProfileResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileResModel implements ProfileResModel {
  const factory _ProfileResModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'phone') final String? phone,
          final String? email,
          @JsonKey(name: 'balance') final Balance? balance,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$ProfileResModelImpl;

  factory _ProfileResModel.fromJson(Map<String, dynamic> json) =
      _$ProfileResModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  String? get email;
  @override
  @JsonKey(name: 'balance')
  Balance? get balance;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of ProfileResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileResModelImplCopyWith<_$ProfileResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Balance _$BalanceFromJson(Map<String, dynamic> json) {
  return _Balance.fromJson(json);
}

/// @nodoc
mixin _$Balance {
  @JsonKey(name: 'current_balance')
  String? get currentBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_earned')
  String? get totalEarned => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_spent')
  String? get totalSpent => throw _privateConstructorUsedError;
  @JsonKey(name: 'pending_balance')
  String? get pendingBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this Balance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BalanceCopyWith<Balance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceCopyWith<$Res> {
  factory $BalanceCopyWith(Balance value, $Res Function(Balance) then) =
      _$BalanceCopyWithImpl<$Res, Balance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_balance') String? currentBalance,
      @JsonKey(name: 'total_earned') String? totalEarned,
      @JsonKey(name: 'total_spent') String? totalSpent,
      @JsonKey(name: 'pending_balance') String? pendingBalance,
      @JsonKey(name: 'currency') String? currency});
}

/// @nodoc
class _$BalanceCopyWithImpl<$Res, $Val extends Balance>
    implements $BalanceCopyWith<$Res> {
  _$BalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBalance = freezed,
    Object? totalEarned = freezed,
    Object? totalSpent = freezed,
    Object? pendingBalance = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      currentBalance: freezed == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSpent: freezed == totalSpent
          ? _value.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingBalance: freezed == pendingBalance
          ? _value.pendingBalance
          : pendingBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceImplCopyWith<$Res> implements $BalanceCopyWith<$Res> {
  factory _$$BalanceImplCopyWith(
          _$BalanceImpl value, $Res Function(_$BalanceImpl) then) =
      __$$BalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_balance') String? currentBalance,
      @JsonKey(name: 'total_earned') String? totalEarned,
      @JsonKey(name: 'total_spent') String? totalSpent,
      @JsonKey(name: 'pending_balance') String? pendingBalance,
      @JsonKey(name: 'currency') String? currency});
}

/// @nodoc
class __$$BalanceImplCopyWithImpl<$Res>
    extends _$BalanceCopyWithImpl<$Res, _$BalanceImpl>
    implements _$$BalanceImplCopyWith<$Res> {
  __$$BalanceImplCopyWithImpl(
      _$BalanceImpl _value, $Res Function(_$BalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBalance = freezed,
    Object? totalEarned = freezed,
    Object? totalSpent = freezed,
    Object? pendingBalance = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$BalanceImpl(
      currentBalance: freezed == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      totalEarned: freezed == totalEarned
          ? _value.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSpent: freezed == totalSpent
          ? _value.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingBalance: freezed == pendingBalance
          ? _value.pendingBalance
          : pendingBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceImpl implements _Balance {
  const _$BalanceImpl(
      {@JsonKey(name: 'current_balance') this.currentBalance,
      @JsonKey(name: 'total_earned') this.totalEarned,
      @JsonKey(name: 'total_spent') this.totalSpent,
      @JsonKey(name: 'pending_balance') this.pendingBalance,
      @JsonKey(name: 'currency') this.currency});

  factory _$BalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceImplFromJson(json);

  @override
  @JsonKey(name: 'current_balance')
  final String? currentBalance;
  @override
  @JsonKey(name: 'total_earned')
  final String? totalEarned;
  @override
  @JsonKey(name: 'total_spent')
  final String? totalSpent;
  @override
  @JsonKey(name: 'pending_balance')
  final String? pendingBalance;
  @override
  @JsonKey(name: 'currency')
  final String? currency;

  @override
  String toString() {
    return 'Balance(currentBalance: $currentBalance, totalEarned: $totalEarned, totalSpent: $totalSpent, pendingBalance: $pendingBalance, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceImpl &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent) &&
            (identical(other.pendingBalance, pendingBalance) ||
                other.pendingBalance == pendingBalance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentBalance, totalEarned,
      totalSpent, pendingBalance, currency);

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceImplCopyWith<_$BalanceImpl> get copyWith =>
      __$$BalanceImplCopyWithImpl<_$BalanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceImplToJson(
      this,
    );
  }
}

abstract class _Balance implements Balance {
  const factory _Balance(
      {@JsonKey(name: 'current_balance') final String? currentBalance,
      @JsonKey(name: 'total_earned') final String? totalEarned,
      @JsonKey(name: 'total_spent') final String? totalSpent,
      @JsonKey(name: 'pending_balance') final String? pendingBalance,
      @JsonKey(name: 'currency') final String? currency}) = _$BalanceImpl;

  factory _Balance.fromJson(Map<String, dynamic> json) = _$BalanceImpl.fromJson;

  @override
  @JsonKey(name: 'current_balance')
  String? get currentBalance;
  @override
  @JsonKey(name: 'total_earned')
  String? get totalEarned;
  @override
  @JsonKey(name: 'total_spent')
  String? get totalSpent;
  @override
  @JsonKey(name: 'pending_balance')
  String? get pendingBalance;
  @override
  @JsonKey(name: 'currency')
  String? get currency;

  /// Create a copy of Balance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BalanceImplCopyWith<_$BalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
