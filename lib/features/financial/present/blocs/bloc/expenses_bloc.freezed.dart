// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpensesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesEvent()';
}


}

/// @nodoc
class $ExpensesEventCopyWith<$Res>  {
$ExpensesEventCopyWith(ExpensesEvent _, $Res Function(ExpensesEvent) __);
}


/// Adds pattern-matching-related methods to [ExpensesEvent].
extension ExpensesEventPatterns on ExpensesEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Get value)?  get,TResult Function( _UpdateData value)?  updateData,TResult Function( _Create value)?  create,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _Create() when create != null:
return create(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Get value)  get,required TResult Function( _UpdateData value)  updateData,required TResult Function( _Create value)  create,}){
final _that = this;
switch (_that) {
case _Get():
return get(_that);case _UpdateData():
return updateData(_that);case _Create():
return create(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Get value)?  get,TResult? Function( _UpdateData value)?  updateData,TResult? Function( _Create value)?  create,}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _Create() when create != null:
return create(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  get,TResult Function( CreateExpenseReqEntity createExpenseReqEntity)?  updateData,TResult Function()?  create,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that.page);case _UpdateData() when updateData != null:
return updateData(_that.createExpenseReqEntity);case _Create() when create != null:
return create();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  get,required TResult Function( CreateExpenseReqEntity createExpenseReqEntity)  updateData,required TResult Function()  create,}) {final _that = this;
switch (_that) {
case _Get():
return get(_that.page);case _UpdateData():
return updateData(_that.createExpenseReqEntity);case _Create():
return create();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  get,TResult? Function( CreateExpenseReqEntity createExpenseReqEntity)?  updateData,TResult? Function()?  create,}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that.page);case _UpdateData() when updateData != null:
return updateData(_that.createExpenseReqEntity);case _Create() when create != null:
return create();case _:
  return null;

}
}

}

/// @nodoc


class _Get implements ExpensesEvent {
  const _Get({required this.page});
  

 final  int page;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCopyWith<_Get> get copyWith => __$GetCopyWithImpl<_Get>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Get&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ExpensesEvent.get(page: $page)';
}


}

/// @nodoc
abstract mixin class _$GetCopyWith<$Res> implements $ExpensesEventCopyWith<$Res> {
  factory _$GetCopyWith(_Get value, $Res Function(_Get) _then) = __$GetCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class __$GetCopyWithImpl<$Res>
    implements _$GetCopyWith<$Res> {
  __$GetCopyWithImpl(this._self, this._then);

  final _Get _self;
  final $Res Function(_Get) _then;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_Get(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateData implements ExpensesEvent {
  const _UpdateData({required this.createExpenseReqEntity});
  

 final  CreateExpenseReqEntity createExpenseReqEntity;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDataCopyWith<_UpdateData> get copyWith => __$UpdateDataCopyWithImpl<_UpdateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateData&&(identical(other.createExpenseReqEntity, createExpenseReqEntity) || other.createExpenseReqEntity == createExpenseReqEntity));
}


@override
int get hashCode => Object.hash(runtimeType,createExpenseReqEntity);

@override
String toString() {
  return 'ExpensesEvent.updateData(createExpenseReqEntity: $createExpenseReqEntity)';
}


}

/// @nodoc
abstract mixin class _$UpdateDataCopyWith<$Res> implements $ExpensesEventCopyWith<$Res> {
  factory _$UpdateDataCopyWith(_UpdateData value, $Res Function(_UpdateData) _then) = __$UpdateDataCopyWithImpl;
@useResult
$Res call({
 CreateExpenseReqEntity createExpenseReqEntity
});




}
/// @nodoc
class __$UpdateDataCopyWithImpl<$Res>
    implements _$UpdateDataCopyWith<$Res> {
  __$UpdateDataCopyWithImpl(this._self, this._then);

  final _UpdateData _self;
  final $Res Function(_UpdateData) _then;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createExpenseReqEntity = null,}) {
  return _then(_UpdateData(
createExpenseReqEntity: null == createExpenseReqEntity ? _self.createExpenseReqEntity : createExpenseReqEntity // ignore: cast_nullable_to_non_nullable
as CreateExpenseReqEntity,
  ));
}


}

/// @nodoc


class _Create implements ExpensesEvent {
  const _Create();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Create);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesEvent.create()';
}


}




/// @nodoc
mixin _$ExpensesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesState()';
}


}

