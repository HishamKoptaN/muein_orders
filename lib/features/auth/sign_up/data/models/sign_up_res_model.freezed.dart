// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpResModel _$SignUpResModelFromJson(Map<String, dynamic> json) {
  return _SignUpResModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpResModel {
  String get token => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this SignUpResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResModelCopyWith<SignUpResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResModelCopyWith<$Res> {
  factory $SignUpResModelCopyWith(
          SignUpResModel value, $Res Function(SignUpResModel) then) =
      _$SignUpResModelCopyWithImpl<$Res, SignUpResModel>;
  @useResult
  $Res call({String token, String role});
}

/// @nodoc
class _$SignUpResModelCopyWithImpl<$Res, $Val extends SignUpResModel>
    implements $SignUpResModelCopyWith<$Res> {
  _$SignUpResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpResModelImplCopyWith<$Res>
    implements $SignUpResModelCopyWith<$Res> {
  factory _$$SignUpResModelImplCopyWith(_$SignUpResModelImpl value,
          $Res Function(_$SignUpResModelImpl) then) =
      __$$SignUpResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String role});
}

/// @nodoc
class __$$SignUpResModelImplCopyWithImpl<$Res>
    extends _$SignUpResModelCopyWithImpl<$Res, _$SignUpResModelImpl>
    implements _$$SignUpResModelImplCopyWith<$Res> {
  __$$SignUpResModelImplCopyWithImpl(
      _$SignUpResModelImpl _value, $Res Function(_$SignUpResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? role = null,
  }) {
    return _then(_$SignUpResModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResModelImpl implements _SignUpResModel {
  const _$SignUpResModelImpl({required this.token, required this.role});

  factory _$SignUpResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResModelImplFromJson(json);

  @override
  final String token;
  @override
  final String role;

  @override
  String toString() {
    return 'SignUpResModel(token: $token, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, role);

  /// Create a copy of SignUpResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResModelImplCopyWith<_$SignUpResModelImpl> get copyWith =>
      __$$SignUpResModelImplCopyWithImpl<_$SignUpResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpResModel implements SignUpResModel {
  const factory _SignUpResModel(
      {required final String token,
      required final String role}) = _$SignUpResModelImpl;

  factory _SignUpResModel.fromJson(Map<String, dynamic> json) =
      _$SignUpResModelImpl.fromJson;

  @override
  String get token;
  @override
  String get role;

  /// Create a copy of SignUpResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResModelImplCopyWith<_$SignUpResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
