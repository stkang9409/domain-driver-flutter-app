// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePaymentCommand {
  String get orderId;
  String get payerId;
  double get amount;
  String get currency;
  String get paymentMethodId;

  /// Create a copy of CreatePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePaymentCommandCopyWith<CreatePaymentCommand> get copyWith =>
      _$CreatePaymentCommandCopyWithImpl<CreatePaymentCommand>(
          this as CreatePaymentCommand, _$identity);

  /// Serializes this CreatePaymentCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePaymentCommand &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.payerId, payerId) || other.payerId == payerId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, payerId, amount, currency, paymentMethodId);

  @override
  String toString() {
    return 'CreatePaymentCommand(orderId: $orderId, payerId: $payerId, amount: $amount, currency: $currency, paymentMethodId: $paymentMethodId)';
  }
}

/// @nodoc
abstract mixin class $CreatePaymentCommandCopyWith<$Res> {
  factory $CreatePaymentCommandCopyWith(CreatePaymentCommand value,
          $Res Function(CreatePaymentCommand) _then) =
      _$CreatePaymentCommandCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      String payerId,
      double amount,
      String currency,
      String paymentMethodId});
}

/// @nodoc
class _$CreatePaymentCommandCopyWithImpl<$Res>
    implements $CreatePaymentCommandCopyWith<$Res> {
  _$CreatePaymentCommandCopyWithImpl(this._self, this._then);

  final CreatePaymentCommand _self;
  final $Res Function(CreatePaymentCommand) _then;

  /// Create a copy of CreatePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? payerId = null,
    Object? amount = null,
    Object? currency = null,
    Object? paymentMethodId = null,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      payerId: null == payerId
          ? _self.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _self.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePaymentCommand].
extension CreatePaymentCommandPatterns on CreatePaymentCommand {
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
    TResult Function(_CreatePaymentCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePaymentCommand() when $default != null:
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
    TResult Function(_CreatePaymentCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePaymentCommand():
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
    TResult? Function(_CreatePaymentCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePaymentCommand() when $default != null:
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
    TResult Function(String orderId, String payerId, double amount,
            String currency, String paymentMethodId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePaymentCommand() when $default != null:
        return $default(_that.orderId, _that.payerId, _that.amount,
            _that.currency, _that.paymentMethodId);
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
    TResult Function(String orderId, String payerId, double amount,
            String currency, String paymentMethodId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePaymentCommand():
        return $default(_that.orderId, _that.payerId, _that.amount,
            _that.currency, _that.paymentMethodId);
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
    TResult? Function(String orderId, String payerId, double amount,
            String currency, String paymentMethodId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePaymentCommand() when $default != null:
        return $default(_that.orderId, _that.payerId, _that.amount,
            _that.currency, _that.paymentMethodId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePaymentCommand implements CreatePaymentCommand {
  const _CreatePaymentCommand(
      {required this.orderId,
      required this.payerId,
      required this.amount,
      required this.currency,
      required this.paymentMethodId});
  factory _CreatePaymentCommand.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentCommandFromJson(json);

  @override
  final String orderId;
  @override
  final String payerId;
  @override
  final double amount;
  @override
  final String currency;
  @override
  final String paymentMethodId;

  /// Create a copy of CreatePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePaymentCommandCopyWith<_CreatePaymentCommand> get copyWith =>
      __$CreatePaymentCommandCopyWithImpl<_CreatePaymentCommand>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePaymentCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePaymentCommand &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.payerId, payerId) || other.payerId == payerId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, payerId, amount, currency, paymentMethodId);

  @override
  String toString() {
    return 'CreatePaymentCommand(orderId: $orderId, payerId: $payerId, amount: $amount, currency: $currency, paymentMethodId: $paymentMethodId)';
  }
}

/// @nodoc
abstract mixin class _$CreatePaymentCommandCopyWith<$Res>
    implements $CreatePaymentCommandCopyWith<$Res> {
  factory _$CreatePaymentCommandCopyWith(_CreatePaymentCommand value,
          $Res Function(_CreatePaymentCommand) _then) =
      __$CreatePaymentCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String orderId,
      String payerId,
      double amount,
      String currency,
      String paymentMethodId});
}

/// @nodoc
class __$CreatePaymentCommandCopyWithImpl<$Res>
    implements _$CreatePaymentCommandCopyWith<$Res> {
  __$CreatePaymentCommandCopyWithImpl(this._self, this._then);

  final _CreatePaymentCommand _self;
  final $Res Function(_CreatePaymentCommand) _then;

  /// Create a copy of CreatePaymentCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? payerId = null,
    Object? amount = null,
    Object? currency = null,
    Object? paymentMethodId = null,
  }) {
    return _then(_CreatePaymentCommand(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      payerId: null == payerId
          ? _self.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _self.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
