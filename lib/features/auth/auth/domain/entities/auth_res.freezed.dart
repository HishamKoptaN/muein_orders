// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthRes _$AuthResFromJson(Map<String, dynamic> json) {
  return _AuthRes.fromJson(json);
}

/// @nodoc
mixin _$AuthRes {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this AuthRes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResCopyWith<AuthRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResCopyWith<$Res> {
  factory $AuthResCopyWith(AuthRes value, $Res Function(AuthRes) then) =
      _$AuthResCopyWithImpl<$Res, AuthRes>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$AuthResCopyWithImpl<$Res, $Val extends AuthRes>
    implements $AuthResCopyWith<$Res> {
  _$AuthResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthRes
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
abstract class _$$AuthResImplCopyWith<$Res> implements $AuthResCopyWith<$Res> {
  factory _$$AuthResImplCopyWith(
          _$AuthResImpl value, $Res Function(_$AuthResImpl) then) =
      __$$AuthResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthResImplCopyWithImpl<$Res>
    extends _$AuthResCopyWithImpl<$Res, _$AuthResImpl>
    implements _$$AuthResImplCopyWith<$Res> {
  __$$AuthResImplCopyWithImpl(
      _$AuthResImpl _value, $Res Function(_$AuthResImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthRes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthResImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResImpl implements _AuthRes {
  const _$AuthResImpl({required this.token});

  factory _$AuthResImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthRes(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AuthRes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResImplCopyWith<_$AuthResImpl> get copyWith =>
      __$$AuthResImplCopyWithImpl<_$AuthResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResImplToJson(
      this,
    );
  }
}

abstract class _AuthRes implements AuthRes {
  const factory _AuthRes({required final String token}) = _$AuthResImpl;

  factory _AuthRes.fromJson(Map<String, dynamic> json) = _$AuthResImpl.fromJson;

  @override
  String get token;

  /// Create a copy of AuthRes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResImplCopyWith<_$AuthResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
