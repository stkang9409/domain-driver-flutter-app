// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_payment_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcessPaymentCommand {
  String get paymentId;
  String get paymentMethodType;
  Map<String, dynamic>? get metadata;

  /// Create a copy of ProcessPaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessPaymentCommandCopyWith<ProcessPaymentCommand> get copyWith =>
      _$ProcessPaymentCommandCopyWithImpl<ProcessPaymentCommand>(
          this as ProcessPaymentCommand, _$identity);

  /// Serializes this ProcessPaymentCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProcessPaymentCommand &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentMethodType, paymentMethodType) ||
                other.paymentMethodType == paymentMethodType) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentId, paymentMethodType,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'ProcessPaymentCommand(paymentId: $paymentId, paymentMethodType: $paymentMethodType, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ProcessPaymentCommandCopyWith<$Res> {
  factory $ProcessPaymentCommandCopyWith(ProcessPaymentCommand value,
          $Res Function(ProcessPaymentCommand) _then) =
      _$ProcessPaymentCommandCopyWithImpl;
  @useResult
  $Res call(
      {String paymentId,
      String paymentMethodType,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ProcessPaymentCommandCopyWithImpl<$Res>
    implements $ProcessPaymentCommandCopyWith<$Res> {
  _$ProcessPaymentCommandCopyWithImpl(this._self, this._then);

  final ProcessPaymentCommand _self;
  final $Res Function(ProcessPaymentCommand) _then;

  /// Create a copy of ProcessPaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? paymentMethodType = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      paymentId: null == paymentId
          ? _self.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodType: null == paymentMethodType
          ? _self.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProcessPaymentCommand].
extension ProcessPaymentCommandPatterns on ProcessPaymentCommand {
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
    TResult Function(_ProcessPaymentCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProcessPaymentCommand() when $default != null:
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
    TResult Function(_ProcessPaymentCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProcessPaymentCommand():
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
    TResult? Function(_ProcessPaymentCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProcessPaymentCommand() when $default != null:
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
    TResult Function(String paymentId, String paymentMethodType,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProcessPaymentCommand() when $default != null:
        return $default(
            _that.paymentId, _that.paymentMethodType, _that.metadata);
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
    TResult Function(String paymentId, String paymentMethodType,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProcessPaymentCommand():
        return $default(
            _that.paymentId, _that.paymentMethodType, _that.metadata);
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
    TResult? Function(String paymentId, String paymentMethodType,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProcessPaymentCommand() when $default != null:
        return $default(
            _that.paymentId, _that.paymentMethodType, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProcessPaymentCommand implements ProcessPaymentCommand {
  const _ProcessPaymentCommand(
      {required this.paymentId,
      required this.paymentMethodType,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _ProcessPaymentCommand.fromJson(Map<String, dynamic> json) =>
      _$ProcessPaymentCommandFromJson(json);

  @override
  final String paymentId;
  @override
  final String paymentMethodType;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ProcessPaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProcessPaymentCommandCopyWith<_ProcessPaymentCommand> get copyWith =>
      __$ProcessPaymentCommandCopyWithImpl<_ProcessPaymentCommand>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProcessPaymentCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProcessPaymentCommand &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentMethodType, paymentMethodType) ||
                other.paymentMethodType == paymentMethodType) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentId, paymentMethodType,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'ProcessPaymentCommand(paymentId: $paymentId, paymentMethodType: $paymentMethodType, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ProcessPaymentCommandCopyWith<$Res>
    implements $ProcessPaymentCommandCopyWith<$Res> {
  factory _$ProcessPaymentCommandCopyWith(_ProcessPaymentCommand value,
          $Res Function(_ProcessPaymentCommand) _then) =
      __$ProcessPaymentCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String paymentId,
      String paymentMethodType,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$ProcessPaymentCommandCopyWithImpl<$Res>
    implements _$ProcessPaymentCommandCopyWith<$Res> {
  __$ProcessPaymentCommandCopyWithImpl(this._self, this._then);

  final _ProcessPaymentCommand _self;
  final $Res Function(_ProcessPaymentCommand) _then;

  /// Create a copy of ProcessPaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? paymentId = null,
    Object? paymentMethodType = null,
    Object? metadata = freezed,
  }) {
    return _then(_ProcessPaymentCommand(
      paymentId: null == paymentId
          ? _self.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodType: null == paymentMethodType
          ? _self.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
