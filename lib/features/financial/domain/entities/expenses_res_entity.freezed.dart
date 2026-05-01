// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpensesResEntity {

 List<ExpenseEntity>? get data; MetaEntity? get meta;
/// Create a copy of ExpensesResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesResEntityCopyWith<ExpensesResEntity> get copyWith => _$ExpensesResEntityCopyWithImpl<ExpensesResEntity>(this as ExpensesResEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesResEntity&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ExpensesResEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ExpensesResEntityCopyWith<$Res>  {
  factory $ExpensesResEntityCopyWith(ExpensesResEntity value, $Res Function(ExpensesResEntity) _then) = _$ExpensesResEntityCopyWithImpl;
@useResult
$Res call({
 List<ExpenseEntity>? data, MetaEntity? meta
});


$MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ExpensesResEntityCopyWithImpl<$Res>
    implements $ExpensesResEntityCopyWith<$Res> {
  _$ExpensesResEntityCopyWithImpl(this._self, this._then);

  final ExpensesResEntity _self;
  final $Res Function(ExpensesResEntity) _then;

/// Create a copy of ExpensesResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ExpenseEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}
/// Create a copy of ExpensesResEntity
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


/// Adds pattern-matching-related methods to [ExpensesResEntity].
extension ExpensesResEntityPatterns on ExpensesResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpensesResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpensesResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpensesResEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExpensesResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpensesResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExpensesResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExpenseEntity>? data,  MetaEntity? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpensesResEntity() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExpenseEntity>? data,  MetaEntity? meta)  $default,) {final _that = this;
switch (_that) {
case _ExpensesResEntity():
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExpenseEntity>? data,  MetaEntity? meta)?  $default,) {final _that = this;
switch (_that) {
case _ExpensesResEntity() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _ExpensesResEntity implements ExpensesResEntity {
  const _ExpensesResEntity({final  List<ExpenseEntity>? data, this.meta}): _data = data;
  

 final  List<ExpenseEntity>? _data;
@override List<ExpenseEntity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of ExpensesResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensesResEntityCopyWith<_ExpensesResEntity> get copyWith => __$ExpensesResEntityCopyWithImpl<_ExpensesResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensesResEntity&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ExpensesResEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ExpensesResEntityCopyWith<$Res> implements $ExpensesResEntityCopyWith<$Res> {
  factory _$ExpensesResEntityCopyWith(_ExpensesResEntity value, $Res Function(_ExpensesResEntity) _then) = __$ExpensesResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<ExpenseEntity>? data, MetaEntity? meta
});


@override $MetaEntityCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ExpensesResEntityCopyWithImpl<$Res>
    implements _$ExpensesResEntityCopyWith<$Res> {
  __$ExpensesResEntityCopyWithImpl(this._self, this._then);

  final _ExpensesResEntity _self;
  final $Res Function(_ExpensesResEntity) _then;

/// Create a copy of ExpensesResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ExpensesResEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ExpenseEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

/// Create a copy of ExpensesResEntity
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
mixin _$ExpenseEntity {

 int? get id; String? get amount; String? get currency; String? get notes; String? get description; String? get receiptPath; String? get status; String? get adminNotes; String? get reviewedAt; String? get createdAt; String? get updatedAt; ExpenseTypeEntity? get expenseType;
/// Create a copy of ExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseEntityCopyWith<ExpenseEntity> get copyWith => _$ExpenseEntityCopyWithImpl<ExpenseEntity>(this as ExpenseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.description, description) || other.description == description)&&(identical(other.receiptPath, receiptPath) || other.receiptPath == receiptPath)&&(identical(other.status, status) || other.status == status)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.expenseType, expenseType) || other.expenseType == expenseType));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,currency,notes,description,receiptPath,status,adminNotes,reviewedAt,createdAt,updatedAt,expenseType);

@override
String toString() {
  return 'ExpenseEntity(id: $id, amount: $amount, currency: $currency, notes: $notes, description: $description, receiptPath: $receiptPath, status: $status, adminNotes: $adminNotes, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, expenseType: $expenseType)';
}


}

/// @nodoc
abstract mixin class $ExpenseEntityCopyWith<$Res>  {
  factory $ExpenseEntityCopyWith(ExpenseEntity value, $Res Function(ExpenseEntity) _then) = _$ExpenseEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? amount, String? currency, String? notes, String? description, String? receiptPath, String? status, String? adminNotes, String? reviewedAt, String? createdAt, String? updatedAt, ExpenseTypeEntity? expenseType
});


$ExpenseTypeEntityCopyWith<$Res>? get expenseType;

}
/// @nodoc
class _$ExpenseEntityCopyWithImpl<$Res>
    implements $ExpenseEntityCopyWith<$Res> {
  _$ExpenseEntityCopyWithImpl(this._self, this._then);

  final ExpenseEntity _self;
  final $Res Function(ExpenseEntity) _then;

/// Create a copy of ExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = freezed,Object? currency = freezed,Object? notes = freezed,Object? description = freezed,Object? receiptPath = freezed,Object? status = freezed,Object? adminNotes = freezed,Object? reviewedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? expenseType = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,receiptPath: freezed == receiptPath ? _self.receiptPath : receiptPath // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,expenseType: freezed == expenseType ? _self.expenseType : expenseType // ignore: cast_nullable_to_non_nullable
as ExpenseTypeEntity?,
  ));
}
/// Create a copy of ExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseTypeEntityCopyWith<$Res>? get expenseType {
    if (_self.expenseType == null) {
    return null;
  }

  return $ExpenseTypeEntityCopyWith<$Res>(_self.expenseType!, (value) {
    return _then(_self.copyWith(expenseType: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExpenseEntity].
extension ExpenseEntityPatterns on ExpenseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? amount,  String? currency,  String? notes,  String? description,  String? receiptPath,  String? status,  String? adminNotes,  String? reviewedAt,  String? createdAt,  String? updatedAt,  ExpenseTypeEntity? expenseType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseEntity() when $default != null:
return $default(_that.id,_that.amount,_that.currency,_that.notes,_that.description,_that.receiptPath,_that.status,_that.adminNotes,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.expenseType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? amount,  String? currency,  String? notes,  String? description,  String? receiptPath,  String? status,  String? adminNotes,  String? reviewedAt,  String? createdAt,  String? updatedAt,  ExpenseTypeEntity? expenseType)  $default,) {final _that = this;
switch (_that) {
case _ExpenseEntity():
return $default(_that.id,_that.amount,_that.currency,_that.notes,_that.description,_that.receiptPath,_that.status,_that.adminNotes,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.expenseType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? amount,  String? currency,  String? notes,  String? description,  String? receiptPath,  String? status,  String? adminNotes,  String? reviewedAt,  String? createdAt,  String? updatedAt,  ExpenseTypeEntity? expenseType)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseEntity() when $default != null:
return $default(_that.id,_that.amount,_that.currency,_that.notes,_that.description,_that.receiptPath,_that.status,_that.adminNotes,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.expenseType);case _:
  return null;

}
}

}

/// @nodoc


class _ExpenseEntity implements ExpenseEntity {
  const _ExpenseEntity({this.id, this.amount, this.currency, this.notes, this.description, this.receiptPath, this.status, this.adminNotes, this.reviewedAt, this.createdAt, this.updatedAt, this.expenseType});
  

@override final  int? id;
@override final  String? amount;
@override final  String? currency;
@override final  String? notes;
@override final  String? description;
@override final  String? receiptPath;
@override final  String? status;
@override final  String? adminNotes;
@override final  String? reviewedAt;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  ExpenseTypeEntity? expenseType;

/// Create a copy of ExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseEntityCopyWith<_ExpenseEntity> get copyWith => __$ExpenseEntityCopyWithImpl<_ExpenseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.description, description) || other.description == description)&&(identical(other.receiptPath, receiptPath) || other.receiptPath == receiptPath)&&(identical(other.status, status) || other.status == status)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.expenseType, expenseType) || other.expenseType == expenseType));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,currency,notes,description,receiptPath,status,adminNotes,reviewedAt,createdAt,updatedAt,expenseType);

@override
String toString() {
  return 'ExpenseEntity(id: $id, amount: $amount, currency: $currency, notes: $notes, description: $description, receiptPath: $receiptPath, status: $status, adminNotes: $adminNotes, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, expenseType: $expenseType)';
}


}

/// @nodoc
abstract mixin class _$ExpenseEntityCopyWith<$Res> implements $ExpenseEntityCopyWith<$Res> {
  factory _$ExpenseEntityCopyWith(_ExpenseEntity value, $Res Function(_ExpenseEntity) _then) = __$ExpenseEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? amount, String? currency, String? notes, String? description, String? receiptPath, String? status, String? adminNotes, String? reviewedAt, String? createdAt, String? updatedAt, ExpenseTypeEntity? expenseType
});


