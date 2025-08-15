// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationTemplate {
  String get id;
  String get name;
  String get titleTemplate;
  String get bodyTemplate;
  NotificationType get type;
  List<String> get requiredVariables;
  Map<String, dynamic> get defaultData;
  bool get isActive;

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationTemplateCopyWith<NotificationTemplate> get copyWith =>
      _$NotificationTemplateCopyWithImpl<NotificationTemplate>(
          this as NotificationTemplate, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationTemplate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.titleTemplate, titleTemplate) ||
                other.titleTemplate == titleTemplate) &&
            (identical(other.bodyTemplate, bodyTemplate) ||
                other.bodyTemplate == bodyTemplate) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.requiredVariables, requiredVariables) &&
            const DeepCollectionEquality()
                .equals(other.defaultData, defaultData) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      titleTemplate,
      bodyTemplate,
      type,
      const DeepCollectionEquality().hash(requiredVariables),
      const DeepCollectionEquality().hash(defaultData),
      isActive);

  @override
  String toString() {
    return 'NotificationTemplate(id: $id, name: $name, titleTemplate: $titleTemplate, bodyTemplate: $bodyTemplate, type: $type, requiredVariables: $requiredVariables, defaultData: $defaultData, isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class $NotificationTemplateCopyWith<$Res> {
  factory $NotificationTemplateCopyWith(NotificationTemplate value,
          $Res Function(NotificationTemplate) _then) =
      _$NotificationTemplateCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String titleTemplate,
      String bodyTemplate,
      NotificationType type,
      List<String> requiredVariables,
      Map<String, dynamic> defaultData,
      bool isActive});
}

/// @nodoc
class _$NotificationTemplateCopyWithImpl<$Res>
    implements $NotificationTemplateCopyWith<$Res> {
  _$NotificationTemplateCopyWithImpl(this._self, this._then);

  final NotificationTemplate _self;
  final $Res Function(NotificationTemplate) _then;

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? titleTemplate = null,
    Object? bodyTemplate = null,
    Object? type = null,
    Object? requiredVariables = null,
    Object? defaultData = null,
    Object? isActive = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      titleTemplate: null == titleTemplate
          ? _self.titleTemplate
          : titleTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      bodyTemplate: null == bodyTemplate
          ? _self.bodyTemplate
          : bodyTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      requiredVariables: null == requiredVariables
          ? _self.requiredVariables
          : requiredVariables // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultData: null == defaultData
          ? _self.defaultData
          : defaultData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationTemplate].
extension NotificationTemplatePatterns on NotificationTemplate {
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
    TResult Function(_NotificationTemplate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationTemplate() when $default != null:
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
    TResult Function(_NotificationTemplate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationTemplate():
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
    TResult? Function(_NotificationTemplate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationTemplate() when $default != null:
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
            String id,
            String name,
            String titleTemplate,
            String bodyTemplate,
            NotificationType type,
            List<String> requiredVariables,
            Map<String, dynamic> defaultData,
            bool isActive)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationTemplate() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.titleTemplate,
            _that.bodyTemplate,
            _that.type,
            _that.requiredVariables,
            _that.defaultData,
            _that.isActive);
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
            String id,
            String name,
            String titleTemplate,
            String bodyTemplate,
            NotificationType type,
            List<String> requiredVariables,
            Map<String, dynamic> defaultData,
            bool isActive)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationTemplate():
        return $default(
            _that.id,
            _that.name,
            _that.titleTemplate,
            _that.bodyTemplate,
            _that.type,
            _that.requiredVariables,
            _that.defaultData,
            _that.isActive);
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
            String id,
            String name,
            String titleTemplate,
            String bodyTemplate,
            NotificationType type,
            List<String> requiredVariables,
            Map<String, dynamic> defaultData,
            bool isActive)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationTemplate() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.titleTemplate,
            _that.bodyTemplate,
            _that.type,
            _that.requiredVariables,
            _that.defaultData,
            _that.isActive);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotificationTemplate extends NotificationTemplate {
  const _NotificationTemplate(
      {required this.id,
      required this.name,
      required this.titleTemplate,
      required this.bodyTemplate,
      required this.type,
      required final List<String> requiredVariables,
      required final Map<String, dynamic> defaultData,
      required this.isActive})
      : _requiredVariables = requiredVariables,
        _defaultData = defaultData,
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String titleTemplate;
  @override
  final String bodyTemplate;
  @override
  final NotificationType type;
  final List<String> _requiredVariables;
  @override
  List<String> get requiredVariables {
    if (_requiredVariables is EqualUnmodifiableListView)
      return _requiredVariables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredVariables);
  }

  final Map<String, dynamic> _defaultData;
  @override
  Map<String, dynamic> get defaultData {
    if (_defaultData is EqualUnmodifiableMapView) return _defaultData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_defaultData);
  }

  @override
  final bool isActive;

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationTemplateCopyWith<_NotificationTemplate> get copyWith =>
      __$NotificationTemplateCopyWithImpl<_NotificationTemplate>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationTemplate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.titleTemplate, titleTemplate) ||
                other.titleTemplate == titleTemplate) &&
            (identical(other.bodyTemplate, bodyTemplate) ||
                other.bodyTemplate == bodyTemplate) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._requiredVariables, _requiredVariables) &&
            const DeepCollectionEquality()
                .equals(other._defaultData, _defaultData) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      titleTemplate,
      bodyTemplate,
      type,
      const DeepCollectionEquality().hash(_requiredVariables),
      const DeepCollectionEquality().hash(_defaultData),
      isActive);

  @override
  String toString() {
    return 'NotificationTemplate(id: $id, name: $name, titleTemplate: $titleTemplate, bodyTemplate: $bodyTemplate, type: $type, requiredVariables: $requiredVariables, defaultData: $defaultData, isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class _$NotificationTemplateCopyWith<$Res>
    implements $NotificationTemplateCopyWith<$Res> {
  factory _$NotificationTemplateCopyWith(_NotificationTemplate value,
          $Res Function(_NotificationTemplate) _then) =
      __$NotificationTemplateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String titleTemplate,
      String bodyTemplate,
      NotificationType type,
      List<String> requiredVariables,
      Map<String, dynamic> defaultData,
      bool isActive});
}

/// @nodoc
class __$NotificationTemplateCopyWithImpl<$Res>
    implements _$NotificationTemplateCopyWith<$Res> {
  __$NotificationTemplateCopyWithImpl(this._self, this._then);

  final _NotificationTemplate _self;
  final $Res Function(_NotificationTemplate) _then;

  /// Create a copy of NotificationTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? titleTemplate = null,
    Object? bodyTemplate = null,
    Object? type = null,
    Object? requiredVariables = null,
    Object? defaultData = null,
    Object? isActive = null,
  }) {
    return _then(_NotificationTemplate(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      titleTemplate: null == titleTemplate
          ? _self.titleTemplate
          : titleTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      bodyTemplate: null == bodyTemplate
          ? _self.bodyTemplate
          : bodyTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      requiredVariables: null == requiredVariables
          ? _self._requiredVariables
          : requiredVariables // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultData: null == defaultData
          ? _self._defaultData
          : defaultData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
