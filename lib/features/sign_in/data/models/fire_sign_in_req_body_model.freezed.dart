// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fire_sign_in_req_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FireSignInReqBodyModel _$FireSignInReqBodyModelFromJson(
    Map<String, dynamic> json) {
  return _FireSignInReqBodyModel.fromJson(json);
}

/// @nodoc
mixin _$FireSignInReqBodyModel {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this FireSignInReqBodyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FireSignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FireSignInReqBodyModelCopyWith<FireSignInReqBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireSignInReqBodyModelCopyWith<$Res> {
  factory $FireSignInReqBodyModelCopyWith(FireSignInReqBodyModel value,
          $Res Function(FireSignInReqBodyModel) then) =
      _$FireSignInReqBodyModelCopyWithImpl<$Res, FireSignInReqBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "password") String? password});
}

/// @nodoc
class _$FireSignInReqBodyModelCopyWithImpl<$Res,
        $Val extends FireSignInReqBodyModel>
    implements $FireSignInReqBodyModelCopyWith<$Res> {
  _$FireSignInReqBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FireSignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FireSignInReqBodyModelImplCopyWith<$Res>
    implements $FireSignInReqBodyModelCopyWith<$Res> {
  factory _$$FireSignInReqBodyModelImplCopyWith(
          _$FireSignInReqBodyModelImpl value,
          $Res Function(_$FireSignInReqBodyModelImpl) then) =
      __$$FireSignInReqBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "password") String? password});
}

/// @nodoc
class __$$FireSignInReqBodyModelImplCopyWithImpl<$Res>
    extends _$FireSignInReqBodyModelCopyWithImpl<$Res,
        _$FireSignInReqBodyModelImpl>
    implements _$$FireSignInReqBodyModelImplCopyWith<$Res> {
  __$$FireSignInReqBodyModelImplCopyWithImpl(
      _$FireSignInReqBodyModelImpl _value,
      $Res Function(_$FireSignInReqBodyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FireSignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$FireSignInReqBodyModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FireSignInReqBodyModelImpl implements _FireSignInReqBodyModel {
  const _$FireSignInReqBodyModelImpl(
      {@JsonKey(name: "email") this.email,
      @JsonKey(name: "password") this.password});

  factory _$FireSignInReqBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FireSignInReqBodyModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "password")
  final String? password;

  @override
  String toString() {
    return 'FireSignInReqBodyModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FireSignInReqBodyModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of FireSignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FireSignInReqBodyModelImplCopyWith<_$FireSignInReqBodyModelImpl>
      get copyWith => __$$FireSignInReqBodyModelImplCopyWithImpl<
          _$FireSignInReqBodyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FireSignInReqBodyModelImplToJson(
      this,
    );
  }
}

abstract class _FireSignInReqBodyModel implements FireSignInReqBodyModel {
  const factory _FireSignInReqBodyModel(
          {@JsonKey(name: "email") final String? email,
          @JsonKey(name: "password") final String? password}) =
      _$FireSignInReqBodyModelImpl;

  factory _FireSignInReqBodyModel.fromJson(Map<String, dynamic> json) =
      _$FireSignInReqBodyModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "password")
  String? get password;

  /// Create a copy of FireSignInReqBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FireSignInReqBodyModelImplCopyWith<_$FireSignInReqBodyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
