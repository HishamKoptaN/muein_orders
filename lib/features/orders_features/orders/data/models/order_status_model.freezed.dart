// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderStatusModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "type") String? get type;@JsonKey(name: "slug") String? get slug;@JsonKey(name: "sort") int? get sort;@JsonKey(name: "message") String? get message;@JsonKey(name: "icon") String? get icon;@JsonKey(name: "is_active") bool? get isActive;@JsonKey(name: "translations") Translations? get translations;@JsonKey(name: "original") Original? get original;@JsonKey(name: "parent") Original? get parent;@JsonKey(name: 'color') String? get color;
/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusModelCopyWith<OrderStatusModel> get copyWith => _$OrderStatusModelCopyWithImpl<OrderStatusModel>(this as OrderStatusModel, _$identity);

  /// Serializes this OrderStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.message, message) || other.message == message)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.translations, translations) || other.translations == translations)&&(identical(other.original, original) || other.original == original)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,slug,sort,message,icon,isActive,translations,original,parent,color);

@override
String toString() {
  return 'OrderStatusModel(id: $id, name: $name, type: $type, slug: $slug, sort: $sort, message: $message, icon: $icon, isActive: $isActive, translations: $translations, original: $original, parent: $parent, color: $color)';
}


}

/// @nodoc
abstract mixin class $OrderStatusModelCopyWith<$Res>  {
  factory $OrderStatusModelCopyWith(OrderStatusModel value, $Res Function(OrderStatusModel) _then) = _$OrderStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "type") String? type,@JsonKey(name: "slug") String? slug,@JsonKey(name: "sort") int? sort,@JsonKey(name: "message") String? message,@JsonKey(name: "icon") String? icon,@JsonKey(name: "is_active") bool? isActive,@JsonKey(name: "translations") Translations? translations,@JsonKey(name: "original") Original? original,@JsonKey(name: "parent") Original? parent,@JsonKey(name: 'color') String? color
});


$TranslationsCopyWith<$Res>? get translations;$OriginalCopyWith<$Res>? get original;$OriginalCopyWith<$Res>? get parent;

}
/// @nodoc
class _$OrderStatusModelCopyWithImpl<$Res>
    implements $OrderStatusModelCopyWith<$Res> {
  _$OrderStatusModelCopyWithImpl(this._self, this._then);

  final OrderStatusModel _self;
  final $Res Function(OrderStatusModel) _then;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? sort = freezed,Object? message = freezed,Object? icon = freezed,Object? isActive = freezed,Object? translations = freezed,Object? original = freezed,Object? parent = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as Translations?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as Original?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Original?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TranslationsCopyWith<$Res>? get translations {
    if (_self.translations == null) {
    return null;
  }

  return $TranslationsCopyWith<$Res>(_self.translations!, (value) {
    return _then(_self.copyWith(translations: value));
  });
}/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $OriginalCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $OriginalCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderStatusModel].
extension OrderStatusModelPatterns on OrderStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "type")  String? type, @JsonKey(name: "slug")  String? slug, @JsonKey(name: "sort")  int? sort, @JsonKey(name: "message")  String? message, @JsonKey(name: "icon")  String? icon, @JsonKey(name: "is_active")  bool? isActive, @JsonKey(name: "translations")  Translations? translations, @JsonKey(name: "original")  Original? original, @JsonKey(name: "parent")  Original? parent, @JsonKey(name: 'color')  String? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.translations,_that.original,_that.parent,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "type")  String? type, @JsonKey(name: "slug")  String? slug, @JsonKey(name: "sort")  int? sort, @JsonKey(name: "message")  String? message, @JsonKey(name: "icon")  String? icon, @JsonKey(name: "is_active")  bool? isActive, @JsonKey(name: "translations")  Translations? translations, @JsonKey(name: "original")  Original? original, @JsonKey(name: "parent")  Original? parent, @JsonKey(name: 'color')  String? color)  $default,) {final _that = this;
switch (_that) {
case _OrderStatusModel():
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.translations,_that.original,_that.parent,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "type")  String? type, @JsonKey(name: "slug")  String? slug, @JsonKey(name: "sort")  int? sort, @JsonKey(name: "message")  String? message, @JsonKey(name: "icon")  String? icon, @JsonKey(name: "is_active")  bool? isActive, @JsonKey(name: "translations")  Translations? translations, @JsonKey(name: "original")  Original? original, @JsonKey(name: "parent")  Original? parent, @JsonKey(name: 'color')  String? color)?  $default,) {final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.translations,_that.original,_that.parent,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderStatusModel implements OrderStatusModel {
  const _OrderStatusModel({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "type") this.type, @JsonKey(name: "slug") this.slug, @JsonKey(name: "sort") this.sort, @JsonKey(name: "message") this.message, @JsonKey(name: "icon") this.icon, @JsonKey(name: "is_active") this.isActive, @JsonKey(name: "translations") this.translations, @JsonKey(name: "original") this.original, @JsonKey(name: "parent") this.parent, @JsonKey(name: 'color') this.color});
  factory _OrderStatusModel.fromJson(Map<String, dynamic> json) => _$OrderStatusModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "slug") final  String? slug;
