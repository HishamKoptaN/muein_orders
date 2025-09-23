// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderTypeResEntity {
  @JsonKey(name: 'package')
  PackageEntity? get package => throw _privateConstructorUsedError;
  @JsonKey(name: 'orders_count')
  int? get ordersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_quran_copies')
  int? get totalQuranCopies => throw _privateConstructorUsedError;

  /// Create a copy of OrderTypeResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderTypeResEntityCopyWith<OrderTypeResEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeResEntityCopyWith<$Res> {
  factory $OrderTypeResEntityCopyWith(
          OrderTypeResEntity value, $Res Function(OrderTypeResEntity) then) =
      _$OrderTypeResEntityCopyWithImpl<$Res, OrderTypeResEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'package') PackageEntity? package,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_quran_copies') int? totalQuranCopies});

  $PackageEntityCopyWith<$Res>? get package;
}

/// @nodoc
class _$OrderTypeResEntityCopyWithImpl<$Res, $Val extends OrderTypeResEntity>
    implements $OrderTypeResEntityCopyWith<$Res> {
  _$OrderTypeResEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTypeResEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? ordersCount = freezed,
    Object? totalQuranCopies = freezed,
  }) {
    return _then(_value.copyWith(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageEntity?,
      ordersCount: freezed == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuranCopies: freezed == totalQuranCopies
          ? _value.totalQuranCopies
          : totalQuranCopies // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of OrderTypeResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageEntityCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageEntityCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderTypeResEntityImplCopyWith<$Res>
    implements $OrderTypeResEntityCopyWith<$Res> {
  factory _$$OrderTypeResEntityImplCopyWith(_$OrderTypeResEntityImpl value,
          $Res Function(_$OrderTypeResEntityImpl) then) =
      __$$OrderTypeResEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'package') PackageEntity? package,
      @JsonKey(name: 'orders_count') int? ordersCount,
      @JsonKey(name: 'total_quran_copies') int? totalQuranCopies});

  @override
  $PackageEntityCopyWith<$Res>? get package;
}

/// @nodoc
class __$$OrderTypeResEntityImplCopyWithImpl<$Res>
    extends _$OrderTypeResEntityCopyWithImpl<$Res, _$OrderTypeResEntityImpl>
    implements _$$OrderTypeResEntityImplCopyWith<$Res> {
  __$$OrderTypeResEntityImplCopyWithImpl(_$OrderTypeResEntityImpl _value,
      $Res Function(_$OrderTypeResEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderTypeResEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? ordersCount = freezed,
    Object? totalQuranCopies = freezed,
  }) {
    return _then(_$OrderTypeResEntityImpl(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageEntity?,
      ordersCount: freezed == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuranCopies: freezed == totalQuranCopies
          ? _value.totalQuranCopies
          : totalQuranCopies // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OrderTypeResEntityImpl implements _OrderTypeResEntity {
  const _$OrderTypeResEntityImpl(
      {@JsonKey(name: 'package') this.package,
      @JsonKey(name: 'orders_count') this.ordersCount,
      @JsonKey(name: 'total_quran_copies') this.totalQuranCopies});

  @override
  @JsonKey(name: 'package')
  final PackageEntity? package;
  @override
  @JsonKey(name: 'orders_count')
  final int? ordersCount;
  @override
  @JsonKey(name: 'total_quran_copies')
  final int? totalQuranCopies;

  @override
  String toString() {
    return 'OrderTypeResEntity(package: $package, ordersCount: $ordersCount, totalQuranCopies: $totalQuranCopies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTypeResEntityImpl &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.ordersCount, ordersCount) ||
                other.ordersCount == ordersCount) &&
            (identical(other.totalQuranCopies, totalQuranCopies) ||
                other.totalQuranCopies == totalQuranCopies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, package, ordersCount, totalQuranCopies);

  /// Create a copy of OrderTypeResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTypeResEntityImplCopyWith<_$OrderTypeResEntityImpl> get copyWith =>
      __$$OrderTypeResEntityImplCopyWithImpl<_$OrderTypeResEntityImpl>(
          this, _$identity);
}

abstract class _OrderTypeResEntity implements OrderTypeResEntity {
  const factory _OrderTypeResEntity(
          {@JsonKey(name: 'package') final PackageEntity? package,
          @JsonKey(name: 'orders_count') final int? ordersCount,
          @JsonKey(name: 'total_quran_copies') final int? totalQuranCopies}) =
      _$OrderTypeResEntityImpl;

  @override
  @JsonKey(name: 'package')
  PackageEntity? get package;
  @override
  @JsonKey(name: 'orders_count')
  int? get ordersCount;
  @override
  @JsonKey(name: 'total_quran_copies')
  int? get totalQuranCopies;

  /// Create a copy of OrderTypeResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTypeResEntityImplCopyWith<_$OrderTypeResEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PackageEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  TypeEntity? get type => throw _privateConstructorUsedError;

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageEntityCopyWith<PackageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageEntityCopyWith<$Res> {
  factory $PackageEntityCopyWith(
          PackageEntity value, $Res Function(PackageEntity) then) =
      _$PackageEntityCopyWithImpl<$Res, PackageEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'type') TypeEntity? type});

  $TypeEntityCopyWith<$Res>? get type;
}

/// @nodoc
class _$PackageEntityCopyWithImpl<$Res, $Val extends PackageEntity>
    implements $PackageEntityCopyWith<$Res> {
  _$PackageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeEntity?,
    ) as $Val);
  }

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeEntityCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeEntityCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageEntityImplCopyWith<$Res>
    implements $PackageEntityCopyWith<$Res> {
  factory _$$PackageEntityImplCopyWith(
          _$PackageEntityImpl value, $Res Function(_$PackageEntityImpl) then) =
      __$$PackageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'type') TypeEntity? type});

  @override
  $TypeEntityCopyWith<$Res>? get type;
}

