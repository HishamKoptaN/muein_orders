// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_req_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInReqBodyModel _$SignInReqBodyModelFromJson(Map<String, dynamic> json) {
  return _SignInReqBodyModel.fromJson(json);
}

/// @nodoc
mixin _$SignInReqBodyModel {
  @JsonKey(name: "id_token")
  String? get idToken => throw _privateConstructorUsedError;

  /// Serializes this SignInReqBodyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInReqBodyModelCopyWith<SignInReqBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInReqBodyModelCopyWith<$Res> {
  factory $SignInReqBodyModelCopyWith(
          SignInReqBodyModel value, $Res Function(SignInReqBodyModel) then) =
      _$SignInReqBodyModelCopyWithImpl<$Res, SignInReqBodyModel>;
  @useResult
  $Res call({@JsonKey(name: "id_token") String? idToken});
}

/// @nodoc
class _$SignInReqBodyModelCopyWithImpl<$Res, $Val extends SignInReqBodyModel>
    implements $SignInReqBodyModelCopyWith<$Res> {
  _$SignInReqBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
  }) {
    return _then(_value.copyWith(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInReqBodyModelImplCopyWith<$Res>
    implements $SignInReqBodyModelCopyWith<$Res> {
  factory _$$SignInReqBodyModelImplCopyWith(_$SignInReqBodyModelImpl value,
          $Res Function(_$SignInReqBodyModelImpl) then) =
      __$$SignInReqBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id_token") String? idToken});
}

/// @nodoc
class __$$SignInReqBodyModelImplCopyWithImpl<$Res>
    extends _$SignInReqBodyModelCopyWithImpl<$Res, _$SignInReqBodyModelImpl>
    implements _$$SignInReqBodyModelImplCopyWith<$Res> {
  __$$SignInReqBodyModelImplCopyWithImpl(_$SignInReqBodyModelImpl _value,
      $Res Function(_$SignInReqBodyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
  }) {
    return _then(_$SignInReqBodyModelImpl(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInReqBodyModelImpl implements _SignInReqBodyModel {
  const _$SignInReqBodyModelImpl({@JsonKey(name: "id_token") this.idToken});

  factory _$SignInReqBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInReqBodyModelImplFromJson(json);

  @override
  @JsonKey(name: "id_token")
  final String? idToken;

  @override
  String toString() {
    return 'SignInReqBodyModel(idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInReqBodyModelImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  /// Create a copy of SignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInReqBodyModelImplCopyWith<_$SignInReqBodyModelImpl> get copyWith =>
      __$$SignInReqBodyModelImplCopyWithImpl<_$SignInReqBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInReqBodyModelImplToJson(
      this,
    );
  }
}

abstract class _SignInReqBodyModel implements SignInReqBodyModel {
  const factory _SignInReqBodyModel(
          {@JsonKey(name: "id_token") final String? idToken}) =
      _$SignInReqBodyModelImpl;

  factory _SignInReqBodyModel.fromJson(Map<String, dynamic> json) =
      _$SignInReqBodyModelImpl.fromJson;

  @override
  @JsonKey(name: "id_token")
  String? get idToken;

  /// Create a copy of SignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInReqBodyModelImplCopyWith<_$SignInReqBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
