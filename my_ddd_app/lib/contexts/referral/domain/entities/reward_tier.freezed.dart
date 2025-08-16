// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_tier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardTier {
  String get id;
  String get name;
  int get minReferrals;
  double get multiplier;
  RewardAmount get bonusAmount;
  Map<String, dynamic> get benefits;
  DateTime get createdAt;

  /// Create a copy of RewardTier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RewardTierCopyWith<RewardTier> get copyWith =>
      _$RewardTierCopyWithImpl<RewardTier>(this as RewardTier, _$identity);

  /// Serializes this RewardTier to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RewardTier &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minReferrals, minReferrals) ||
                other.minReferrals == minReferrals) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier) &&
            (identical(other.bonusAmount, bonusAmount) ||
                other.bonusAmount == bonusAmount) &&
            const DeepCollectionEquality().equals(other.benefits, benefits) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      minReferrals,
      multiplier,
      bonusAmount,
      const DeepCollectionEquality().hash(benefits),
      createdAt);

  @override
  String toString() {
    return 'RewardTier(id: $id, name: $name, minReferrals: $minReferrals, multiplier: $multiplier, bonusAmount: $bonusAmount, benefits: $benefits, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $RewardTierCopyWith<$Res> {
  factory $RewardTierCopyWith(
          RewardTier value, $Res Function(RewardTier) _then) =
      _$RewardTierCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      int minReferrals,
      double multiplier,
      RewardAmount bonusAmount,
      Map<String, dynamic> benefits,
      DateTime createdAt});

  $RewardAmountCopyWith<$Res> get bonusAmount;
}

/// @nodoc
class _$RewardTierCopyWithImpl<$Res> implements $RewardTierCopyWith<$Res> {
  _$RewardTierCopyWithImpl(this._self, this._then);

  final RewardTier _self;
  final $Res Function(RewardTier) _then;

  /// Create a copy of RewardTier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minReferrals = null,
    Object? multiplier = null,
    Object? bonusAmount = null,
    Object? benefits = null,
    Object? createdAt = null,
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
      minReferrals: null == minReferrals
          ? _self.minReferrals
          : minReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      multiplier: null == multiplier
          ? _self.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as double,
      bonusAmount: null == bonusAmount
          ? _self.bonusAmount
          : bonusAmount // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      benefits: null == benefits
          ? _self.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of RewardTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get bonusAmount {
    return $RewardAmountCopyWith<$Res>(_self.bonusAmount, (value) {
      return _then(_self.copyWith(bonusAmount: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RewardTier].
extension RewardTierPatterns on RewardTier {
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
    TResult Function(_RewardTier value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardTier() when $default != null:
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
    TResult Function(_RewardTier value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTier():
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
    TResult? Function(_RewardTier value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTier() when $default != null:
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
            int minReferrals,
            double multiplier,
            RewardAmount bonusAmount,
            Map<String, dynamic> benefits,
            DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardTier() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.minReferrals,
            _that.multiplier,
            _that.bonusAmount,
            _that.benefits,
            _that.createdAt);
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
            int minReferrals,
            double multiplier,
            RewardAmount bonusAmount,
            Map<String, dynamic> benefits,
            DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTier():
        return $default(
            _that.id,
            _that.name,
            _that.minReferrals,
            _that.multiplier,
            _that.bonusAmount,
            _that.benefits,
            _that.createdAt);
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
            int minReferrals,
            double multiplier,
            RewardAmount bonusAmount,
            Map<String, dynamic> benefits,
            DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTier() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.minReferrals,
            _that.multiplier,
            _that.bonusAmount,
            _that.benefits,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RewardTier extends RewardTier {
  const _RewardTier(
      {required this.id,
      required this.name,
      required this.minReferrals,
      required this.multiplier,
      required this.bonusAmount,
      required final Map<String, dynamic> benefits,
      required this.createdAt})
      : _benefits = benefits,
        super._();
  factory _RewardTier.fromJson(Map<String, dynamic> json) =>
      _$RewardTierFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int minReferrals;
  @override
  final double multiplier;
  @override
  final RewardAmount bonusAmount;
  final Map<String, dynamic> _benefits;
  @override
  Map<String, dynamic> get benefits {
    if (_benefits is EqualUnmodifiableMapView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_benefits);
  }

  @override
  final DateTime createdAt;

  /// Create a copy of RewardTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RewardTierCopyWith<_RewardTier> get copyWith =>
      __$RewardTierCopyWithImpl<_RewardTier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RewardTierToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardTier &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minReferrals, minReferrals) ||
                other.minReferrals == minReferrals) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier) &&
            (identical(other.bonusAmount, bonusAmount) ||
                other.bonusAmount == bonusAmount) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      minReferrals,
      multiplier,
      bonusAmount,
      const DeepCollectionEquality().hash(_benefits),
      createdAt);

  @override
  String toString() {
    return 'RewardTier(id: $id, name: $name, minReferrals: $minReferrals, multiplier: $multiplier, bonusAmount: $bonusAmount, benefits: $benefits, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$RewardTierCopyWith<$Res>
    implements $RewardTierCopyWith<$Res> {
  factory _$RewardTierCopyWith(
          _RewardTier value, $Res Function(_RewardTier) _then) =
      __$RewardTierCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int minReferrals,
      double multiplier,
      RewardAmount bonusAmount,
      Map<String, dynamic> benefits,
      DateTime createdAt});

  @override
  $RewardAmountCopyWith<$Res> get bonusAmount;
}

/// @nodoc
class __$RewardTierCopyWithImpl<$Res> implements _$RewardTierCopyWith<$Res> {
  __$RewardTierCopyWithImpl(this._self, this._then);

  final _RewardTier _self;
  final $Res Function(_RewardTier) _then;

  /// Create a copy of RewardTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minReferrals = null,
    Object? multiplier = null,
    Object? bonusAmount = null,
    Object? benefits = null,
    Object? createdAt = null,
  }) {
    return _then(_RewardTier(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minReferrals: null == minReferrals
          ? _self.minReferrals
          : minReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      multiplier: null == multiplier
          ? _self.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as double,
      bonusAmount: null == bonusAmount
          ? _self.bonusAmount
          : bonusAmount // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      benefits: null == benefits
          ? _self._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of RewardTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get bonusAmount {
    return $RewardAmountCopyWith<$Res>(_self.bonusAmount, (value) {
      return _then(_self.copyWith(bonusAmount: value));
    });
  }
}

// dart format on