@override@JsonKey(name: "sort") final  int? sort;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "icon") final  String? icon;
@override@JsonKey(name: "is_active") final  bool? isActive;
@override@JsonKey(name: "translations") final  Translations? translations;
@override@JsonKey(name: "original") final  Original? original;
@override@JsonKey(name: "parent") final  Original? parent;
@override@JsonKey(name: 'color') final  String? color;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusModelCopyWith<_OrderStatusModel> get copyWith => __$OrderStatusModelCopyWithImpl<_OrderStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.message, message) || other.message == message)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.translations, translations) || other.translations == translations)&&(identical(other.original, original) || other.original == original)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,slug,sort,message,icon,isActive,translations,original,parent,color);

@override
String toString() {
  return 'OrderStatusModel(id: $id, name: $name, type: $type, slug: $slug, sort: $sort, message: $message, icon: $icon, isActive: $isActive, translations: $translations, original: $original, parent: $parent, color: $color)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusModelCopyWith<$Res> implements $OrderStatusModelCopyWith<$Res> {
  factory _$OrderStatusModelCopyWith(_OrderStatusModel value, $Res Function(_OrderStatusModel) _then) = __$OrderStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "type") String? type,@JsonKey(name: "slug") String? slug,@JsonKey(name: "sort") int? sort,@JsonKey(name: "message") String? message,@JsonKey(name: "icon") String? icon,@JsonKey(name: "is_active") bool? isActive,@JsonKey(name: "translations") Translations? translations,@JsonKey(name: "original") Original? original,@JsonKey(name: "parent") Original? parent,@JsonKey(name: 'color') String? color
});


@override $TranslationsCopyWith<$Res>? get translations;@override $OriginalCopyWith<$Res>? get original;@override $OriginalCopyWith<$Res>? get parent;

}
/// @nodoc
class __$OrderStatusModelCopyWithImpl<$Res>
    implements _$OrderStatusModelCopyWith<$Res> {
  __$OrderStatusModelCopyWithImpl(this._self, this._then);

  final _OrderStatusModel _self;
  final $Res Function(_OrderStatusModel) _then;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? sort = freezed,Object? message = freezed,Object? icon = freezed,Object? isActive = freezed,Object? translations = freezed,Object? original = freezed,Object? parent = freezed,Object? color = freezed,}) {
  return _then(_OrderStatusModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as Translations?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as Original?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Original?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TranslationsCopyWith<$Res>? get translations {
    if (_self.translations == null) {
    return null;
  }

  return $TranslationsCopyWith<$Res>(_self.translations!, (value) {
    return _then(_self.copyWith(translations: value));
  });
}/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $OriginalCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $OriginalCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$Original {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;
/// Create a copy of Original
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OriginalCopyWith<Original> get copyWith => _$OriginalCopyWithImpl<Original>(this as Original, _$identity);

  /// Serializes this Original to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Original&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Original(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $OriginalCopyWith<$Res>  {
  factory $OriginalCopyWith(Original value, $Res Function(Original) _then) = _$OriginalCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class _$OriginalCopyWithImpl<$Res>
    implements $OriginalCopyWith<$Res> {
  _$OriginalCopyWithImpl(this._self, this._then);

  final Original _self;
  final $Res Function(Original) _then;

/// Create a copy of Original
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Original].
extension OriginalPatterns on Original {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Original value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Original() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Original value)  $default,){
final _that = this;
switch (_that) {
case _Original():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Original value)?  $default,){
final _that = this;
switch (_that) {
case _Original() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Original() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)  $default,) {final _that = this;
switch (_that) {
case _Original():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Original() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Original implements Original {
  const _Original({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});
  factory _Original.fromJson(Map<String, dynamic> json) => _$OriginalFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;

/// Create a copy of Original
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OriginalCopyWith<_Original> get copyWith => __$OriginalCopyWithImpl<_Original>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OriginalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Original&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Original(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$OriginalCopyWith<$Res> implements $OriginalCopyWith<$Res> {
  factory _$OriginalCopyWith(_Original value, $Res Function(_Original) _then) = __$OriginalCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class __$OriginalCopyWithImpl<$Res>
    implements _$OriginalCopyWith<$Res> {
  __$OriginalCopyWithImpl(this._self, this._then);

  final _Original _self;
  final $Res Function(_Original) _then;

/// Create a copy of Original
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Original(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Translations {

@JsonKey(name: "ar") Ar? get ar;
/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationsCopyWith<Translations> get copyWith => _$TranslationsCopyWithImpl<Translations>(this as Translations, _$identity);

  /// Serializes this Translations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Translations&&(identical(other.ar, ar) || other.ar == ar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ar);

@override
String toString() {
  return 'Translations(ar: $ar)';
}


}

/// @nodoc
abstract mixin class $TranslationsCopyWith<$Res>  {
  factory $TranslationsCopyWith(Translations value, $Res Function(Translations) _then) = _$TranslationsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "ar") Ar? ar
});


$ArCopyWith<$Res>? get ar;

}
/// @nodoc
class _$TranslationsCopyWithImpl<$Res>
    implements $TranslationsCopyWith<$Res> {
  _$TranslationsCopyWithImpl(this._self, this._then);

  final Translations _self;
  final $Res Function(Translations) _then;

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ar = freezed,}) {
  return _then(_self.copyWith(
ar: freezed == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as Ar?,
  ));
}
/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArCopyWith<$Res>? get ar {
    if (_self.ar == null) {
    return null;
  }

  return $ArCopyWith<$Res>(_self.ar!, (value) {
    return _then(_self.copyWith(ar: value));
  });
}
}


/// Adds pattern-matching-related methods to [Translations].
extension TranslationsPatterns on Translations {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Translations value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Translations() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Translations value)  $default,){
final _that = this;
switch (_that) {
case _Translations():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Translations value)?  $default,){
final _that = this;
switch (_that) {
case _Translations() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "ar")  Ar? ar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Translations() when $default != null:
return $default(_that.ar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "ar")  Ar? ar)  $default,) {final _that = this;
switch (_that) {
case _Translations():
return $default(_that.ar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "ar")  Ar? ar)?  $default,) {final _that = this;
switch (_that) {
case _Translations() when $default != null:
return $default(_that.ar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Translations implements Translations {
  const _Translations({@JsonKey(name: "ar") this.ar});
  factory _Translations.fromJson(Map<String, dynamic> json) => _$TranslationsFromJson(json);

@override@JsonKey(name: "ar") final  Ar? ar;

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationsCopyWith<_Translations> get copyWith => __$TranslationsCopyWithImpl<_Translations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Translations&&(identical(other.ar, ar) || other.ar == ar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ar);

@override
String toString() {
  return 'Translations(ar: $ar)';
}


}

/// @nodoc
abstract mixin class _$TranslationsCopyWith<$Res> implements $TranslationsCopyWith<$Res> {
  factory _$TranslationsCopyWith(_Translations value, $Res Function(_Translations) _then) = __$TranslationsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "ar") Ar? ar
});


@override $ArCopyWith<$Res>? get ar;

}
/// @nodoc
class __$TranslationsCopyWithImpl<$Res>
    implements _$TranslationsCopyWith<$Res> {
  __$TranslationsCopyWithImpl(this._self, this._then);

  final _Translations _self;
  final $Res Function(_Translations) _then;

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ar = freezed,}) {
  return _then(_Translations(
ar: freezed == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as Ar?,
  ));
}

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArCopyWith<$Res>? get ar {
    if (_self.ar == null) {
    return null;
  }

  return $ArCopyWith<$Res>(_self.ar!, (value) {
    return _then(_self.copyWith(ar: value));
  });
}
}


