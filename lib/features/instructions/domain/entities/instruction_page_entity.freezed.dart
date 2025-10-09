// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instruction_page_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InstructionPageEntity {
  String get titleKey => throw _privateConstructorUsedError;
  String get descriptionKey => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Create a copy of InstructionPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstructionPageEntityCopyWith<InstructionPageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionPageEntityCopyWith<$Res> {
  factory $InstructionPageEntityCopyWith(InstructionPageEntity value,
          $Res Function(InstructionPageEntity) then) =
      _$InstructionPageEntityCopyWithImpl<$Res, InstructionPageEntity>;
  @useResult
  $Res call({String titleKey, String descriptionKey, String imagePath});
}

/// @nodoc
class _$InstructionPageEntityCopyWithImpl<$Res,
        $Val extends InstructionPageEntity>
    implements $InstructionPageEntityCopyWith<$Res> {
  _$InstructionPageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstructionPageEntity
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
abstract class _$$InstructionPageEntityImplCopyWith<$Res>
    implements $InstructionPageEntityCopyWith<$Res> {
  factory _$$InstructionPageEntityImplCopyWith(
          _$InstructionPageEntityImpl value,
          $Res Function(_$InstructionPageEntityImpl) then) =
      __$$InstructionPageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String titleKey, String descriptionKey, String imagePath});
}

/// @nodoc
class __$$InstructionPageEntityImplCopyWithImpl<$Res>
    extends _$InstructionPageEntityCopyWithImpl<$Res,
        _$InstructionPageEntityImpl>
    implements _$$InstructionPageEntityImplCopyWith<$Res> {
  __$$InstructionPageEntityImplCopyWithImpl(_$InstructionPageEntityImpl _value,
      $Res Function(_$InstructionPageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstructionPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleKey = null,
    Object? descriptionKey = null,
    Object? imagePath = null,
  }) {
    return _then(_$InstructionPageEntityImpl(
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

class _$InstructionPageEntityImpl implements _InstructionPageEntity {
  const _$InstructionPageEntityImpl(
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
    return 'InstructionPageEntity(titleKey: $titleKey, descriptionKey: $descriptionKey, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionPageEntityImpl &&
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

  /// Create a copy of InstructionPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructionPageEntityImplCopyWith<_$InstructionPageEntityImpl>
      get copyWith => __$$InstructionPageEntityImplCopyWithImpl<
          _$InstructionPageEntityImpl>(this, _$identity);
}

abstract class _InstructionPageEntity implements InstructionPageEntity {
  const factory _InstructionPageEntity(
      {required final String titleKey,
      required final String descriptionKey,
      required final String imagePath}) = _$InstructionPageEntityImpl;

  @override
  String get titleKey;
  @override
  String get descriptionKey;
  @override
  String get imagePath;

  /// Create a copy of InstructionPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstructionPageEntityImplCopyWith<_$InstructionPageEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
