// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_payment_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompletePaymentCommand {
  String get paymentId;
  String get transactionId;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CompletePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompletePaymentCommandCopyWith<CompletePaymentCommand> get copyWith =>
      _$CompletePaymentCommandCopyWithImpl<CompletePaymentCommand>(
          this as CompletePaymentCommand, _$identity);

  /// Serializes this CompletePaymentCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompletePaymentCommand &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentId, transactionId,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CompletePaymentCommand(paymentId: $paymentId, transactionId: $transactionId, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CompletePaymentCommandCopyWith<$Res> {
  factory $CompletePaymentCommandCopyWith(CompletePaymentCommand value,
          $Res Function(CompletePaymentCommand) _then) =
      _$CompletePaymentCommandCopyWithImpl;
  @useResult
  $Res call(
      {String paymentId, String transactionId, Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CompletePaymentCommandCopyWithImpl<$Res>
    implements $CompletePaymentCommandCopyWith<$Res> {
  _$CompletePaymentCommandCopyWithImpl(this._self, this._then);

  final CompletePaymentCommand _self;
  final $Res Function(CompletePaymentCommand) _then;

  /// Create a copy of CompletePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? transactionId = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      paymentId: null == paymentId
          ? _self.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CompletePaymentCommand].
extension CompletePaymentCommandPatterns on CompletePaymentCommand {
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
    TResult Function(_CompletePaymentCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletePaymentCommand() when $default != null:
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
    TResult Function(_CompletePaymentCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletePaymentCommand():
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
    TResult? Function(_CompletePaymentCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletePaymentCommand() when $default != null:
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
    TResult Function(String paymentId, String transactionId,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CompletePaymentCommand() when $default != null:
        return $default(_that.paymentId, _that.transactionId, _that.metadata);
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
    TResult Function(String paymentId, String transactionId,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletePaymentCommand():
        return $default(_that.paymentId, _that.transactionId, _that.metadata);
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
    TResult? Function(String paymentId, String transactionId,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CompletePaymentCommand() when $default != null:
        return $default(_that.paymentId, _that.transactionId, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CompletePaymentCommand implements CompletePaymentCommand {
  const _CompletePaymentCommand(
      {required this.paymentId,
      required this.transactionId,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _CompletePaymentCommand.fromJson(Map<String, dynamic> json) =>
      _$CompletePaymentCommandFromJson(json);

  @override
  final String paymentId;
  @override
  final String transactionId;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CompletePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompletePaymentCommandCopyWith<_CompletePaymentCommand> get copyWith =>
      __$CompletePaymentCommandCopyWithImpl<_CompletePaymentCommand>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompletePaymentCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompletePaymentCommand &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentId, transactionId,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CompletePaymentCommand(paymentId: $paymentId, transactionId: $transactionId, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CompletePaymentCommandCopyWith<$Res>
    implements $CompletePaymentCommandCopyWith<$Res> {
  factory _$CompletePaymentCommandCopyWith(_CompletePaymentCommand value,
          $Res Function(_CompletePaymentCommand) _then) =
      __$CompletePaymentCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String paymentId, String transactionId, Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CompletePaymentCommandCopyWithImpl<$Res>
    implements _$CompletePaymentCommandCopyWith<$Res> {
  __$CompletePaymentCommandCopyWithImpl(this._self, this._then);

  final _CompletePaymentCommand _self;
  final $Res Function(_CompletePaymentCommand) _then;

  /// Create a copy of CompletePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? paymentId = null,
    Object? transactionId = null,
    Object? metadata = freezed,
  }) {
    return _then(_CompletePaymentCommand(
      paymentId: null == paymentId
          ? _self.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
