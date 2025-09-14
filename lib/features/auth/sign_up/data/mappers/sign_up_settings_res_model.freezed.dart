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
  @JsonKey(name: "cities")
  List<City>? get cities => throw _privateConstructorUsedError;
  @JsonKey(name: "opportunity_lookings")
  List<OpportunityLooking>? get opportunityLookings =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "countries") List<Country>? countries,
      @JsonKey(name: "cities") List<City>? cities,
      @JsonKey(name: "opportunity_lookings")
      List<OpportunityLooking>? opportunityLookings});
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
    Object? cities = freezed,
    Object? opportunityLookings = freezed,
  }) {
    return _then(_value.copyWith(
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      cities: freezed == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
      opportunityLookings: freezed == opportunityLookings
          ? _value.opportunityLookings
          : opportunityLookings // ignore: cast_nullable_to_non_nullable
              as List<OpportunityLooking>?,
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
  $Res call(
      {@JsonKey(name: "countries") List<Country>? countries,
      @JsonKey(name: "cities") List<City>? cities,
      @JsonKey(name: "opportunity_lookings")
      List<OpportunityLooking>? opportunityLookings});
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
    Object? cities = freezed,
    Object? opportunityLookings = freezed,
  }) {
    return _then(_$SignUpSettingsResModelImpl(
      countries: freezed == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      cities: freezed == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
      opportunityLookings: freezed == opportunityLookings
          ? _value._opportunityLookings
          : opportunityLookings // ignore: cast_nullable_to_non_nullable
              as List<OpportunityLooking>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpSettingsResModelImpl implements _SignUpSettingsResModel {
  const _$SignUpSettingsResModelImpl(
      {@JsonKey(name: "countries") final List<Country>? countries,
      @JsonKey(name: "cities") final List<City>? cities,
      @JsonKey(name: "opportunity_lookings")
      final List<OpportunityLooking>? opportunityLookings})
      : _countries = countries,
        _cities = cities,
        _opportunityLookings = opportunityLookings;

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

  final List<City>? _cities;
  @override
  @JsonKey(name: "cities")
  List<City>? get cities {
    final value = _cities;
    if (value == null) return null;
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OpportunityLooking>? _opportunityLookings;
  @override
  @JsonKey(name: "opportunity_lookings")
  List<OpportunityLooking>? get opportunityLookings {
    final value = _opportunityLookings;
    if (value == null) return null;
    if (_opportunityLookings is EqualUnmodifiableListView)
      return _opportunityLookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SignUpSettingsResModel(countries: $countries, cities: $cities, opportunityLookings: $opportunityLookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSettingsResModelImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._opportunityLookings, _opportunityLookings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_opportunityLookings));

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
          {@JsonKey(name: "countries") final List<Country>? countries,
          @JsonKey(name: "cities") final List<City>? cities,
          @JsonKey(name: "opportunity_lookings")
          final List<OpportunityLooking>? opportunityLookings}) =
      _$SignUpSettingsResModelImpl;

  factory _SignUpSettingsResModel.fromJson(Map<String, dynamic> json) =
      _$SignUpSettingsResModelImpl.fromJson;

  @override
  @JsonKey(name: "countries")
  List<Country>? get countries;
  @override
  @JsonKey(name: "cities")
  List<City>? get cities;
  @override
  @JsonKey(name: "opportunity_lookings")
  List<OpportunityLooking>? get opportunityLookings;

  /// Create a copy of SignUpSettingsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpSettingsResModelImplCopyWith<_$SignUpSettingsResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "country_id")
  int? get countryId => throw _privateConstructorUsedError;

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
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
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country_id") int? countryId});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
  }) {
    return _then(_$CityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "country_id") this.countryId});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "country_id")
  final int? countryId;

  @override
  String toString() {
    return 'City(id: $id, name: $name, countryId: $countryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, countryId);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "country_id") final int? countryId}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "country_id")
  int? get countryId;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

OpportunityLooking _$OpportunityLookingFromJson(Map<String, dynamic> json) {
  return _OpportunityLooking.fromJson(json);
}

/// @nodoc
mixin _$OpportunityLooking {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this OpportunityLooking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpportunityLooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpportunityLookingCopyWith<OpportunityLooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpportunityLookingCopyWith<$Res> {
  factory $OpportunityLookingCopyWith(
          OpportunityLooking value, $Res Function(OpportunityLooking) then) =
      _$OpportunityLookingCopyWithImpl<$Res, OpportunityLooking>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$OpportunityLookingCopyWithImpl<$Res, $Val extends OpportunityLooking>
    implements $OpportunityLookingCopyWith<$Res> {
  _$OpportunityLookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpportunityLooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpportunityLookingImplCopyWith<$Res>
    implements $OpportunityLookingCopyWith<$Res> {
  factory _$$OpportunityLookingImplCopyWith(_$OpportunityLookingImpl value,
          $Res Function(_$OpportunityLookingImpl) then) =
      __$$OpportunityLookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$OpportunityLookingImplCopyWithImpl<$Res>
    extends _$OpportunityLookingCopyWithImpl<$Res, _$OpportunityLookingImpl>
    implements _$$OpportunityLookingImplCopyWith<$Res> {
  __$$OpportunityLookingImplCopyWithImpl(_$OpportunityLookingImpl _value,
      $Res Function(_$OpportunityLookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpportunityLooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? image = freezed,
  }) {
    return _then(_$OpportunityLookingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpportunityLookingImpl implements _OpportunityLooking {
  const _$OpportunityLookingImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "image") this.image});

  factory _$OpportunityLookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpportunityLookingImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'OpportunityLooking(id: $id, firstName: $firstName, lastName: $lastName, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpportunityLookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, image);

  /// Create a copy of OpportunityLooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpportunityLookingImplCopyWith<_$OpportunityLookingImpl> get copyWith =>
      __$$OpportunityLookingImplCopyWithImpl<_$OpportunityLookingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpportunityLookingImplToJson(
      this,
    );
  }
}

abstract class _OpportunityLooking implements OpportunityLooking {
  const factory _OpportunityLooking(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "image") final String? image}) = _$OpportunityLookingImpl;

  factory _OpportunityLooking.fromJson(Map<String, dynamic> json) =
      _$OpportunityLookingImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "image")
  String? get image;

  /// Create a copy of OpportunityLooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpportunityLookingImplCopyWith<_$OpportunityLookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
