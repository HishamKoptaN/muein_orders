// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'docs_count') int? get docsCount;@JsonKey(name: 'sub_category') SubCategoryModel? get subCategory;@JsonKey(name: 'doc') DocModel? get doc;
/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatModelCopyWith<StatModel> get copyWith => _$StatModelCopyWithImpl<StatModel>(this as StatModel, _$identity);

  /// Serializes this StatModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StatModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('docsCount', docsCount))..add(DiagnosticsProperty('subCategory', subCategory))..add(DiagnosticsProperty('doc', doc));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.docsCount, docsCount) || other.docsCount == docsCount)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.doc, doc) || other.doc == doc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,docsCount,subCategory,doc);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StatModel(id: $id, docsCount: $docsCount, subCategory: $subCategory, doc: $doc)';
}


}

/// @nodoc
abstract mixin class $StatModelCopyWith<$Res>  {
  factory $StatModelCopyWith(StatModel value, $Res Function(StatModel) _then) = _$StatModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'docs_count') int? docsCount,@JsonKey(name: 'sub_category') SubCategoryModel? subCategory,@JsonKey(name: 'doc') DocModel? doc
});


$SubCategoryModelCopyWith<$Res>? get subCategory;$DocModelCopyWith<$Res>? get doc;

}
/// @nodoc
class _$StatModelCopyWithImpl<$Res>
    implements $StatModelCopyWith<$Res> {
  _$StatModelCopyWithImpl(this._self, this._then);

  final StatModel _self;
  final $Res Function(StatModel) _then;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? docsCount = freezed,Object? subCategory = freezed,Object? doc = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,docsCount: freezed == docsCount ? _self.docsCount : docsCount // ignore: cast_nullable_to_non_nullable
as int?,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryModel?,doc: freezed == doc ? _self.doc : doc // ignore: cast_nullable_to_non_nullable
as DocModel?,
  ));
}
/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryModelCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $SubCategoryModelCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocModelCopyWith<$Res>? get doc {
    if (_self.doc == null) {
    return null;
  }

  return $DocModelCopyWith<$Res>(_self.doc!, (value) {
    return _then(_self.copyWith(doc: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatModel].
extension StatModelPatterns on StatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatModel value)  $default,){
final _that = this;
switch (_that) {
case _StatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'docs_count')  int? docsCount, @JsonKey(name: 'sub_category')  SubCategoryModel? subCategory, @JsonKey(name: 'doc')  DocModel? doc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatModel() when $default != null:
return $default(_that.id,_that.docsCount,_that.subCategory,_that.doc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'docs_count')  int? docsCount, @JsonKey(name: 'sub_category')  SubCategoryModel? subCategory, @JsonKey(name: 'doc')  DocModel? doc)  $default,) {final _that = this;
switch (_that) {
case _StatModel():
return $default(_that.id,_that.docsCount,_that.subCategory,_that.doc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'docs_count')  int? docsCount, @JsonKey(name: 'sub_category')  SubCategoryModel? subCategory, @JsonKey(name: 'doc')  DocModel? doc)?  $default,) {final _that = this;
switch (_that) {
case _StatModel() when $default != null:
return $default(_that.id,_that.docsCount,_that.subCategory,_that.doc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatModel with DiagnosticableTreeMixin implements StatModel {
  const _StatModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'docs_count') this.docsCount, @JsonKey(name: 'sub_category') this.subCategory, @JsonKey(name: 'doc') this.doc});
  factory _StatModel.fromJson(Map<String, dynamic> json) => _$StatModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'docs_count') final  int? docsCount;
@override@JsonKey(name: 'sub_category') final  SubCategoryModel? subCategory;
@override@JsonKey(name: 'doc') final  DocModel? doc;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatModelCopyWith<_StatModel> get copyWith => __$StatModelCopyWithImpl<_StatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StatModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('docsCount', docsCount))..add(DiagnosticsProperty('subCategory', subCategory))..add(DiagnosticsProperty('doc', doc));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.docsCount, docsCount) || other.docsCount == docsCount)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.doc, doc) || other.doc == doc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,docsCount,subCategory,doc);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StatModel(id: $id, docsCount: $docsCount, subCategory: $subCategory, doc: $doc)';
}


}

/// @nodoc
abstract mixin class _$StatModelCopyWith<$Res> implements $StatModelCopyWith<$Res> {
  factory _$StatModelCopyWith(_StatModel value, $Res Function(_StatModel) _then) = __$StatModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'docs_count') int? docsCount,@JsonKey(name: 'sub_category') SubCategoryModel? subCategory,@JsonKey(name: 'doc') DocModel? doc
});


@override $SubCategoryModelCopyWith<$Res>? get subCategory;@override $DocModelCopyWith<$Res>? get doc;

}
/// @nodoc
class __$StatModelCopyWithImpl<$Res>
    implements _$StatModelCopyWith<$Res> {
  __$StatModelCopyWithImpl(this._self, this._then);

  final _StatModel _self;
  final $Res Function(_StatModel) _then;

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? docsCount = freezed,Object? subCategory = freezed,Object? doc = freezed,}) {
  return _then(_StatModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,docsCount: freezed == docsCount ? _self.docsCount : docsCount // ignore: cast_nullable_to_non_nullable
as int?,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryModel?,doc: freezed == doc ? _self.doc : doc // ignore: cast_nullable_to_non_nullable
as DocModel?,
  ));
}

/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryModelCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $SubCategoryModelCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of StatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocModelCopyWith<$Res>? get doc {
    if (_self.doc == null) {
    return null;
  }

  return $DocModelCopyWith<$Res>(_self.doc!, (value) {
    return _then(_self.copyWith(doc: value));
  });
}
}


/// @nodoc
mixin _$SubCategoryModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'image') String? get image;
/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryModelCopyWith<SubCategoryModel> get copyWith => _$SubCategoryModelCopyWithImpl<SubCategoryModel>(this as SubCategoryModel, _$identity);

  /// Serializes this SubCategoryModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SubCategoryModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SubCategoryModel(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $SubCategoryModelCopyWith<$Res>  {
  factory $SubCategoryModelCopyWith(SubCategoryModel value, $Res Function(SubCategoryModel) _then) = _$SubCategoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._self, this._then);

  final SubCategoryModel _self;
  final $Res Function(SubCategoryModel) _then;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryModel].
extension SubCategoryModelPatterns on SubCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryModel():
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'image')  String? image)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubCategoryModel with DiagnosticableTreeMixin implements SubCategoryModel {
  const _SubCategoryModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'image') this.image});
  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) => _$SubCategoryModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'image') final  String? image;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith => __$SubCategoryModelCopyWithImpl<_SubCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubCategoryModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SubCategoryModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SubCategoryModel(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryModelCopyWith<$Res> implements $SubCategoryModelCopyWith<$Res> {
  factory _$SubCategoryModelCopyWith(_SubCategoryModel value, $Res Function(_SubCategoryModel) _then) = __$SubCategoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'image') String? image
});




}
/// @nodoc
class __$SubCategoryModelCopyWithImpl<$Res>
    implements _$SubCategoryModelCopyWith<$Res> {
  __$SubCategoryModelCopyWithImpl(this._self, this._then);

  final _SubCategoryModel _self;
  final $Res Function(_SubCategoryModel) _then;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_SubCategoryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
