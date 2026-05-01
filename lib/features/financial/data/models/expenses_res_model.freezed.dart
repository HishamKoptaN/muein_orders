// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpensesResModel {

@JsonKey(name: 'data') List<ExpenseModel>? get expenses;@JsonKey(name: 'meta') MetaModel? get meta;
/// Create a copy of ExpensesResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesResModelCopyWith<ExpensesResModel> get copyWith => _$ExpensesResModelCopyWithImpl<ExpensesResModel>(this as ExpensesResModel, _$identity);

  /// Serializes this ExpensesResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesResModel&&const DeepCollectionEquality().equals(other.expenses, expenses)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(expenses),meta);

@override
String toString() {
  return 'ExpensesResModel(expenses: $expenses, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ExpensesResModelCopyWith<$Res>  {
  factory $ExpensesResModelCopyWith(ExpensesResModel value, $Res Function(ExpensesResModel) _then) = _$ExpensesResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<ExpenseModel>? expenses,@JsonKey(name: 'meta') MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ExpensesResModelCopyWithImpl<$Res>
    implements $ExpensesResModelCopyWith<$Res> {
  _$ExpensesResModelCopyWithImpl(this._self, this._then);

  final ExpensesResModel _self;
  final $Res Function(ExpensesResModel) _then;

/// Create a copy of ExpensesResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expenses = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
expenses: freezed == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of ExpensesResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExpensesResModel].
extension ExpensesResModelPatterns on ExpensesResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpensesResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpensesResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpensesResModel value)  $default,){
final _that = this;
switch (_that) {
case _ExpensesResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpensesResModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExpensesResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<ExpenseModel>? expenses, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpensesResModel() when $default != null:
return $default(_that.expenses,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<ExpenseModel>? expenses, @JsonKey(name: 'meta')  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _ExpensesResModel():
return $default(_that.expenses,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<ExpenseModel>? expenses, @JsonKey(name: 'meta')  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _ExpensesResModel() when $default != null:
return $default(_that.expenses,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpensesResModel implements ExpensesResModel {
  const _ExpensesResModel({@JsonKey(name: 'data') final  List<ExpenseModel>? expenses, @JsonKey(name: 'meta') this.meta}): _expenses = expenses;
  factory _ExpensesResModel.fromJson(Map<String, dynamic> json) => _$ExpensesResModelFromJson(json);

 final  List<ExpenseModel>? _expenses;
@override@JsonKey(name: 'data') List<ExpenseModel>? get expenses {
  final value = _expenses;
  if (value == null) return null;
  if (_expenses is EqualUnmodifiableListView) return _expenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'meta') final  MetaModel? meta;

/// Create a copy of ExpensesResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensesResModelCopyWith<_ExpensesResModel> get copyWith => __$ExpensesResModelCopyWithImpl<_ExpensesResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpensesResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensesResModel&&const DeepCollectionEquality().equals(other._expenses, _expenses)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_expenses),meta);

@override
String toString() {
  return 'ExpensesResModel(expenses: $expenses, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ExpensesResModelCopyWith<$Res> implements $ExpensesResModelCopyWith<$Res> {
  factory _$ExpensesResModelCopyWith(_ExpensesResModel value, $Res Function(_ExpensesResModel) _then) = __$ExpensesResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<ExpenseModel>? expenses,@JsonKey(name: 'meta') MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ExpensesResModelCopyWithImpl<$Res>
    implements _$ExpensesResModelCopyWith<$Res> {
  __$ExpensesResModelCopyWithImpl(this._self, this._then);

  final _ExpensesResModel _self;
  final $Res Function(_ExpensesResModel) _then;

/// Create a copy of ExpensesResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expenses = freezed,Object? meta = freezed,}) {
  return _then(_ExpensesResModel(
expenses: freezed == expenses ? _self._expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of ExpensesResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ExpenseModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'currency') String? get currency;@JsonKey(name: 'notes') String? get notes;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'receipt_path') String? get receiptPath;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'admin_notes') String? get adminNotes;@JsonKey(name: 'reviewed_at') String? get reviewedAt;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'expense_type') ExpenseTypeModel? get expenseType;
/// Create a copy of ExpenseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseModelCopyWith<ExpenseModel> get copyWith => _$ExpenseModelCopyWithImpl<ExpenseModel>(this as ExpenseModel, _$identity);

  /// Serializes this ExpenseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.description, description) || other.description == description)&&(identical(other.receiptPath, receiptPath) || other.receiptPath == receiptPath)&&(identical(other.status, status) || other.status == status)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.expenseType, expenseType) || other.expenseType == expenseType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,currency,notes,description,receiptPath,status,adminNotes,reviewedAt,createdAt,updatedAt,expenseType);

@override
String toString() {
  return 'ExpenseModel(id: $id, amount: $amount, currency: $currency, notes: $notes, description: $description, receiptPath: $receiptPath, status: $status, adminNotes: $adminNotes, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, expenseType: $expenseType)';
}


}

/// @nodoc
abstract mixin class $ExpenseModelCopyWith<$Res>  {
  factory $ExpenseModelCopyWith(ExpenseModel value, $Res Function(ExpenseModel) _then) = _$ExpenseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'notes') String? notes,@JsonKey(name: 'description') String? description,@JsonKey(name: 'receipt_path') String? receiptPath,@JsonKey(name: 'status') String? status,@JsonKey(name: 'admin_notes') String? adminNotes,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'expense_type') ExpenseTypeModel? expenseType
});


$ExpenseTypeModelCopyWith<$Res>? get expenseType;

}
/// @nodoc
class _$ExpenseModelCopyWithImpl<$Res>
    implements $ExpenseModelCopyWith<$Res> {
  _$ExpenseModelCopyWithImpl(this._self, this._then);

  final ExpenseModel _self;
  final $Res Function(ExpenseModel) _then;

/// Create a copy of ExpenseModel
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
as ExpenseTypeModel?,
  ));
}
/// Create a copy of ExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseTypeModelCopyWith<$Res>? get expenseType {
    if (_self.expenseType == null) {
    return null;
  }

  return $ExpenseTypeModelCopyWith<$Res>(_self.expenseType!, (value) {
    return _then(_self.copyWith(expenseType: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExpenseModel].
extension ExpenseModelPatterns on ExpenseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseModel value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'receipt_path')  String? receiptPath, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'expense_type')  ExpenseTypeModel? expenseType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'receipt_path')  String? receiptPath, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'expense_type')  ExpenseTypeModel? expenseType)  $default,) {final _that = this;
switch (_that) {
case _ExpenseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'notes')  String? notes, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'receipt_path')  String? receiptPath, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'expense_type')  ExpenseTypeModel? expenseType)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseModel() when $default != null:
return $default(_that.id,_that.amount,_that.currency,_that.notes,_that.description,_that.receiptPath,_that.status,_that.adminNotes,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.expenseType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpenseModel implements ExpenseModel {
  const _ExpenseModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'currency') this.currency, @JsonKey(name: 'notes') this.notes, @JsonKey(name: 'description') this.description, @JsonKey(name: 'receipt_path') this.receiptPath, @JsonKey(name: 'status') this.status, @JsonKey(name: 'admin_notes') this.adminNotes, @JsonKey(name: 'reviewed_at') this.reviewedAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'expense_type') this.expenseType});
  factory _ExpenseModel.fromJson(Map<String, dynamic> json) => _$ExpenseModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'currency') final  String? currency;
