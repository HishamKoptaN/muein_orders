// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenResModel _$TokenResModelFromJson(Map<String, dynamic> json) {
  return _TokenResModel.fromJson(json);
}

/// @nodoc
mixin _$TokenResModel {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String token) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String token)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String token)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TokenResModel value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenResModel value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenResModel value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TokenResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenResModelCopyWith<TokenResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResModelCopyWith<$Res> {
  factory $TokenResModelCopyWith(
          TokenResModel value, $Res Function(TokenResModel) then) =
      _$TokenResModelCopyWithImpl<$Res, TokenResModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$TokenResModelCopyWithImpl<$Res, $Val extends TokenResModel>
    implements $TokenResModelCopyWith<$Res> {
  _$TokenResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenResModel
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
abstract class _$$TokenResModelImplCopyWith<$Res>
    implements $TokenResModelCopyWith<$Res> {
  factory _$$TokenResModelImplCopyWith(
          _$TokenResModelImpl value, $Res Function(_$TokenResModelImpl) then) =
      __$$TokenResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TokenResModelImplCopyWithImpl<$Res>
    extends _$TokenResModelCopyWithImpl<$Res, _$TokenResModelImpl>
    implements _$$TokenResModelImplCopyWith<$Res> {
  __$$TokenResModelImplCopyWithImpl(
      _$TokenResModelImpl _value, $Res Function(_$TokenResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenResModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenResModelImpl implements _TokenResModel {
  const _$TokenResModelImpl({required this.token});

  factory _$TokenResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenResModelImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'TokenResModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenResModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of TokenResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenResModelImplCopyWith<_$TokenResModelImpl> get copyWith =>
      __$$TokenResModelImplCopyWithImpl<_$TokenResModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String token) $default,
  ) {
    return $default(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String token)? $default,
  ) {
    return $default?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String token)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TokenResModel value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TokenResModel value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TokenResModel value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenResModelImplToJson(
      this,
    );
  }
}

abstract class _TokenResModel implements TokenResModel {
  const factory _TokenResModel({required final String token}) =
      _$TokenResModelImpl;

  factory _TokenResModel.fromJson(Map<String, dynamic> json) =
      _$TokenResModelImpl.fromJson;

  @override
  String get token;

  /// Create a copy of TokenResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenResModelImplCopyWith<_$TokenResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
