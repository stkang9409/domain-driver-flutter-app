// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PushNotification {
  Uuid get id;
  Uuid get userId;
  String get title;
  String get body;
  NotificationType get type;
  NotificationPriority get priority;
  Map<String, dynamic> get data;
  DateTime get scheduledAt;
  DateTime? get sentAt;
  DateTime? get readAt;
  NotificationStatus get status;

  /// Create a copy of PushNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PushNotificationCopyWith<PushNotification> get copyWith =>
      _$PushNotificationCopyWithImpl<PushNotification>(
          this as PushNotification, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PushNotification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      title,
      body,
      type,
      priority,
      const DeepCollectionEquality().hash(data),
      scheduledAt,
      sentAt,
      readAt,
      status);

  @override
  String toString() {
    return 'PushNotification(id: $id, userId: $userId, title: $title, body: $body, type: $type, priority: $priority, data: $data, scheduledAt: $scheduledAt, sentAt: $sentAt, readAt: $readAt, status: $status)';
  }
}

/// @nodoc
abstract mixin class $PushNotificationCopyWith<$Res> {
  factory $PushNotificationCopyWith(
          PushNotification value, $Res Function(PushNotification) _then) =
      _$PushNotificationCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Uuid userId,
      String title,
      String body,
      NotificationType type,
      NotificationPriority priority,
      Map<String, dynamic> data,
      DateTime scheduledAt,
      DateTime? sentAt,
      DateTime? readAt,
      NotificationStatus status});
}

/// @nodoc
class _$PushNotificationCopyWithImpl<$Res>
    implements $PushNotificationCopyWith<$Res> {
  _$PushNotificationCopyWithImpl(this._self, this._then);

  final PushNotification _self;
  final $Res Function(PushNotification) _then;

  /// Create a copy of PushNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? priority = null,
    Object? data = null,
    Object? scheduledAt = null,
    Object? sentAt = freezed,
    Object? readAt = freezed,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      scheduledAt: null == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _self.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
    ));
  }
}

/// Adds pattern-matching-related methods to [PushNotification].
extension PushNotificationPatterns on PushNotification {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PushNotification value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PushNotification() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PushNotification value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushNotification():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PushNotification value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushNotification() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Uuid id,
            Uuid userId,
            String title,
            String body,
            NotificationType type,
            NotificationPriority priority,
            Map<String, dynamic> data,
            DateTime scheduledAt,
            DateTime? sentAt,
            DateTime? readAt,
            NotificationStatus status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PushNotification() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.title,
            _that.body,
            _that.type,
            _that.priority,
            _that.data,
            _that.scheduledAt,
            _that.sentAt,
            _that.readAt,
            _that.status);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Uuid id,
            Uuid userId,
            String title,
            String body,
            NotificationType type,
            NotificationPriority priority,
            Map<String, dynamic> data,
            DateTime scheduledAt,
            DateTime? sentAt,
            DateTime? readAt,
            NotificationStatus status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushNotification():
        return $default(
            _that.id,
            _that.userId,
            _that.title,
            _that.body,
            _that.type,
            _that.priority,
            _that.data,
            _that.scheduledAt,
            _that.sentAt,
            _that.readAt,
            _that.status);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Uuid id,
            Uuid userId,
            String title,
            String body,
            NotificationType type,
            NotificationPriority priority,
            Map<String, dynamic> data,
            DateTime scheduledAt,
            DateTime? sentAt,
            DateTime? readAt,
            NotificationStatus status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushNotification() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.title,
            _that.body,
            _that.type,
            _that.priority,
            _that.data,
            _that.scheduledAt,
            _that.sentAt,
            _that.readAt,
            _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PushNotification extends PushNotification {
  const _PushNotification(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body,
      required this.type,
      required this.priority,
      required final Map<String, dynamic> data,
      required this.scheduledAt,
      this.sentAt,
      this.readAt,
      required this.status})
      : _data = data,
        super._();

  @override
  final Uuid id;
  @override
  final Uuid userId;
  @override
  final String title;
  @override
  final String body;
  @override
  final NotificationType type;
  @override
  final NotificationPriority priority;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime scheduledAt;
  @override
  final DateTime? sentAt;
  @override
  final DateTime? readAt;
  @override
  final NotificationStatus status;

  /// Create a copy of PushNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PushNotificationCopyWith<_PushNotification> get copyWith =>
      __$PushNotificationCopyWithImpl<_PushNotification>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushNotification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      title,
      body,
      type,
      priority,
      const DeepCollectionEquality().hash(_data),
      scheduledAt,
      sentAt,
      readAt,
      status);

  @override
  String toString() {
    return 'PushNotification(id: $id, userId: $userId, title: $title, body: $body, type: $type, priority: $priority, data: $data, scheduledAt: $scheduledAt, sentAt: $sentAt, readAt: $readAt, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$PushNotificationCopyWith<$Res>
    implements $PushNotificationCopyWith<$Res> {
  factory _$PushNotificationCopyWith(
          _PushNotification value, $Res Function(_PushNotification) _then) =
      __$PushNotificationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Uuid userId,
      String title,
      String body,
      NotificationType type,
      NotificationPriority priority,
      Map<String, dynamic> data,
      DateTime scheduledAt,
      DateTime? sentAt,
      DateTime? readAt,
      NotificationStatus status});
}

/// @nodoc
class __$PushNotificationCopyWithImpl<$Res>
    implements _$PushNotificationCopyWith<$Res> {
  __$PushNotificationCopyWithImpl(this._self, this._then);

  final _PushNotification _self;
  final $Res Function(_PushNotification) _then;

  /// Create a copy of PushNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? priority = null,
    Object? data = null,
    Object? scheduledAt = null,
    Object? sentAt = freezed,
    Object? readAt = freezed,
    Object? status = null,
  }) {
    return _then(_PushNotification(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as NotificationPriority,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      scheduledAt: null == scheduledAt
          ? _self.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _self.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
    ));
  }
}

// dart format on
