// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinancialAccountEntity implements DiagnosticableTreeMixin {

 int? get id; String? get balance;
/// Create a copy of FinancialAccountEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialAccountEntityCopyWith<FinancialAccountEntity> get copyWith => _$FinancialAccountEntityCopyWithImpl<FinancialAccountEntity>(this as FinancialAccountEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FinancialAccountEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialAccountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,id,balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FinancialAccountEntity(id: $id, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $FinancialAccountEntityCopyWith<$Res>  {
  factory $FinancialAccountEntityCopyWith(FinancialAccountEntity value, $Res Function(FinancialAccountEntity) _then) = _$FinancialAccountEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? balance
});




}
/// @nodoc
class _$FinancialAccountEntityCopyWithImpl<$Res>
    implements $FinancialAccountEntityCopyWith<$Res> {
  _$FinancialAccountEntityCopyWithImpl(this._self, this._then);

  final FinancialAccountEntity _self;
  final $Res Function(FinancialAccountEntity) _then;

/// Create a copy of FinancialAccountEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? balance = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialAccountEntity].
extension FinancialAccountEntityPatterns on FinancialAccountEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialAccountEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialAccountEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialAccountEntity value)  $default,){
final _that = this;
switch (_that) {
case _FinancialAccountEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialAccountEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialAccountEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialAccountEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? balance)  $default,) {final _that = this;
switch (_that) {
case _FinancialAccountEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? balance)?  $default,) {final _that = this;
switch (_that) {
case _FinancialAccountEntity() when $default != null:
return $default(_that.id,_that.balance);case _:
  return null;

}
}

}

/// @nodoc


class _FinancialAccountEntity with DiagnosticableTreeMixin implements FinancialAccountEntity {
  const _FinancialAccountEntity({this.id, this.balance});
  

@override final  int? id;
@override final  String? balance;

/// Create a copy of FinancialAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialAccountEntityCopyWith<_FinancialAccountEntity> get copyWith => __$FinancialAccountEntityCopyWithImpl<_FinancialAccountEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FinancialAccountEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialAccountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,id,balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FinancialAccountEntity(id: $id, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$FinancialAccountEntityCopyWith<$Res> implements $FinancialAccountEntityCopyWith<$Res> {
  factory _$FinancialAccountEntityCopyWith(_FinancialAccountEntity value, $Res Function(_FinancialAccountEntity) _then) = __$FinancialAccountEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? balance
});




}
/// @nodoc
class __$FinancialAccountEntityCopyWithImpl<$Res>
    implements _$FinancialAccountEntityCopyWith<$Res> {
  __$FinancialAccountEntityCopyWithImpl(this._self, this._then);

  final _FinancialAccountEntity _self;
  final $Res Function(_FinancialAccountEntity) _then;

/// Create a copy of FinancialAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? balance = freezed,}) {
  return _then(_FinancialAccountEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
