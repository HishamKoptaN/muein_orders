// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_page_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingPageEntity {
  String get titleKey => throw _privateConstructorUsedError;
  String get descriptionKey => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingPageEntityCopyWith<OnboardingPageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPageEntityCopyWith<$Res> {
  factory $OnboardingPageEntityCopyWith(OnboardingPageEntity value,
          $Res Function(OnboardingPageEntity) then) =
      _$OnboardingPageEntityCopyWithImpl<$Res, OnboardingPageEntity>;
  @useResult
  $Res call({String titleKey, String descriptionKey, String imagePath});
}

/// @nodoc
class _$OnboardingPageEntityCopyWithImpl<$Res,
        $Val extends OnboardingPageEntity>
    implements $OnboardingPageEntityCopyWith<$Res> {
  _$OnboardingPageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleKey = null,
    Object? descriptionKey = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      titleKey: null == titleKey
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionKey: null == descriptionKey
          ? _value.descriptionKey
          : descriptionKey // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingPageEntityImplCopyWith<$Res>
    implements $OnboardingPageEntityCopyWith<$Res> {
  factory _$$OnboardingPageEntityImplCopyWith(_$OnboardingPageEntityImpl value,
          $Res Function(_$OnboardingPageEntityImpl) then) =
      __$$OnboardingPageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String titleKey, String descriptionKey, String imagePath});
}

/// @nodoc
class __$$OnboardingPageEntityImplCopyWithImpl<$Res>
    extends _$OnboardingPageEntityCopyWithImpl<$Res, _$OnboardingPageEntityImpl>
    implements _$$OnboardingPageEntityImplCopyWith<$Res> {
  __$$OnboardingPageEntityImplCopyWithImpl(_$OnboardingPageEntityImpl _value,
      $Res Function(_$OnboardingPageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleKey = null,
    Object? descriptionKey = null,
    Object? imagePath = null,
  }) {
    return _then(_$OnboardingPageEntityImpl(
      titleKey: null == titleKey
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionKey: null == descriptionKey
          ? _value.descriptionKey
          : descriptionKey // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnboardingPageEntityImpl implements _OnboardingPageEntity {
  const _$OnboardingPageEntityImpl(
      {required this.titleKey,
      required this.descriptionKey,
      required this.imagePath});

  @override
  final String titleKey;
  @override
  final String descriptionKey;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'OnboardingPageEntity(titleKey: $titleKey, descriptionKey: $descriptionKey, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingPageEntityImpl &&
            (identical(other.titleKey, titleKey) ||
                other.titleKey == titleKey) &&
            (identical(other.descriptionKey, descriptionKey) ||
                other.descriptionKey == descriptionKey) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, titleKey, descriptionKey, imagePath);

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingPageEntityImplCopyWith<_$OnboardingPageEntityImpl>
      get copyWith =>
          __$$OnboardingPageEntityImplCopyWithImpl<_$OnboardingPageEntityImpl>(
              this, _$identity);
}

abstract class _OnboardingPageEntity implements OnboardingPageEntity {
  const factory _OnboardingPageEntity(
      {required final String titleKey,
      required final String descriptionKey,
      required final String imagePath}) = _$OnboardingPageEntityImpl;

  @override
  String get titleKey;
  @override
  String get descriptionKey;
  @override
  String get imagePath;

  /// Create a copy of OnboardingPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingPageEntityImplCopyWith<_$OnboardingPageEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
