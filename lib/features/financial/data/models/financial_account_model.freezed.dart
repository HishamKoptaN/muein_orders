// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinancialAccountModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'balance') String? get balance;
/// Create a copy of FinancialAccountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialAccountModelCopyWith<FinancialAccountModel> get copyWith => _$FinancialAccountModelCopyWithImpl<FinancialAccountModel>(this as FinancialAccountModel, _$identity);

  /// Serializes this FinancialAccountModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FinancialAccountModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialAccountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FinancialAccountModel(id: $id, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $FinancialAccountModelCopyWith<$Res>  {
  factory $FinancialAccountModelCopyWith(FinancialAccountModel value, $Res Function(FinancialAccountModel) _then) = _$FinancialAccountModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'balance') String? balance
});




}
/// @nodoc
class _$FinancialAccountModelCopyWithImpl<$Res>
    implements $FinancialAccountModelCopyWith<$Res> {
  _$FinancialAccountModelCopyWithImpl(this._self, this._then);

  final FinancialAccountModel _self;
  final $Res Function(FinancialAccountModel) _then;

/// Create a copy of FinancialAccountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? balance = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialAccountModel].
extension FinancialAccountModelPatterns on FinancialAccountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialAccountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialAccountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialAccountModel value)  $default,){
final _that = this;
switch (_that) {
case _FinancialAccountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialAccountModel value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialAccountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'balance')  String? balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialAccountModel() when $default != null:
return $default(_that.id,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'balance')  String? balance)  $default,) {final _that = this;
switch (_that) {
case _FinancialAccountModel():
return $default(_that.id,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'balance')  String? balance)?  $default,) {final _that = this;
switch (_that) {
case _FinancialAccountModel() when $default != null:
return $default(_that.id,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialAccountModel with DiagnosticableTreeMixin implements FinancialAccountModel {
  const _FinancialAccountModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'balance') this.balance});
  factory _FinancialAccountModel.fromJson(Map<String, dynamic> json) => _$FinancialAccountModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'balance') final  String? balance;

/// Create a copy of FinancialAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialAccountModelCopyWith<_FinancialAccountModel> get copyWith => __$FinancialAccountModelCopyWithImpl<_FinancialAccountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialAccountModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FinancialAccountModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialAccountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FinancialAccountModel(id: $id, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$FinancialAccountModelCopyWith<$Res> implements $FinancialAccountModelCopyWith<$Res> {
  factory _$FinancialAccountModelCopyWith(_FinancialAccountModel value, $Res Function(_FinancialAccountModel) _then) = __$FinancialAccountModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'balance') String? balance
});




}
/// @nodoc
class __$FinancialAccountModelCopyWithImpl<$Res>
    implements _$FinancialAccountModelCopyWith<$Res> {
  __$FinancialAccountModelCopyWithImpl(this._self, this._then);

  final _FinancialAccountModel _self;
  final $Res Function(_FinancialAccountModel) _then;

/// Create a copy of FinancialAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? balance = freezed,}) {
  return _then(_FinancialAccountModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
