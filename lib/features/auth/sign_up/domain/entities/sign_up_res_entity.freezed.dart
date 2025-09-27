// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpResEntity _$SignUpResEntityFromJson(Map<String, dynamic> json) {
  return _SignUpResEntity.fromJson(json);
}

/// @nodoc
mixin _$SignUpResEntity {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this SignUpResEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResEntityCopyWith<SignUpResEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResEntityCopyWith<$Res> {
  factory $SignUpResEntityCopyWith(
          SignUpResEntity value, $Res Function(SignUpResEntity) then) =
      _$SignUpResEntityCopyWithImpl<$Res, SignUpResEntity>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$SignUpResEntityCopyWithImpl<$Res, $Val extends SignUpResEntity>
    implements $SignUpResEntityCopyWith<$Res> {
  _$SignUpResEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpResEntityImplCopyWith<$Res>
    implements $SignUpResEntityCopyWith<$Res> {
  factory _$$SignUpResEntityImplCopyWith(_$SignUpResEntityImpl value,
          $Res Function(_$SignUpResEntityImpl) then) =
      __$$SignUpResEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$SignUpResEntityImplCopyWithImpl<$Res>
    extends _$SignUpResEntityCopyWithImpl<$Res, _$SignUpResEntityImpl>
    implements _$$SignUpResEntityImplCopyWith<$Res> {
  __$$SignUpResEntityImplCopyWithImpl(
      _$SignUpResEntityImpl _value, $Res Function(_$SignUpResEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SignUpResEntityImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResEntityImpl implements _SignUpResEntity {
  const _$SignUpResEntityImpl({required this.token});

  factory _$SignUpResEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResEntityImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'SignUpResEntity(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResEntityImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of SignUpResEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResEntityImplCopyWith<_$SignUpResEntityImpl> get copyWith =>
      __$$SignUpResEntityImplCopyWithImpl<_$SignUpResEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResEntityImplToJson(
      this,
    );
  }
}

abstract class _SignUpResEntity implements SignUpResEntity {
  const factory _SignUpResEntity({required final String token}) =
      _$SignUpResEntityImpl;

  factory _SignUpResEntity.fromJson(Map<String, dynamic> json) =
      _$SignUpResEntityImpl.fromJson;

  @override
  String get token;

  /// Create a copy of SignUpResEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResEntityImplCopyWith<_$SignUpResEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
