// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnboardingStatus,
    required TResult Function() completeOnboarding,
    required TResult Function(int index) pageChanged,
    required TResult Function() nextPage,
    required TResult Function() skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnboardingStatus,
    TResult? Function()? completeOnboarding,
    TResult? Function(int index)? pageChanged,
    TResult? Function()? nextPage,
    TResult? Function()? skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnboardingStatus,
    TResult Function()? completeOnboarding,
    TResult Function(int index)? pageChanged,
    TResult Function()? nextPage,
    TResult Function()? skipOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOnboardingStatus value)
        checkOnboardingStatus,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(SkipOnboarding value) skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(SkipOnboarding value)? skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(NextPage value)? nextPage,
    TResult Function(SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckOnboardingStatusImplCopyWith<$Res> {
  factory _$$CheckOnboardingStatusImplCopyWith(
          _$CheckOnboardingStatusImpl value,
          $Res Function(_$CheckOnboardingStatusImpl) then) =
      __$$CheckOnboardingStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckOnboardingStatusImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$CheckOnboardingStatusImpl>
    implements _$$CheckOnboardingStatusImplCopyWith<$Res> {
  __$$CheckOnboardingStatusImplCopyWithImpl(_$CheckOnboardingStatusImpl _value,
      $Res Function(_$CheckOnboardingStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckOnboardingStatusImpl implements CheckOnboardingStatus {
  const _$CheckOnboardingStatusImpl();

  @override
  String toString() {
    return 'OnboardingEvent.checkOnboardingStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOnboardingStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnboardingStatus,
    required TResult Function() completeOnboarding,
    required TResult Function(int index) pageChanged,
    required TResult Function() nextPage,
    required TResult Function() skipOnboarding,
  }) {
    return checkOnboardingStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnboardingStatus,
    TResult? Function()? completeOnboarding,
    TResult? Function(int index)? pageChanged,
    TResult? Function()? nextPage,
    TResult? Function()? skipOnboarding,
  }) {
    return checkOnboardingStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnboardingStatus,
    TResult Function()? completeOnboarding,
    TResult Function(int index)? pageChanged,
    TResult Function()? nextPage,
    TResult Function()? skipOnboarding,
    required TResult orElse(),
  }) {
    if (checkOnboardingStatus != null) {
      return checkOnboardingStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOnboardingStatus value)
        checkOnboardingStatus,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(SkipOnboarding value) skipOnboarding,
  }) {
    return checkOnboardingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(SkipOnboarding value)? skipOnboarding,
  }) {
    return checkOnboardingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(NextPage value)? nextPage,
    TResult Function(SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (checkOnboardingStatus != null) {
      return checkOnboardingStatus(this);
    }
    return orElse();
  }
}

abstract class CheckOnboardingStatus implements OnboardingEvent {
  const factory CheckOnboardingStatus() = _$CheckOnboardingStatusImpl;
}

/// @nodoc
abstract class _$$CompleteOnboardingImplCopyWith<$Res> {
  factory _$$CompleteOnboardingImplCopyWith(_$CompleteOnboardingImpl value,
          $Res Function(_$CompleteOnboardingImpl) then) =
      __$$CompleteOnboardingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteOnboardingImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$CompleteOnboardingImpl>
    implements _$$CompleteOnboardingImplCopyWith<$Res> {
  __$$CompleteOnboardingImplCopyWithImpl(_$CompleteOnboardingImpl _value,
      $Res Function(_$CompleteOnboardingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompleteOnboardingImpl implements CompleteOnboarding {
  const _$CompleteOnboardingImpl();

  @override
  String toString() {
    return 'OnboardingEvent.completeOnboarding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteOnboardingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnboardingStatus,
    required TResult Function() completeOnboarding,
    required TResult Function(int index) pageChanged,
    required TResult Function() nextPage,
    required TResult Function() skipOnboarding,
  }) {
    return completeOnboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnboardingStatus,
    TResult? Function()? completeOnboarding,
    TResult? Function(int index)? pageChanged,
    TResult? Function()? nextPage,
    TResult? Function()? skipOnboarding,
  }) {
    return completeOnboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnboardingStatus,
    TResult Function()? completeOnboarding,
    TResult Function(int index)? pageChanged,
    TResult Function()? nextPage,
    TResult Function()? skipOnboarding,
    required TResult orElse(),
  }) {
    if (completeOnboarding != null) {
      return completeOnboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOnboardingStatus value)
        checkOnboardingStatus,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(SkipOnboarding value) skipOnboarding,
  }) {
    return completeOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(SkipOnboarding value)? skipOnboarding,
  }) {
    return completeOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(NextPage value)? nextPage,
    TResult Function(SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (completeOnboarding != null) {
      return completeOnboarding(this);
    }
    return orElse();
  }
}

abstract class CompleteOnboarding implements OnboardingEvent {
  const factory CompleteOnboarding() = _$CompleteOnboardingImpl;
}

/// @nodoc
abstract class _$$PageChangedImplCopyWith<$Res> {
  factory _$$PageChangedImplCopyWith(
          _$PageChangedImpl value, $Res Function(_$PageChangedImpl) then) =
      __$$PageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PageChangedImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$PageChangedImpl>
    implements _$$PageChangedImplCopyWith<$Res> {
  __$$PageChangedImplCopyWithImpl(
      _$PageChangedImpl _value, $Res Function(_$PageChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$PageChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageChangedImpl implements PageChanged {
  const _$PageChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OnboardingEvent.pageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      __$$PageChangedImplCopyWithImpl<_$PageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnboardingStatus,
    required TResult Function() completeOnboarding,
    required TResult Function(int index) pageChanged,
    required TResult Function() nextPage,
    required TResult Function() skipOnboarding,
  }) {
    return pageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnboardingStatus,
    TResult? Function()? completeOnboarding,
    TResult? Function(int index)? pageChanged,
    TResult? Function()? nextPage,
    TResult? Function()? skipOnboarding,
  }) {
    return pageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnboardingStatus,
    TResult Function()? completeOnboarding,
    TResult Function(int index)? pageChanged,
    TResult Function()? nextPage,
    TResult Function()? skipOnboarding,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOnboardingStatus value)
        checkOnboardingStatus,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(SkipOnboarding value) skipOnboarding,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(SkipOnboarding value)? skipOnboarding,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(NextPage value)? nextPage,
    TResult Function(SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class PageChanged implements OnboardingEvent {
  const factory PageChanged(final int index) = _$PageChangedImpl;

  int get index;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
          _$NextPageImpl value, $Res Function(_$NextPageImpl) then) =
      __$$NextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
      _$NextPageImpl _value, $Res Function(_$NextPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextPageImpl implements NextPage {
  const _$NextPageImpl();

  @override
  String toString() {
    return 'OnboardingEvent.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnboardingStatus,
    required TResult Function() completeOnboarding,
    required TResult Function(int index) pageChanged,
    required TResult Function() nextPage,
    required TResult Function() skipOnboarding,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnboardingStatus,
    TResult? Function()? completeOnboarding,
    TResult? Function(int index)? pageChanged,
    TResult? Function()? nextPage,
    TResult? Function()? skipOnboarding,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnboardingStatus,
    TResult Function()? completeOnboarding,
    TResult Function(int index)? pageChanged,
    TResult Function()? nextPage,
    TResult Function()? skipOnboarding,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOnboardingStatus value)
        checkOnboardingStatus,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(SkipOnboarding value) skipOnboarding,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(SkipOnboarding value)? skipOnboarding,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(NextPage value)? nextPage,
    TResult Function(SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class NextPage implements OnboardingEvent {
  const factory NextPage() = _$NextPageImpl;
}

/// @nodoc
abstract class _$$SkipOnboardingImplCopyWith<$Res> {
  factory _$$SkipOnboardingImplCopyWith(_$SkipOnboardingImpl value,
          $Res Function(_$SkipOnboardingImpl) then) =
      __$$SkipOnboardingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkipOnboardingImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$SkipOnboardingImpl>
    implements _$$SkipOnboardingImplCopyWith<$Res> {
  __$$SkipOnboardingImplCopyWithImpl(
      _$SkipOnboardingImpl _value, $Res Function(_$SkipOnboardingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SkipOnboardingImpl implements SkipOnboarding {
  const _$SkipOnboardingImpl();

  @override
  String toString() {
    return 'OnboardingEvent.skipOnboarding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SkipOnboardingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnboardingStatus,
    required TResult Function() completeOnboarding,
    required TResult Function(int index) pageChanged,
    required TResult Function() nextPage,
    required TResult Function() skipOnboarding,
  }) {
    return skipOnboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnboardingStatus,
    TResult? Function()? completeOnboarding,
    TResult? Function(int index)? pageChanged,
    TResult? Function()? nextPage,
    TResult? Function()? skipOnboarding,
  }) {
    return skipOnboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnboardingStatus,
    TResult Function()? completeOnboarding,
    TResult Function(int index)? pageChanged,
    TResult Function()? nextPage,
    TResult Function()? skipOnboarding,
    required TResult orElse(),
  }) {
    if (skipOnboarding != null) {
      return skipOnboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOnboardingStatus value)
        checkOnboardingStatus,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(SkipOnboarding value) skipOnboarding,
  }) {
    return skipOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(SkipOnboarding value)? skipOnboarding,
  }) {
    return skipOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOnboardingStatus value)? checkOnboardingStatus,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(NextPage value)? nextPage,
    TResult Function(SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (skipOnboarding != null) {
      return skipOnboarding(this);
    }
    return orElse();
  }
}

abstract class SkipOnboarding implements OnboardingEvent {
  const factory SkipOnboarding() = _$SkipOnboardingImpl;
}

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(List<OnboardingPageEntity> pages,
            int currentPageIndex, bool isLastPage)
        onboardingNotCompleted,
    required TResult Function() onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult? Function()? onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_OnboardingNotCompleted value)
        onboardingNotCompleted,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OnboardingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(List<OnboardingPageEntity> pages,
            int currentPageIndex, bool isLastPage)
        onboardingNotCompleted,
    required TResult Function() onboardingCompleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult? Function()? onboardingCompleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_OnboardingNotCompleted value)
        onboardingNotCompleted,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OnboardingState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailureImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({this.errorMessage = ''});

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'OnboardingState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(List<OnboardingPageEntity> pages,
            int currentPageIndex, bool isLastPage)
        onboardingNotCompleted,
    required TResult Function() onboardingCompleted,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult? Function()? onboardingCompleted,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_OnboardingNotCompleted value)
        onboardingNotCompleted,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OnboardingState {
  const factory _Failure({final String errorMessage}) = _$FailureImpl;

  String get errorMessage;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingNotCompletedImplCopyWith<$Res> {
  factory _$$OnboardingNotCompletedImplCopyWith(
          _$OnboardingNotCompletedImpl value,
          $Res Function(_$OnboardingNotCompletedImpl) then) =
      __$$OnboardingNotCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OnboardingPageEntity> pages,
      int currentPageIndex,
      bool isLastPage});
}

/// @nodoc
class __$$OnboardingNotCompletedImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingNotCompletedImpl>
    implements _$$OnboardingNotCompletedImplCopyWith<$Res> {
  __$$OnboardingNotCompletedImplCopyWithImpl(
      _$OnboardingNotCompletedImpl _value,
      $Res Function(_$OnboardingNotCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
    Object? currentPageIndex = null,
    Object? isLastPage = null,
  }) {
    return _then(_$OnboardingNotCompletedImpl(
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<OnboardingPageEntity>,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnboardingNotCompletedImpl implements _OnboardingNotCompleted {
  const _$OnboardingNotCompletedImpl(
      {required final List<OnboardingPageEntity> pages,
      required this.currentPageIndex,
      this.isLastPage = false})
      : _pages = pages;

  final List<OnboardingPageEntity> _pages;
  @override
  List<OnboardingPageEntity> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  final int currentPageIndex;
  @override
  @JsonKey()
  final bool isLastPage;

  @override
  String toString() {
    return 'OnboardingState.onboardingNotCompleted(pages: $pages, currentPageIndex: $currentPageIndex, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingNotCompletedImpl &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pages),
      currentPageIndex,
      isLastPage);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingNotCompletedImplCopyWith<_$OnboardingNotCompletedImpl>
      get copyWith => __$$OnboardingNotCompletedImplCopyWithImpl<
          _$OnboardingNotCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(List<OnboardingPageEntity> pages,
            int currentPageIndex, bool isLastPage)
        onboardingNotCompleted,
    required TResult Function() onboardingCompleted,
  }) {
    return onboardingNotCompleted(pages, currentPageIndex, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult? Function()? onboardingCompleted,
  }) {
    return onboardingNotCompleted?.call(pages, currentPageIndex, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onboardingNotCompleted != null) {
      return onboardingNotCompleted(pages, currentPageIndex, isLastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_OnboardingNotCompleted value)
        onboardingNotCompleted,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
  }) {
    return onboardingNotCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
  }) {
    return onboardingNotCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onboardingNotCompleted != null) {
      return onboardingNotCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnboardingNotCompleted implements OnboardingState {
  const factory _OnboardingNotCompleted(
      {required final List<OnboardingPageEntity> pages,
      required final int currentPageIndex,
      final bool isLastPage}) = _$OnboardingNotCompletedImpl;

  List<OnboardingPageEntity> get pages;
  int get currentPageIndex;
  bool get isLastPage;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingNotCompletedImplCopyWith<_$OnboardingNotCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingCompletedImplCopyWith<$Res> {
  factory _$$OnboardingCompletedImplCopyWith(_$OnboardingCompletedImpl value,
          $Res Function(_$OnboardingCompletedImpl) then) =
      __$$OnboardingCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingCompletedImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingCompletedImpl>
    implements _$$OnboardingCompletedImplCopyWith<$Res> {
  __$$OnboardingCompletedImplCopyWithImpl(_$OnboardingCompletedImpl _value,
      $Res Function(_$OnboardingCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnboardingCompletedImpl implements _OnboardingCompleted {
  const _$OnboardingCompletedImpl();

  @override
  String toString() {
    return 'OnboardingState.onboardingCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(List<OnboardingPageEntity> pages,
            int currentPageIndex, bool isLastPage)
        onboardingNotCompleted,
    required TResult Function() onboardingCompleted,
  }) {
    return onboardingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult? Function()? onboardingCompleted,
  }) {
    return onboardingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<OnboardingPageEntity> pages, int currentPageIndex,
            bool isLastPage)?
        onboardingNotCompleted,
    TResult Function()? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onboardingCompleted != null) {
      return onboardingCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_OnboardingNotCompleted value)
        onboardingNotCompleted,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
  }) {
    return onboardingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
  }) {
    return onboardingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_OnboardingNotCompleted value)? onboardingNotCompleted,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    required TResult orElse(),
  }) {
    if (onboardingCompleted != null) {
      return onboardingCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnboardingCompleted implements OnboardingState {
  const factory _OnboardingCompleted() = _$OnboardingCompletedImpl;
}
