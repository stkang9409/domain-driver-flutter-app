// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterUserCommand {
  String get email;
  String get name;
  String get password;

  /// Create a copy of RegisterUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterUserCommandCopyWith<RegisterUserCommand> get copyWith =>
      _$RegisterUserCommandCopyWithImpl<RegisterUserCommand>(
          this as RegisterUserCommand, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterUserCommand &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, password);

  @override
  String toString() {
    return 'RegisterUserCommand(email: $email, name: $name, password: $password)';
  }
}

/// @nodoc
abstract mixin class $RegisterUserCommandCopyWith<$Res> {
  factory $RegisterUserCommandCopyWith(
          RegisterUserCommand value, $Res Function(RegisterUserCommand) _then) =
      _$RegisterUserCommandCopyWithImpl;
  @useResult
  $Res call({String email, String name, String password});
}

/// @nodoc
class _$RegisterUserCommandCopyWithImpl<$Res>
    implements $RegisterUserCommandCopyWith<$Res> {
  _$RegisterUserCommandCopyWithImpl(this._self, this._then);

  final RegisterUserCommand _self;
  final $Res Function(RegisterUserCommand) _then;

  /// Create a copy of RegisterUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RegisterUserCommand].
extension RegisterUserCommandPatterns on RegisterUserCommand {
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
    TResult Function(_RegisterUserCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterUserCommand() when $default != null:
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
    TResult Function(_RegisterUserCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserCommand():
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
    TResult? Function(_RegisterUserCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserCommand() when $default != null:
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
    TResult Function(String email, String name, String password)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RegisterUserCommand() when $default != null:
        return $default(_that.email, _that.name, _that.password);
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
    TResult Function(String email, String name, String password) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserCommand():
        return $default(_that.email, _that.name, _that.password);
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
    TResult? Function(String email, String name, String password)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RegisterUserCommand() when $default != null:
        return $default(_that.email, _that.name, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RegisterUserCommand implements RegisterUserCommand {
  const _RegisterUserCommand(
      {required this.email, required this.name, required this.password});

  @override
  final String email;
  @override
  final String name;
  @override
  final String password;

  /// Create a copy of RegisterUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterUserCommandCopyWith<_RegisterUserCommand> get copyWith =>
      __$RegisterUserCommandCopyWithImpl<_RegisterUserCommand>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterUserCommand &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, password);

  @override
  String toString() {
    return 'RegisterUserCommand(email: $email, name: $name, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$RegisterUserCommandCopyWith<$Res>
    implements $RegisterUserCommandCopyWith<$Res> {
  factory _$RegisterUserCommandCopyWith(_RegisterUserCommand value,
          $Res Function(_RegisterUserCommand) _then) =
      __$RegisterUserCommandCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String name, String password});
}

/// @nodoc
class __$RegisterUserCommandCopyWithImpl<$Res>
    implements _$RegisterUserCommandCopyWith<$Res> {
  __$RegisterUserCommandCopyWithImpl(this._self, this._then);

  final _RegisterUserCommand _self;
  final $Res Function(_RegisterUserCommand) _then;

  /// Create a copy of RegisterUserCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_RegisterUserCommand(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
