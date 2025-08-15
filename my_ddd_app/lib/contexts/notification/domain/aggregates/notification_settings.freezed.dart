// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSettings {
  Uuid get userId;
  bool get pushEnabled;
  bool get emailEnabled;
  bool get smsEnabled;
  Map<NotificationType, bool> get typePreferences;
  Map<String, dynamic> get metadata;
  String? get fcmToken;
  String? get apnsToken;
  DateTime get updatedAt;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      _$NotificationSettingsCopyWithImpl<NotificationSettings>(
          this as NotificationSettings, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSettings &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.smsEnabled, smsEnabled) ||
                other.smsEnabled == smsEnabled) &&
            const DeepCollectionEquality()
                .equals(other.typePreferences, typePreferences) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.apnsToken, apnsToken) ||
                other.apnsToken == apnsToken) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      pushEnabled,
      emailEnabled,
      smsEnabled,
      const DeepCollectionEquality().hash(typePreferences),
      const DeepCollectionEquality().hash(metadata),
      fcmToken,
      apnsToken,
      updatedAt);

  @override
  String toString() {
    return 'NotificationSettings(userId: $userId, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, smsEnabled: $smsEnabled, typePreferences: $typePreferences, metadata: $metadata, fcmToken: $fcmToken, apnsToken: $apnsToken, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(NotificationSettings value,
          $Res Function(NotificationSettings) _then) =
      _$NotificationSettingsCopyWithImpl;
  @useResult
  $Res call(
      {Uuid userId,
      bool pushEnabled,
      bool emailEnabled,
      bool smsEnabled,
      Map<NotificationType, bool> typePreferences,
      Map<String, dynamic> metadata,
      String? fcmToken,
      String? apnsToken,
      DateTime updatedAt});
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._self, this._then);

  final NotificationSettings _self;
  final $Res Function(NotificationSettings) _then;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? pushEnabled = null,
    Object? emailEnabled = null,
    Object? smsEnabled = null,
    Object? typePreferences = null,
    Object? metadata = null,
    Object? fcmToken = freezed,
    Object? apnsToken = freezed,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      pushEnabled: null == pushEnabled
          ? _self.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _self.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      smsEnabled: null == smsEnabled
          ? _self.smsEnabled
          : smsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      typePreferences: null == typePreferences
          ? _self.typePreferences
          : typePreferences // ignore: cast_nullable_to_non_nullable
              as Map<NotificationType, bool>,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      apnsToken: freezed == apnsToken
          ? _self.apnsToken
          : apnsToken // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationSettings].
