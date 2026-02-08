// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_expense_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateExpenseModel {

@JsonKey(name: 'amount') double? get amount;@JsonKey(name: 'notes') String? get notes;
/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateExpenseModelCopyWith<CreateExpenseModel> get copyWith => _$CreateExpenseModelCopyWithImpl<CreateExpenseModel>(this as CreateExpenseModel, _$identity);

  /// Serializes this CreateExpenseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateExpenseModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,notes);

@override
String toString() {
  return 'CreateExpenseModel(amount: $amount, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $CreateExpenseModelCopyWith<$Res>  {
  factory $CreateExpenseModelCopyWith(CreateExpenseModel value, $Res Function(CreateExpenseModel) _then) = _$CreateExpenseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'notes') String? notes
});




}
/// @nodoc
class _$CreateExpenseModelCopyWithImpl<$Res>
    implements $CreateExpenseModelCopyWith<$Res> {
  _$CreateExpenseModelCopyWithImpl(this._self, this._then);

  final CreateExpenseModel _self;
  final $Res Function(CreateExpenseModel) _then;

/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateExpenseModel].
extension CreateExpenseModelPatterns on CreateExpenseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateExpenseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateExpenseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateExpenseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'notes')  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
return $default(_that.amount,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'notes')  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseModel():
return $default(_that.amount,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'notes')  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseModel() when $default != null:
return $default(_that.amount,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateExpenseModel implements CreateExpenseModel {
  const _CreateExpenseModel({@JsonKey(name: 'amount') this.amount, @JsonKey(name: 'notes') this.notes});
  factory _CreateExpenseModel.fromJson(Map<String, dynamic> json) => _$CreateExpenseModelFromJson(json);

@override@JsonKey(name: 'amount') final  double? amount;
@override@JsonKey(name: 'notes') final  String? notes;

/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateExpenseModelCopyWith<_CreateExpenseModel> get copyWith => __$CreateExpenseModelCopyWithImpl<_CreateExpenseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateExpenseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateExpenseModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,notes);

@override
String toString() {
  return 'CreateExpenseModel(amount: $amount, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateExpenseModelCopyWith<$Res> implements $CreateExpenseModelCopyWith<$Res> {
  factory _$CreateExpenseModelCopyWith(_CreateExpenseModel value, $Res Function(_CreateExpenseModel) _then) = __$CreateExpenseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'notes') String? notes
});




}
/// @nodoc
class __$CreateExpenseModelCopyWithImpl<$Res>
    implements _$CreateExpenseModelCopyWith<$Res> {
  __$CreateExpenseModelCopyWithImpl(this._self, this._then);

  final _CreateExpenseModel _self;
  final $Res Function(_CreateExpenseModel) _then;

/// Create a copy of CreateExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? notes = freezed,}) {
  return _then(_CreateExpenseModel(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
