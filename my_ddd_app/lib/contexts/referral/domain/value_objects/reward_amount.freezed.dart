// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardAmount {
  double get value;
  String get currency;

  /// Create a copy of RewardAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<RewardAmount> get copyWith =>
      _$RewardAmountCopyWithImpl<RewardAmount>(
          this as RewardAmount, _$identity);

  /// Serializes this RewardAmount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RewardAmount &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  @override
  String toString() {
    return 'RewardAmount(value: $value, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $RewardAmountCopyWith<$Res> {
  factory $RewardAmountCopyWith(
          RewardAmount value, $Res Function(RewardAmount) _then) =
      _$RewardAmountCopyWithImpl;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$RewardAmountCopyWithImpl<$Res> implements $RewardAmountCopyWith<$Res> {
  _$RewardAmountCopyWithImpl(this._self, this._then);

  final RewardAmount _self;
  final $Res Function(RewardAmount) _then;

  /// Create a copy of RewardAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RewardAmount].
extension RewardAmountPatterns on RewardAmount {
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
    TResult Function(_RewardAmount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardAmount() when $default != null:
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
    TResult Function(_RewardAmount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardAmount():
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
    TResult? Function(_RewardAmount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardAmount() when $default != null:
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
    TResult Function(double value, String currency)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardAmount() when $default != null:
        return $default(_that.value, _that.currency);
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
    TResult Function(double value, String currency) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardAmount():
        return $default(_that.value, _that.currency);
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
    TResult? Function(double value, String currency)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardAmount() when $default != null:
        return $default(_that.value, _that.currency);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RewardAmount extends RewardAmount {
  const _RewardAmount({required this.value, required this.currency})
      : super._();
  factory _RewardAmount.fromJson(Map<String, dynamic> json) =>
      _$RewardAmountFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  /// Create a copy of RewardAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RewardAmountCopyWith<_RewardAmount> get copyWith =>
      __$RewardAmountCopyWithImpl<_RewardAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RewardAmountToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardAmount &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  @override
  String toString() {
    return 'RewardAmount(value: $value, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$RewardAmountCopyWith<$Res>
    implements $RewardAmountCopyWith<$Res> {
  factory _$RewardAmountCopyWith(
          _RewardAmount value, $Res Function(_RewardAmount) _then) =
      __$RewardAmountCopyWithImpl;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$RewardAmountCopyWithImpl<$Res>
    implements _$RewardAmountCopyWith<$Res> {
  __$RewardAmountCopyWithImpl(this._self, this._then);

  final _RewardAmount _self;
  final $Res Function(_RewardAmount) _then;

  /// Create a copy of RewardAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? currency = null,
  }) {
    return _then(_RewardAmount(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
