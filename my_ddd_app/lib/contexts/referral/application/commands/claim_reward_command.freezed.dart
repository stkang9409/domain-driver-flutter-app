// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_reward_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClaimRewardCommand {
  String get userId;
  double get amount;
  String get claimMethod;
  Map<String, dynamic>? get metadata;

  /// Create a copy of ClaimRewardCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClaimRewardCommandCopyWith<ClaimRewardCommand> get copyWith =>
      _$ClaimRewardCommandCopyWithImpl<ClaimRewardCommand>(
          this as ClaimRewardCommand, _$identity);

  /// Serializes this ClaimRewardCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClaimRewardCommand &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.claimMethod, claimMethod) ||
                other.claimMethod == claimMethod) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, amount, claimMethod,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'ClaimRewardCommand(userId: $userId, amount: $amount, claimMethod: $claimMethod, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ClaimRewardCommandCopyWith<$Res> {
  factory $ClaimRewardCommandCopyWith(
          ClaimRewardCommand value, $Res Function(ClaimRewardCommand) _then) =
      _$ClaimRewardCommandCopyWithImpl;
  @useResult
  $Res call(
      {String userId,
      double amount,
      String claimMethod,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ClaimRewardCommandCopyWithImpl<$Res>
    implements $ClaimRewardCommandCopyWith<$Res> {
  _$ClaimRewardCommandCopyWithImpl(this._self, this._then);

  final ClaimRewardCommand _self;
  final $Res Function(ClaimRewardCommand) _then;

  /// Create a copy of ClaimRewardCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? amount = null,
    Object? claimMethod = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      claimMethod: null == claimMethod
          ? _self.claimMethod
          : claimMethod // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ClaimRewardCommand].
extension ClaimRewardCommandPatterns on ClaimRewardCommand {
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
    TResult Function(_ClaimRewardCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClaimRewardCommand() when $default != null:
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
    TResult Function(_ClaimRewardCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClaimRewardCommand():
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
    TResult? Function(_ClaimRewardCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClaimRewardCommand() when $default != null:
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
    TResult Function(String userId, double amount, String claimMethod,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClaimRewardCommand() when $default != null:
        return $default(
            _that.userId, _that.amount, _that.claimMethod, _that.metadata);
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
    TResult Function(String userId, double amount, String claimMethod,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClaimRewardCommand():
        return $default(
            _that.userId, _that.amount, _that.claimMethod, _that.metadata);
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
    TResult? Function(String userId, double amount, String claimMethod,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClaimRewardCommand() when $default != null:
        return $default(
            _that.userId, _that.amount, _that.claimMethod, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ClaimRewardCommand implements ClaimRewardCommand {
  const _ClaimRewardCommand(
      {required this.userId,
      required this.amount,
      required this.claimMethod,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _ClaimRewardCommand.fromJson(Map<String, dynamic> json) =>
      _$ClaimRewardCommandFromJson(json);

  @override
  final String userId;
  @override
  final double amount;
  @override
  final String claimMethod;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ClaimRewardCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClaimRewardCommandCopyWith<_ClaimRewardCommand> get copyWith =>
      __$ClaimRewardCommandCopyWithImpl<_ClaimRewardCommand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClaimRewardCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClaimRewardCommand &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.claimMethod, claimMethod) ||
                other.claimMethod == claimMethod) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, amount, claimMethod,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'ClaimRewardCommand(userId: $userId, amount: $amount, claimMethod: $claimMethod, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ClaimRewardCommandCopyWith<$Res>
    implements $ClaimRewardCommandCopyWith<$Res> {
  factory _$ClaimRewardCommandCopyWith(
          _ClaimRewardCommand value, $Res Function(_ClaimRewardCommand) _then) =
      __$ClaimRewardCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String userId,
      double amount,
      String claimMethod,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$ClaimRewardCommandCopyWithImpl<$Res>
    implements _$ClaimRewardCommandCopyWith<$Res> {
  __$ClaimRewardCommandCopyWithImpl(this._self, this._then);

  final _ClaimRewardCommand _self;
  final $Res Function(_ClaimRewardCommand) _then;

  /// Create a copy of ClaimRewardCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? amount = null,
    Object? claimMethod = null,
    Object? metadata = freezed,
  }) {
    return _then(_ClaimRewardCommand(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      claimMethod: null == claimMethod
          ? _self.claimMethod
          : claimMethod // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
