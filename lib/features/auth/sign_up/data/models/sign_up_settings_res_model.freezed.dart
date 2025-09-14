// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_settings_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpSettingsResModel _$SignUpSettingsResModelFromJson(
    Map<String, dynamic> json) {
  return _SignUpSettingsResModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpSettingsResModel {
  @JsonKey(name: "countries")
  List<Country>? get countries => throw _privateConstructorUsedError;

  /// Serializes this SignUpSettingsResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpSettingsResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpSettingsResModelCopyWith<SignUpSettingsResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpSettingsResModelCopyWith<$Res> {
  factory $SignUpSettingsResModelCopyWith(SignUpSettingsResModel value,
          $Res Function(SignUpSettingsResModel) then) =
      _$SignUpSettingsResModelCopyWithImpl<$Res, SignUpSettingsResModel>;
  @useResult
  $Res call({@JsonKey(name: "countries") List<Country>? countries});
}

/// @nodoc
class _$SignUpSettingsResModelCopyWithImpl<$Res,
        $Val extends SignUpSettingsResModel>
    implements $SignUpSettingsResModelCopyWith<$Res> {
  _$SignUpSettingsResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpSettingsResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_value.copyWith(
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpSettingsResModelImplCopyWith<$Res>
    implements $SignUpSettingsResModelCopyWith<$Res> {
  factory _$$SignUpSettingsResModelImplCopyWith(
          _$SignUpSettingsResModelImpl value,
          $Res Function(_$SignUpSettingsResModelImpl) then) =
      __$$SignUpSettingsResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "countries") List<Country>? countries});
}

/// @nodoc
class __$$SignUpSettingsResModelImplCopyWithImpl<$Res>
    extends _$SignUpSettingsResModelCopyWithImpl<$Res,
        _$SignUpSettingsResModelImpl>
    implements _$$SignUpSettingsResModelImplCopyWith<$Res> {
  __$$SignUpSettingsResModelImplCopyWithImpl(
      _$SignUpSettingsResModelImpl _value,
      $Res Function(_$SignUpSettingsResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpSettingsResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = freezed,
  }) {
    return _then(_$SignUpSettingsResModelImpl(
      countries: freezed == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpSettingsResModelImpl implements _SignUpSettingsResModel {
  const _$SignUpSettingsResModelImpl(
      {@JsonKey(name: "countries") final List<Country>? countries})
      : _countries = countries;

  factory _$SignUpSettingsResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpSettingsResModelImplFromJson(json);

  final List<Country>? _countries;
  @override
  @JsonKey(name: "countries")
  List<Country>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SignUpSettingsResModel(countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSettingsResModelImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  /// Create a copy of SignUpSettingsResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSettingsResModelImplCopyWith<_$SignUpSettingsResModelImpl>
      get copyWith => __$$SignUpSettingsResModelImplCopyWithImpl<
          _$SignUpSettingsResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpSettingsResModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpSettingsResModel implements SignUpSettingsResModel {
  const factory _SignUpSettingsResModel(
          {@JsonKey(name: "countries") final List<Country>? countries}) =
      _$SignUpSettingsResModelImpl;

  factory _SignUpSettingsResModel.fromJson(Map<String, dynamic> json) =
      _$SignUpSettingsResModelImpl.fromJson;

  @override
  @JsonKey(name: "countries")
  List<Country>? get countries;

  /// Create a copy of SignUpSettingsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSettingsResModelImplCopyWith<_$SignUpSettingsResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "code") String? code});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "code") String? code});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_$CountryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "code") this.code});

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "code")
  final String? code;

  @override
  String toString() {
    return 'Country(id: $id, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "code") final String? code}) = _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "code")
  String? get code;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