extension NotificationSettingsPatterns on NotificationSettings {
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
    TResult Function(_NotificationSettings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSettings() when $default != null:
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
    TResult Function(_NotificationSettings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettings():
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
    TResult? Function(_NotificationSettings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettings() when $default != null:
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
            Uuid userId,
            bool pushEnabled,
            bool emailEnabled,
            bool smsEnabled,
            Map<NotificationType, bool> typePreferences,
            Map<String, dynamic> metadata,
            String? fcmToken,
            String? apnsToken,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSettings() when $default != null:
        return $default(
            _that.userId,
            _that.pushEnabled,
            _that.emailEnabled,
            _that.smsEnabled,
            _that.typePreferences,
            _that.metadata,
            _that.fcmToken,
            _that.apnsToken,
            _that.updatedAt);
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
            Uuid userId,
            bool pushEnabled,
            bool emailEnabled,
            bool smsEnabled,
            Map<NotificationType, bool> typePreferences,
            Map<String, dynamic> metadata,
            String? fcmToken,
            String? apnsToken,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettings():
        return $default(
            _that.userId,
            _that.pushEnabled,
            _that.emailEnabled,
            _that.smsEnabled,
            _that.typePreferences,
            _that.metadata,
            _that.fcmToken,
            _that.apnsToken,
            _that.updatedAt);
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
            Uuid userId,
            bool pushEnabled,
            bool emailEnabled,
            bool smsEnabled,
            Map<NotificationType, bool> typePreferences,
            Map<String, dynamic> metadata,
            String? fcmToken,
            String? apnsToken,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSettings() when $default != null:
        return $default(
            _that.userId,
            _that.pushEnabled,
            _that.emailEnabled,
            _that.smsEnabled,
            _that.typePreferences,
            _that.metadata,
            _that.fcmToken,
            _that.apnsToken,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotificationSettings extends NotificationSettings {
  const _NotificationSettings(
      {required this.userId,
      required this.pushEnabled,
      required this.emailEnabled,
      required this.smsEnabled,
      required final Map<NotificationType, bool> typePreferences,
      required final Map<String, dynamic> metadata,
      this.fcmToken,
      this.apnsToken,
      required this.updatedAt})
      : _typePreferences = typePreferences,
        _metadata = metadata,
        super._();

  @override
  final Uuid userId;
  @override
  final bool pushEnabled;
  @override
  final bool emailEnabled;
  @override
  final bool smsEnabled;
  final Map<NotificationType, bool> _typePreferences;
  @override
  Map<NotificationType, bool> get typePreferences {
    if (_typePreferences is EqualUnmodifiableMapView) return _typePreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_typePreferences);
  }

  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final String? fcmToken;
  @override
  final String? apnsToken;
  @override
  final DateTime updatedAt;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationSettingsCopyWith<_NotificationSettings> get copyWith =>
      __$NotificationSettingsCopyWithImpl<_NotificationSettings>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationSettings &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.smsEnabled, smsEnabled) ||
                other.smsEnabled == smsEnabled) &&
            const DeepCollectionEquality()
                .equals(other._typePreferences, _typePreferences) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.apnsToken, apnsToken) ||
                other.apnsToken == apnsToken) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      pushEnabled,
      emailEnabled,
      smsEnabled,
      const DeepCollectionEquality().hash(_typePreferences),
      const DeepCollectionEquality().hash(_metadata),
      fcmToken,
      apnsToken,
      updatedAt);

  @override
  String toString() {
    return 'NotificationSettings(userId: $userId, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, smsEnabled: $smsEnabled, typePreferences: $typePreferences, metadata: $metadata, fcmToken: $fcmToken, apnsToken: $apnsToken, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$NotificationSettingsCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$NotificationSettingsCopyWith(_NotificationSettings value,
          $Res Function(_NotificationSettings) _then) =
      __$NotificationSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid userId,
      bool pushEnabled,
      bool emailEnabled,
      bool smsEnabled,
      Map<NotificationType, bool> typePreferences,
      Map<String, dynamic> metadata,
      String? fcmToken,
      String? apnsToken,
      DateTime updatedAt});
}

/// @nodoc
class __$NotificationSettingsCopyWithImpl<$Res>
    implements _$NotificationSettingsCopyWith<$Res> {
  __$NotificationSettingsCopyWithImpl(this._self, this._then);

  final _NotificationSettings _self;
  final $Res Function(_NotificationSettings) _then;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? pushEnabled = null,
    Object? emailEnabled = null,
    Object? smsEnabled = null,
    Object? typePreferences = null,
    Object? metadata = null,
    Object? fcmToken = freezed,
    Object? apnsToken = freezed,
    Object? updatedAt = null,
  }) {
    return _then(_NotificationSettings(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      pushEnabled: null == pushEnabled
          ? _self.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _self.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      smsEnabled: null == smsEnabled
          ? _self.smsEnabled
          : smsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      typePreferences: null == typePreferences
          ? _self._typePreferences
          : typePreferences // ignore: cast_nullable_to_non_nullable
              as Map<NotificationType, bool>,
      metadata: null == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      fcmToken: freezed == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      apnsToken: freezed == apnsToken
          ? _self.apnsToken
          : apnsToken // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