@override@JsonKey(name: 'notes') final  String? notes;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'receipt_path') final  String? receiptPath;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'admin_notes') final  String? adminNotes;
@override@JsonKey(name: 'reviewed_at') final  String? reviewedAt;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'expense_type') final  ExpenseTypeModel? expenseType;

/// Create a copy of ExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseModelCopyWith<_ExpenseModel> get copyWith => __$ExpenseModelCopyWithImpl<_ExpenseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.description, description) || other.description == description)&&(identical(other.receiptPath, receiptPath) || other.receiptPath == receiptPath)&&(identical(other.status, status) || other.status == status)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.expenseType, expenseType) || other.expenseType == expenseType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,currency,notes,description,receiptPath,status,adminNotes,reviewedAt,createdAt,updatedAt,expenseType);

@override
String toString() {
  return 'ExpenseModel(id: $id, amount: $amount, currency: $currency, notes: $notes, description: $description, receiptPath: $receiptPath, status: $status, adminNotes: $adminNotes, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, expenseType: $expenseType)';
}


}

/// @nodoc
abstract mixin class _$ExpenseModelCopyWith<$Res> implements $ExpenseModelCopyWith<$Res> {
  factory _$ExpenseModelCopyWith(_ExpenseModel value, $Res Function(_ExpenseModel) _then) = __$ExpenseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'notes') String? notes,@JsonKey(name: 'description') String? description,@JsonKey(name: 'receipt_path') String? receiptPath,@JsonKey(name: 'status') String? status,@JsonKey(name: 'admin_notes') String? adminNotes,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'expense_type') ExpenseTypeModel? expenseType
});


