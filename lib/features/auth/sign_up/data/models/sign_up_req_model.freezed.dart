// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpReqModel _$SignUpReqModelFromJson(Map<String, dynamic> json) {
  return _SignUpReqModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpReqModel {
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token')
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_token')
  String? get idToken => throw _privateConstructorUsedError;

  /// Serializes this SignUpReqModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpReqModelCopyWith<SignUpReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpReqModelCopyWith<$Res> {
  factory $SignUpReqModelCopyWith(
          SignUpReqModel value, $Res Function(SignUpReqModel) then) =
      _$SignUpReqModelCopyWithImpl<$Res, SignUpReqModel>;
  @useResult
  $Res call(
      {String? name,
      String? phone,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      @JsonKey(name: 'id_token') String? idToken});
}

/// @nodoc
class _$SignUpReqModelCopyWithImpl<$Res, $Val extends SignUpReqModel>
    implements $SignUpReqModelCopyWith<$Res> {
  _$SignUpReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? countryId = freezed,
    Object? fcmToken = freezed,
    Object? idToken = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpReqModelImplCopyWith<$Res>
    implements $SignUpReqModelCopyWith<$Res> {
  factory _$$SignUpReqModelImplCopyWith(_$SignUpReqModelImpl value,
          $Res Function(_$SignUpReqModelImpl) then) =
      __$$SignUpReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? phone,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      @JsonKey(name: 'id_token') String? idToken});
}

/// @nodoc
class __$$SignUpReqModelImplCopyWithImpl<$Res>
    extends _$SignUpReqModelCopyWithImpl<$Res, _$SignUpReqModelImpl>
    implements _$$SignUpReqModelImplCopyWith<$Res> {
  __$$SignUpReqModelImplCopyWithImpl(
      _$SignUpReqModelImpl _value, $Res Function(_$SignUpReqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? countryId = freezed,
    Object? fcmToken = freezed,
    Object? idToken = freezed,
  }) {
    return _then(_$SignUpReqModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpReqModelImpl implements _SignUpReqModel {
  const _$SignUpReqModelImpl(
      {this.name,
      this.phone,
      @JsonKey(name: 'country_id') this.countryId,
      @JsonKey(name: 'fcm_token') this.fcmToken,
      @JsonKey(name: 'id_token') this.idToken});

  factory _$SignUpReqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpReqModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'country_id')
  final int? countryId;
  @override
  @JsonKey(name: 'fcm_token')
  final String? fcmToken;
  @override
  @JsonKey(name: 'id_token')
  final String? idToken;

  @override
  String toString() {
    return 'SignUpReqModel(name: $name, phone: $phone, countryId: $countryId, fcmToken: $fcmToken, idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpReqModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phone, countryId, fcmToken, idToken);

  /// Create a copy of SignUpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpReqModelImplCopyWith<_$SignUpReqModelImpl> get copyWith =>
      __$$SignUpReqModelImplCopyWithImpl<_$SignUpReqModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpReqModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpReqModel implements SignUpReqModel {
  const factory _SignUpReqModel(
      {final String? name,
      final String? phone,
      @JsonKey(name: 'country_id') final int? countryId,
      @JsonKey(name: 'fcm_token') final String? fcmToken,
      @JsonKey(name: 'id_token') final String? idToken}) = _$SignUpReqModelImpl;

  factory _SignUpReqModel.fromJson(Map<String, dynamic> json) =
      _$SignUpReqModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'country_id')
  int? get countryId;
  @override
  @JsonKey(name: 'fcm_token')
  String? get fcmToken;
  @override
  @JsonKey(name: 'id_token')
  String? get idToken;

  /// Create a copy of SignUpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpReqModelImplCopyWith<_$SignUpReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