/// @nodoc
class $ExpensesStateCopyWith<$Res>  {
$ExpensesStateCopyWith(ExpensesState _, $Res Function(ExpensesState) __);
}


/// Adds pattern-matching-related methods to [ExpensesState].
extension ExpensesStatePatterns on ExpensesState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loaded value)?  loaded,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loaded value)  loaded,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loaded():
return loaded(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<ExpenseEntity>? expenses,  MetaEntity? meta,  CreateExpenseReqEntity? createExpenseReqEntity,  FormzSubmissionStatus? formzSubmissionStatus,  bool? loading)?  loaded,TResult Function()?  loading,TResult Function()?  success,TResult Function( ErrorInfo apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.expenses,_that.meta,_that.createExpenseReqEntity,_that.formzSubmissionStatus,_that.loading);case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<ExpenseEntity>? expenses,  MetaEntity? meta,  CreateExpenseReqEntity? createExpenseReqEntity,  FormzSubmissionStatus? formzSubmissionStatus,  bool? loading)  loaded,required TResult Function()  loading,required TResult Function()  success,required TResult Function( ErrorInfo apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loaded():
return loaded(_that.expenses,_that.meta,_that.createExpenseReqEntity,_that.formzSubmissionStatus,_that.loading);case _Loading():
return loading();case _Success():
return success();case _Failure():
return failure(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<ExpenseEntity>? expenses,  MetaEntity? meta,  CreateExpenseReqEntity? createExpenseReqEntity,  FormzSubmissionStatus? formzSubmissionStatus,  bool? loading)?  loaded,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( ErrorInfo apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.expenses,_that.meta,_that.createExpenseReqEntity,_that.formzSubmissionStatus,_that.loading);case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ExpensesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesState.initial()';
}


}




/// @nodoc


class _Loaded implements ExpensesState {
  const _Loaded({required final  List<ExpenseEntity>? expenses, required this.meta, required this.createExpenseReqEntity, required this.formzSubmissionStatus, this.loading}): _expenses = expenses;
  

 final  List<ExpenseEntity>? _expenses;
 List<ExpenseEntity>? get expenses {
  final value = _expenses;
  if (value == null) return null;
  if (_expenses is EqualUnmodifiableListView) return _expenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  MetaEntity? meta;
 final  CreateExpenseReqEntity? createExpenseReqEntity;
 final  FormzSubmissionStatus? formzSubmissionStatus;
 final  bool? loading;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._expenses, _expenses)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.createExpenseReqEntity, createExpenseReqEntity) || other.createExpenseReqEntity == createExpenseReqEntity)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_expenses),meta,createExpenseReqEntity,formzSubmissionStatus,loading);

@override
String toString() {
  return 'ExpensesState.loaded(expenses: $expenses, meta: $meta, createExpenseReqEntity: $createExpenseReqEntity, formzSubmissionStatus: $formzSubmissionStatus, loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ExpenseEntity>? expenses, MetaEntity? meta, CreateExpenseReqEntity? createExpenseReqEntity, FormzSubmissionStatus? formzSubmissionStatus, bool? loading
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expenses = freezed,Object? meta = freezed,Object? createExpenseReqEntity = freezed,Object? formzSubmissionStatus = freezed,Object? loading = freezed,}) {
  return _then(_Loaded(
expenses: freezed == expenses ? _self._expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,createExpenseReqEntity: freezed == createExpenseReqEntity ? _self.createExpenseReqEntity : createExpenseReqEntity // ignore: cast_nullable_to_non_nullable
as CreateExpenseReqEntity?,formzSubmissionStatus: freezed == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus?,loading: freezed == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaEntityCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

/// @nodoc


class _Loading implements ExpensesState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesState.loading()';
}


}




/// @nodoc


class _Success implements ExpensesState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesState.success()';
}


}




/// @nodoc


class _Failure implements ExpensesState {
  const _Failure({required this.apiErrorModel});
  

 final  ErrorInfo apiErrorModel;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ExpensesState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo apiErrorModel
});


$ErrorInfoCopyWith<$Res> get apiErrorModel;

}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<$Res> get apiErrorModel {
  
  return $ErrorInfoCopyWith<$Res>(_self.apiErrorModel, (value) {
    return _then(_self.copyWith(apiErrorModel: value));
  });
}
}

// dart format on
