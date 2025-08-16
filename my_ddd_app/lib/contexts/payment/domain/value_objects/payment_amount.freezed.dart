// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentAmount {
  double get amount;
  String get currency;
  double? get tax;
  double? get fee;

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentAmountCopyWith<PaymentAmount> get copyWith =>
      _$PaymentAmountCopyWithImpl<PaymentAmount>(
          this as PaymentAmount, _$identity);

  /// Serializes this PaymentAmount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentAmount &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.fee, fee) || other.fee == fee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, tax, fee);

  @override
  String toString() {
    return 'PaymentAmount(amount: $amount, currency: $currency, tax: $tax, fee: $fee)';
  }
}

/// @nodoc
abstract mixin class $PaymentAmountCopyWith<$Res> {
  factory $PaymentAmountCopyWith(
          PaymentAmount value, $Res Function(PaymentAmount) _then) =
      _$PaymentAmountCopyWithImpl;
  @useResult
  $Res call({double amount, String currency, double? tax, double? fee});
}

/// @nodoc
class _$PaymentAmountCopyWithImpl<$Res>
    implements $PaymentAmountCopyWith<$Res> {
  _$PaymentAmountCopyWithImpl(this._self, this._then);

  final PaymentAmount _self;
  final $Res Function(PaymentAmount) _then;

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? tax = freezed,
    Object? fee = freezed,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      tax: freezed == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      fee: freezed == fee
          ? _self.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaymentAmount].
extension PaymentAmountPatterns on PaymentAmount {
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
    TResult Function(_PaymentAmount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentAmount() when $default != null:
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
    TResult Function(_PaymentAmount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentAmount():
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
    TResult? Function(_PaymentAmount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentAmount() when $default != null:
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
    TResult Function(double amount, String currency, double? tax, double? fee)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentAmount() when $default != null:
        return $default(_that.amount, _that.currency, _that.tax, _that.fee);
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
    TResult Function(double amount, String currency, double? tax, double? fee)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentAmount():
        return $default(_that.amount, _that.currency, _that.tax, _that.fee);
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
    TResult? Function(double amount, String currency, double? tax, double? fee)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentAmount() when $default != null:
        return $default(_that.amount, _that.currency, _that.tax, _that.fee);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentAmount extends PaymentAmount {
  const _PaymentAmount(
      {required this.amount, required this.currency, this.tax, this.fee})
      : super._();
  factory _PaymentAmount.fromJson(Map<String, dynamic> json) =>
      _$PaymentAmountFromJson(json);

  @override
  final double amount;
  @override
  final String currency;
  @override
  final double? tax;
  @override
  final double? fee;

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentAmountCopyWith<_PaymentAmount> get copyWith =>
      __$PaymentAmountCopyWithImpl<_PaymentAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentAmountToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentAmount &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.fee, fee) || other.fee == fee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, tax, fee);

  @override
  String toString() {
    return 'PaymentAmount(amount: $amount, currency: $currency, tax: $tax, fee: $fee)';
  }
}

/// @nodoc
abstract mixin class _$PaymentAmountCopyWith<$Res>
    implements $PaymentAmountCopyWith<$Res> {
  factory _$PaymentAmountCopyWith(
          _PaymentAmount value, $Res Function(_PaymentAmount) _then) =
      __$PaymentAmountCopyWithImpl;
  @override
  @useResult
  $Res call({double amount, String currency, double? tax, double? fee});
}

/// @nodoc
class __$PaymentAmountCopyWithImpl<$Res>
    implements _$PaymentAmountCopyWith<$Res> {
  __$PaymentAmountCopyWithImpl(this._self, this._then);

  final _PaymentAmount _self;
  final $Res Function(_PaymentAmount) _then;

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? tax = freezed,
    Object? fee = freezed,
  }) {
    return _then(_PaymentAmount(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      tax: freezed == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      fee: freezed == fee
          ? _self.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