@override $ExpenseTypeEntityCopyWith<$Res>? get expenseType;

}
/// @nodoc
class __$ExpenseEntityCopyWithImpl<$Res>
    implements _$ExpenseEntityCopyWith<$Res> {
  __$ExpenseEntityCopyWithImpl(this._self, this._then);

  final _ExpenseEntity _self;
  final $Res Function(_ExpenseEntity) _then;

/// Create a copy of ExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = freezed,Object? currency = freezed,Object? notes = freezed,Object? description = freezed,Object? receiptPath = freezed,Object? status = freezed,Object? adminNotes = freezed,Object? reviewedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? expenseType = freezed,}) {
  return _then(_ExpenseEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,receiptPath: freezed == receiptPath ? _self.receiptPath : receiptPath // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,expenseType: freezed == expenseType ? _self.expenseType : expenseType // ignore: cast_nullable_to_non_nullable
as ExpenseTypeEntity?,
  ));
}

/// Create a copy of ExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseTypeEntityCopyWith<$Res>? get expenseType {
    if (_self.expenseType == null) {
    return null;
  }

  return $ExpenseTypeEntityCopyWith<$Res>(_self.expenseType!, (value) {
    return _then(_self.copyWith(expenseType: value));
  });
}
}

/// @nodoc
mixin _$ExpenseTypeEntity {

 int? get id; String? get name;
/// Create a copy of ExpenseTypeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseTypeEntityCopyWith<ExpenseTypeEntity> get copyWith => _$ExpenseTypeEntityCopyWithImpl<ExpenseTypeEntity>(this as ExpenseTypeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseTypeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ExpenseTypeEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ExpenseTypeEntityCopyWith<$Res>  {
  factory $ExpenseTypeEntityCopyWith(ExpenseTypeEntity value, $Res Function(ExpenseTypeEntity) _then) = _$ExpenseTypeEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$ExpenseTypeEntityCopyWithImpl<$Res>
    implements $ExpenseTypeEntityCopyWith<$Res> {
  _$ExpenseTypeEntityCopyWithImpl(this._self, this._then);

  final ExpenseTypeEntity _self;
  final $Res Function(ExpenseTypeEntity) _then;

/// Create a copy of ExpenseTypeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpenseTypeEntity].
extension ExpenseTypeEntityPatterns on ExpenseTypeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseTypeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseTypeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseTypeEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseTypeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseTypeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseTypeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseTypeEntity() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ExpenseTypeEntity():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseTypeEntity() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _ExpenseTypeEntity implements ExpenseTypeEntity {
  const _ExpenseTypeEntity({this.id, this.name});
  

@override final  int? id;
@override final  String? name;

/// Create a copy of ExpenseTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseTypeEntityCopyWith<_ExpenseTypeEntity> get copyWith => __$ExpenseTypeEntityCopyWithImpl<_ExpenseTypeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseTypeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ExpenseTypeEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ExpenseTypeEntityCopyWith<$Res> implements $ExpenseTypeEntityCopyWith<$Res> {
  factory _$ExpenseTypeEntityCopyWith(_ExpenseTypeEntity value, $Res Function(_ExpenseTypeEntity) _then) = __$ExpenseTypeEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$ExpenseTypeEntityCopyWithImpl<$Res>
    implements _$ExpenseTypeEntityCopyWith<$Res> {
  __$ExpenseTypeEntityCopyWithImpl(this._self, this._then);

  final _ExpenseTypeEntity _self;
  final $Res Function(_ExpenseTypeEntity) _then;

/// Create a copy of ExpenseTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ExpenseTypeEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
