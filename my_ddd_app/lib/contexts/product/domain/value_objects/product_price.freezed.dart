// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductPrice {
  double get amount;
  String get currency;
  double? get discountedAmount;

  /// Create a copy of ProductPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductPriceCopyWith<ProductPrice> get copyWith =>
      _$ProductPriceCopyWithImpl<ProductPrice>(
          this as ProductPrice, _$identity);

  /// Serializes this ProductPrice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductPrice &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.discountedAmount, discountedAmount) ||
                other.discountedAmount == discountedAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, currency, discountedAmount);

  @override
  String toString() {
    return 'ProductPrice(amount: $amount, currency: $currency, discountedAmount: $discountedAmount)';
  }
}

/// @nodoc
abstract mixin class $ProductPriceCopyWith<$Res> {
  factory $ProductPriceCopyWith(
          ProductPrice value, $Res Function(ProductPrice) _then) =
      _$ProductPriceCopyWithImpl;
  @useResult
  $Res call({double amount, String currency, double? discountedAmount});
}

/// @nodoc
class _$ProductPriceCopyWithImpl<$Res> implements $ProductPriceCopyWith<$Res> {
  _$ProductPriceCopyWithImpl(this._self, this._then);

  final ProductPrice _self;
  final $Res Function(ProductPrice) _then;

  /// Create a copy of ProductPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? discountedAmount = freezed,
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
      discountedAmount: freezed == discountedAmount
          ? _self.discountedAmount
          : discountedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductPrice].
extension ProductPricePatterns on ProductPrice {
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
    TResult Function(_ProductPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductPrice() when $default != null:
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
    TResult Function(_ProductPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPrice():
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
    TResult? Function(_ProductPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPrice() when $default != null:
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
    TResult Function(double amount, String currency, double? discountedAmount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductPrice() when $default != null:
        return $default(_that.amount, _that.currency, _that.discountedAmount);
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
    TResult Function(double amount, String currency, double? discountedAmount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPrice():
        return $default(_that.amount, _that.currency, _that.discountedAmount);
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
    TResult? Function(double amount, String currency, double? discountedAmount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPrice() when $default != null:
        return $default(_that.amount, _that.currency, _that.discountedAmount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductPrice extends ProductPrice {
  const _ProductPrice(
      {required this.amount, required this.currency, this.discountedAmount})
      : super._();
  factory _ProductPrice.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceFromJson(json);

  @override
  final double amount;
  @override
  final String currency;
  @override
  final double? discountedAmount;

  /// Create a copy of ProductPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductPriceCopyWith<_ProductPrice> get copyWith =>
      __$ProductPriceCopyWithImpl<_ProductPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductPriceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductPrice &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.discountedAmount, discountedAmount) ||
                other.discountedAmount == discountedAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, currency, discountedAmount);

  @override
  String toString() {
    return 'ProductPrice(amount: $amount, currency: $currency, discountedAmount: $discountedAmount)';
  }
}

/// @nodoc
abstract mixin class _$ProductPriceCopyWith<$Res>
    implements $ProductPriceCopyWith<$Res> {
  factory _$ProductPriceCopyWith(
          _ProductPrice value, $Res Function(_ProductPrice) _then) =
      __$ProductPriceCopyWithImpl;
  @override
  @useResult
  $Res call({double amount, String currency, double? discountedAmount});
}

/// @nodoc
class __$ProductPriceCopyWithImpl<$Res>
    implements _$ProductPriceCopyWith<$Res> {
  __$ProductPriceCopyWithImpl(this._self, this._then);

  final _ProductPrice _self;
  final $Res Function(_ProductPrice) _then;

  /// Create a copy of ProductPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? discountedAmount = freezed,
  }) {
    return _then(_ProductPrice(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      discountedAmount: freezed == discountedAmount
          ? _self.discountedAmount
          : discountedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
