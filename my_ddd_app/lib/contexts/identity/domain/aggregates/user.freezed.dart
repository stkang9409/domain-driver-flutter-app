// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  Uuid get id;
  Email get email;
  String get name;
  DateTime get createdAt;
  List<DomainEvent> get domainEvents;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.domainEvents, domainEvents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, createdAt,
      const DeepCollectionEquality().hash(domainEvents));

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, createdAt: $createdAt, domainEvents: $domainEvents)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Email email,
      String name,
      DateTime createdAt,
      List<DomainEvent> domainEvents});

  $EmailCopyWith<$Res> get email;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? createdAt = null,
    Object? domainEvents = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      domainEvents: null == domainEvents
          ? _self.domainEvents
          : domainEvents // ignore: cast_nullable_to_non_nullable
              as List<DomainEvent>,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmailCopyWith<$Res> get email {
    return $EmailCopyWith<$Res>(_self.email, (value) {
      return _then(_self.copyWith(email: value));
    });
  }
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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
    TResult Function(_User value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
    TResult Function(_User value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
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
    TResult? Function(_User value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
    TResult Function(Uuid id, Email email, String name, DateTime createdAt,
            List<DomainEvent> domainEvents)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that.id, _that.email, _that.name, _that.createdAt,
            _that.domainEvents);
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
    TResult Function(Uuid id, Email email, String name, DateTime createdAt,
            List<DomainEvent> domainEvents)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(_that.id, _that.email, _that.name, _that.createdAt,
            _that.domainEvents);
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
    TResult? Function(Uuid id, Email email, String name, DateTime createdAt,
            List<DomainEvent> domainEvents)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that.id, _that.email, _that.name, _that.createdAt,
            _that.domainEvents);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _User extends User {
  const _User(
      {required this.id,
      required this.email,
      required this.name,
      required this.createdAt,
      final List<DomainEvent> domainEvents = const []})
      : _domainEvents = domainEvents,
        super._();

  @override
  final Uuid id;
  @override
  final Email email;
  @override
  final String name;
  @override
  final DateTime createdAt;
  final List<DomainEvent> _domainEvents;
  @override
  @JsonKey()
  List<DomainEvent> get domainEvents {
    if (_domainEvents is EqualUnmodifiableListView) return _domainEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_domainEvents);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._domainEvents, _domainEvents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, createdAt,
      const DeepCollectionEquality().hash(_domainEvents));

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, createdAt: $createdAt, domainEvents: $domainEvents)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Email email,
      String name,
      DateTime createdAt,
      List<DomainEvent> domainEvents});

  @override
  $EmailCopyWith<$Res> get email;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? createdAt = null,
    Object? domainEvents = null,
  }) {
    return _then(_User(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      domainEvents: null == domainEvents
          ? _self._domainEvents
          : domainEvents // ignore: cast_nullable_to_non_nullable
              as List<DomainEvent>,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmailCopyWith<$Res> get email {
    return $EmailCopyWith<$Res>(_self.email, (value) {
      return _then(_self.copyWith(email: value));
    });
  }
}

// dart format on