/// @nodoc
class __$$PackageEntityImplCopyWithImpl<$Res>
    extends _$PackageEntityCopyWithImpl<$Res, _$PackageEntityImpl>
    implements _$$PackageEntityImplCopyWith<$Res> {
  __$$PackageEntityImplCopyWithImpl(
      _$PackageEntityImpl _value, $Res Function(_$PackageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PackageEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeEntity?,
    ));
  }
}

/// @nodoc

class _$PackageEntityImpl implements _PackageEntity {
  const _$PackageEntityImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'type') this.type});

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'type')
  final TypeEntity? type;

  @override
  String toString() {
    return 'PackageEntity(id: $id, quantity: $quantity, image: $image, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, image, type);

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageEntityImplCopyWith<_$PackageEntityImpl> get copyWith =>
      __$$PackageEntityImplCopyWithImpl<_$PackageEntityImpl>(this, _$identity);
}

abstract class _PackageEntity implements PackageEntity {
  const factory _PackageEntity(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'quantity') final int? quantity,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'type') final TypeEntity? type}) = _$PackageEntityImpl;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'type')
  TypeEntity? get type;

  /// Create a copy of PackageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageEntityImplCopyWith<_$PackageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TypeEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of TypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeEntityCopyWith<TypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeEntityCopyWith<$Res> {
  factory $TypeEntityCopyWith(
          TypeEntity value, $Res Function(TypeEntity) then) =
      _$TypeEntityCopyWithImpl<$Res, TypeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$TypeEntityCopyWithImpl<$Res, $Val extends TypeEntity>
    implements $TypeEntityCopyWith<$Res> {
  _$TypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeEntityImplCopyWith<$Res>
    implements $TypeEntityCopyWith<$Res> {
  factory _$$TypeEntityImplCopyWith(
          _$TypeEntityImpl value, $Res Function(_$TypeEntityImpl) then) =
      __$$TypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$TypeEntityImplCopyWithImpl<$Res>
    extends _$TypeEntityCopyWithImpl<$Res, _$TypeEntityImpl>
    implements _$$TypeEntityImplCopyWith<$Res> {
  __$$TypeEntityImplCopyWithImpl(
      _$TypeEntityImpl _value, $Res Function(_$TypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TypeEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TypeEntityImpl implements _TypeEntity {
  const _$TypeEntityImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'TypeEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeEntityImplCopyWith<_$TypeEntityImpl> get copyWith =>
      __$$TypeEntityImplCopyWithImpl<_$TypeEntityImpl>(this, _$identity);
}

abstract class _TypeEntity implements TypeEntity {
  const factory _TypeEntity(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$TypeEntityImpl;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of TypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeEntityImplCopyWith<_$TypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