/// @nodoc
mixin _$Ar {

@JsonKey(name: "name") String? get name;@JsonKey(name: "message") String? get message;
/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArCopyWith<Ar> get copyWith => _$ArCopyWithImpl<Ar>(this as Ar, _$identity);

  /// Serializes this Ar to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ar&&(identical(other.name, name) || other.name == name)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,message);

@override
String toString() {
  return 'Ar(name: $name, message: $message)';
}


}

/// @nodoc
abstract mixin class $ArCopyWith<$Res>  {
  factory $ArCopyWith(Ar value, $Res Function(Ar) _then) = _$ArCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "message") String? message
});




}
/// @nodoc
class _$ArCopyWithImpl<$Res>
    implements $ArCopyWith<$Res> {
  _$ArCopyWithImpl(this._self, this._then);

  final Ar _self;
  final $Res Function(Ar) _then;

/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Ar].
extension ArPatterns on Ar {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ar value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ar() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ar value)  $default,){
final _that = this;
switch (_that) {
case _Ar():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ar value)?  $default,){
final _that = this;
switch (_that) {
case _Ar() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "message")  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ar() when $default != null:
return $default(_that.name,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "message")  String? message)  $default,) {final _that = this;
switch (_that) {
case _Ar():
return $default(_that.name,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "message")  String? message)?  $default,) {final _that = this;
switch (_that) {
case _Ar() when $default != null:
return $default(_that.name,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ar implements Ar {
  const _Ar({@JsonKey(name: "name") this.name, @JsonKey(name: "message") this.message});
  factory _Ar.fromJson(Map<String, dynamic> json) => _$ArFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "message") final  String? message;

/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArCopyWith<_Ar> get copyWith => __$ArCopyWithImpl<_Ar>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ar&&(identical(other.name, name) || other.name == name)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,message);

@override
String toString() {
  return 'Ar(name: $name, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ArCopyWith<$Res> implements $ArCopyWith<$Res> {
  factory _$ArCopyWith(_Ar value, $Res Function(_Ar) _then) = __$ArCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "message") String? message
});




}
/// @nodoc
class __$ArCopyWithImpl<$Res>
    implements _$ArCopyWith<$Res> {
  __$ArCopyWithImpl(this._self, this._then);

  final _Ar _self;
  final $Res Function(_Ar) _then;

/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? message = freezed,}) {
  return _then(_Ar(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
