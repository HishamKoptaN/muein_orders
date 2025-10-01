// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfileReqModel _$UpdateProfileReqModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfileReqModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileReqModel {
  @FileConverter()
  File? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfileReqModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileReqModelCopyWith<UpdateProfileReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileReqModelCopyWith<$Res> {
  factory $UpdateProfileReqModelCopyWith(UpdateProfileReqModel value,
          $Res Function(UpdateProfileReqModel) then) =
      _$UpdateProfileReqModelCopyWithImpl<$Res, UpdateProfileReqModel>;
  @useResult
  $Res call({@FileConverter() File? image, String? name, String? phone});
}

/// @nodoc
class _$UpdateProfileReqModelCopyWithImpl<$Res,
        $Val extends UpdateProfileReqModel>
    implements $UpdateProfileReqModelCopyWith<$Res> {
  _$UpdateProfileReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileReqModelImplCopyWith<$Res>
    implements $UpdateProfileReqModelCopyWith<$Res> {
  factory _$$UpdateProfileReqModelImplCopyWith(
          _$UpdateProfileReqModelImpl value,
          $Res Function(_$UpdateProfileReqModelImpl) then) =
      __$$UpdateProfileReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@FileConverter() File? image, String? name, String? phone});
}

/// @nodoc
class __$$UpdateProfileReqModelImplCopyWithImpl<$Res>
    extends _$UpdateProfileReqModelCopyWithImpl<$Res,
        _$UpdateProfileReqModelImpl>
    implements _$$UpdateProfileReqModelImplCopyWith<$Res> {
  __$$UpdateProfileReqModelImplCopyWithImpl(_$UpdateProfileReqModelImpl _value,
      $Res Function(_$UpdateProfileReqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$UpdateProfileReqModelImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileReqModelImpl implements _UpdateProfileReqModel {
  const _$UpdateProfileReqModelImpl(
      {@FileConverter() this.image, this.name, this.phone});

  factory _$UpdateProfileReqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileReqModelImplFromJson(json);

  @override
  @FileConverter()
  final File? image;
  @override
  final String? name;
  @override
  final String? phone;

  @override
  String toString() {
    return 'UpdateProfileReqModel(image: $image, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileReqModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name, phone);

  /// Create a copy of UpdateProfileReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileReqModelImplCopyWith<_$UpdateProfileReqModelImpl>
      get copyWith => __$$UpdateProfileReqModelImplCopyWithImpl<
          _$UpdateProfileReqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileReqModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileReqModel implements UpdateProfileReqModel {
  const factory _UpdateProfileReqModel(
      {@FileConverter() final File? image,
      final String? name,
      final String? phone}) = _$UpdateProfileReqModelImpl;

  factory _UpdateProfileReqModel.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileReqModelImpl.fromJson;

  @override
  @FileConverter()
  File? get image;
  @override
  String? get name;
  @override
  String? get phone;

  /// Create a copy of UpdateProfileReqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileReqModelImplCopyWith<_$UpdateProfileReqModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