@override $ExpenseTypeModelCopyWith<$Res>? get expenseType;

}
/// @nodoc
class __$ExpenseModelCopyWithImpl<$Res>
    implements _$ExpenseModelCopyWith<$Res> {
  __$ExpenseModelCopyWithImpl(this._self, this._then);

  final _ExpenseModel _self;
  final $Res Function(_ExpenseModel) _then;

/// Create a copy of ExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = freezed,Object? currency = freezed,Object? notes = freezed,Object? description = freezed,Object? receiptPath = freezed,Object? status = freezed,Object? adminNotes = freezed,Object? reviewedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? expenseType = freezed,}) {
  return _then(_ExpenseModel(
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
as ExpenseTypeModel?,
  ));
}

/// Create a copy of ExpenseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseTypeModelCopyWith<$Res>? get expenseType {
    if (_self.expenseType == null) {
    return null;
  }

  return $ExpenseTypeModelCopyWith<$Res>(_self.expenseType!, (value) {
    return _then(_self.copyWith(expenseType: value));
  });
}
}


/// @nodoc
mixin _$ExpenseTypeModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;
/// Create a copy of ExpenseTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseTypeModelCopyWith<ExpenseTypeModel> get copyWith => _$ExpenseTypeModelCopyWithImpl<ExpenseTypeModel>(this as ExpenseTypeModel, _$identity);

  /// Serializes this ExpenseTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ExpenseTypeModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ExpenseTypeModelCopyWith<$Res>  {
  factory $ExpenseTypeModelCopyWith(ExpenseTypeModel value, $Res Function(ExpenseTypeModel) _then) = _$ExpenseTypeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class _$ExpenseTypeModelCopyWithImpl<$Res>
    implements $ExpenseTypeModelCopyWith<$Res> {
  _$ExpenseTypeModelCopyWithImpl(this._self, this._then);

  final ExpenseTypeModel _self;
  final $Res Function(ExpenseTypeModel) _then;

/// Create a copy of ExpenseTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpenseTypeModel].
extension ExpenseTypeModelPatterns on ExpenseTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseTypeModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)  $default,) {final _that = this;
switch (_that) {
case _ExpenseTypeModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseTypeModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpenseTypeModel implements ExpenseTypeModel {
  const _ExpenseTypeModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});
  factory _ExpenseTypeModel.fromJson(Map<String, dynamic> json) => _$ExpenseTypeModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;

/// Create a copy of ExpenseTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseTypeModelCopyWith<_ExpenseTypeModel> get copyWith => __$ExpenseTypeModelCopyWithImpl<_ExpenseTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ExpenseTypeModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ExpenseTypeModelCopyWith<$Res> implements $ExpenseTypeModelCopyWith<$Res> {
  factory _$ExpenseTypeModelCopyWith(_ExpenseTypeModel value, $Res Function(_ExpenseTypeModel) _then) = __$ExpenseTypeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name
});




}
/// @nodoc
class __$ExpenseTypeModelCopyWithImpl<$Res>
    implements _$ExpenseTypeModelCopyWith<$Res> {
  __$ExpenseTypeModelCopyWithImpl(this._self, this._then);

  final _ExpenseTypeModel _self;
  final $Res Function(_ExpenseTypeModel) _then;

/// Create a copy of ExpenseTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ExpenseTypeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
