// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationsEvent()';
}


}

/// @nodoc
class $NotificationsEventCopyWith<$Res>  {
$NotificationsEventCopyWith(NotificationsEvent _, $Res Function(NotificationsEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationsEvent].
extension NotificationsEventPatterns on NotificationsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetNotifications value)?  getNotifications,TResult Function( _MarkAsRead value)?  markAsRead,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that);case _MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetNotifications value)  getNotifications,required TResult Function( _MarkAsRead value)  markAsRead,}){
final _that = this;
switch (_that) {
case _GetNotifications():
return getNotifications(_that);case _MarkAsRead():
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetNotifications value)?  getNotifications,TResult? Function( _MarkAsRead value)?  markAsRead,}){
final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that);case _MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool getMore)?  getNotifications,TResult Function( String id)?  markAsRead,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that.getMore);case _MarkAsRead() when markAsRead != null:
return markAsRead(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool getMore)  getNotifications,required TResult Function( String id)  markAsRead,}) {final _that = this;
switch (_that) {
case _GetNotifications():
return getNotifications(_that.getMore);case _MarkAsRead():
return markAsRead(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool getMore)?  getNotifications,TResult? Function( String id)?  markAsRead,}) {final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that.getMore);case _MarkAsRead() when markAsRead != null:
return markAsRead(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetNotifications implements NotificationsEvent {
  const _GetNotifications({this.getMore = false});
  

@JsonKey() final  bool getMore;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetNotificationsCopyWith<_GetNotifications> get copyWith => __$GetNotificationsCopyWithImpl<_GetNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetNotifications&&(identical(other.getMore, getMore) || other.getMore == getMore));
}


@override
int get hashCode => Object.hash(runtimeType,getMore);

@override
String toString() {
  return 'NotificationsEvent.getNotifications(getMore: $getMore)';
}


}

/// @nodoc
abstract mixin class _$GetNotificationsCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory _$GetNotificationsCopyWith(_GetNotifications value, $Res Function(_GetNotifications) _then) = __$GetNotificationsCopyWithImpl;
@useResult
$Res call({
 bool getMore
});




}
/// @nodoc
class __$GetNotificationsCopyWithImpl<$Res>
    implements _$GetNotificationsCopyWith<$Res> {
  __$GetNotificationsCopyWithImpl(this._self, this._then);

  final _GetNotifications _self;
  final $Res Function(_GetNotifications) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getMore = null,}) {
  return _then(_GetNotifications(
getMore: null == getMore ? _self.getMore : getMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _MarkAsRead implements NotificationsEvent {
  const _MarkAsRead({required this.id});
  

 final  String id;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkAsReadCopyWith<_MarkAsRead> get copyWith => __$MarkAsReadCopyWithImpl<_MarkAsRead>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkAsRead&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'NotificationsEvent.markAsRead(id: $id)';
}


}

/// @nodoc
abstract mixin class _$MarkAsReadCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory _$MarkAsReadCopyWith(_MarkAsRead value, $Res Function(_MarkAsRead) _then) = __$MarkAsReadCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$MarkAsReadCopyWithImpl<$Res>
    implements _$MarkAsReadCopyWith<$Res> {
  __$MarkAsReadCopyWithImpl(this._self, this._then);

  final _MarkAsRead _self;
  final $Res Function(_MarkAsRead) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_MarkAsRead(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
