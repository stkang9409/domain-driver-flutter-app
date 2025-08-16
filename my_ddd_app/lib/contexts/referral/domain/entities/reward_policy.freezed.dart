// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardPolicy {
  String get id;
  RewardType get type;
  RewardAmount get referrerReward;
  RewardAmount get refereeReward;
  RewardCondition get condition;
  int get validityDays;
  Map<String, dynamic> get metadata;

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RewardPolicyCopyWith<RewardPolicy> get copyWith =>
      _$RewardPolicyCopyWithImpl<RewardPolicy>(
          this as RewardPolicy, _$identity);

  /// Serializes this RewardPolicy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RewardPolicy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.referrerReward, referrerReward) ||
                other.referrerReward == referrerReward) &&
            (identical(other.refereeReward, refereeReward) ||
                other.refereeReward == refereeReward) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.validityDays, validityDays) ||
                other.validityDays == validityDays) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      referrerReward,
      refereeReward,
      condition,
      validityDays,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'RewardPolicy(id: $id, type: $type, referrerReward: $referrerReward, refereeReward: $refereeReward, condition: $condition, validityDays: $validityDays, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $RewardPolicyCopyWith<$Res> {
  factory $RewardPolicyCopyWith(
          RewardPolicy value, $Res Function(RewardPolicy) _then) =
      _$RewardPolicyCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      RewardType type,
      RewardAmount referrerReward,
      RewardAmount refereeReward,
      RewardCondition condition,
      int validityDays,
      Map<String, dynamic> metadata});

  $RewardAmountCopyWith<$Res> get referrerReward;
  $RewardAmountCopyWith<$Res> get refereeReward;
  $RewardConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$RewardPolicyCopyWithImpl<$Res> implements $RewardPolicyCopyWith<$Res> {
  _$RewardPolicyCopyWithImpl(this._self, this._then);

  final RewardPolicy _self;
  final $Res Function(RewardPolicy) _then;

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? referrerReward = null,
    Object? refereeReward = null,
    Object? condition = null,
    Object? validityDays = null,
    Object? metadata = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      referrerReward: null == referrerReward
          ? _self.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      refereeReward: null == refereeReward
          ? _self.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      condition: null == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as RewardCondition,
      validityDays: null == validityDays
          ? _self.validityDays
          : validityDays // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get referrerReward {
    return $RewardAmountCopyWith<$Res>(_self.referrerReward, (value) {
      return _then(_self.copyWith(referrerReward: value));
    });
  }

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get refereeReward {
    return $RewardAmountCopyWith<$Res>(_self.refereeReward, (value) {
      return _then(_self.copyWith(refereeReward: value));
    });
  }

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardConditionCopyWith<$Res> get condition {
    return $RewardConditionCopyWith<$Res>(_self.condition, (value) {
      return _then(_self.copyWith(condition: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RewardPolicy].
extension RewardPolicyPatterns on RewardPolicy {
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
    TResult Function(_RewardPolicy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardPolicy() when $default != null:
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
    TResult Function(_RewardPolicy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardPolicy():
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
    TResult? Function(_RewardPolicy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardPolicy() when $default != null:
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
            RewardType type,
            RewardAmount referrerReward,
            RewardAmount refereeReward,
            RewardCondition condition,
            int validityDays,
            Map<String, dynamic> metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardPolicy() when $default != null:
        return $default(
            _that.id,
            _that.type,
            _that.referrerReward,
            _that.refereeReward,
            _that.condition,
            _that.validityDays,
            _that.metadata);
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
            RewardType type,
            RewardAmount referrerReward,
            RewardAmount refereeReward,
            RewardCondition condition,
            int validityDays,
            Map<String, dynamic> metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardPolicy():
        return $default(
            _that.id,
            _that.type,
            _that.referrerReward,
            _that.refereeReward,
            _that.condition,
            _that.validityDays,
            _that.metadata);
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
            RewardType type,
            RewardAmount referrerReward,
            RewardAmount refereeReward,
            RewardCondition condition,
            int validityDays,
            Map<String, dynamic> metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardPolicy() when $default != null:
        return $default(
            _that.id,
            _that.type,
            _that.referrerReward,
            _that.refereeReward,
            _that.condition,
            _that.validityDays,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RewardPolicy extends RewardPolicy {
  const _RewardPolicy(
      {required this.id,
      required this.type,
      required this.referrerReward,
      required this.refereeReward,
      required this.condition,
      required this.validityDays,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata,
        super._();
  factory _RewardPolicy.fromJson(Map<String, dynamic> json) =>
      _$RewardPolicyFromJson(json);

  @override
  final String id;
  @override
  final RewardType type;
  @override
  final RewardAmount referrerReward;
  @override
  final RewardAmount refereeReward;
  @override
  final RewardCondition condition;
  @override
  final int validityDays;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RewardPolicyCopyWith<_RewardPolicy> get copyWith =>
      __$RewardPolicyCopyWithImpl<_RewardPolicy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RewardPolicyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardPolicy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.referrerReward, referrerReward) ||
                other.referrerReward == referrerReward) &&
            (identical(other.refereeReward, refereeReward) ||
                other.refereeReward == refereeReward) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.validityDays, validityDays) ||
                other.validityDays == validityDays) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      referrerReward,
      refereeReward,
      condition,
      validityDays,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'RewardPolicy(id: $id, type: $type, referrerReward: $referrerReward, refereeReward: $refereeReward, condition: $condition, validityDays: $validityDays, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$RewardPolicyCopyWith<$Res>
    implements $RewardPolicyCopyWith<$Res> {
  factory _$RewardPolicyCopyWith(
          _RewardPolicy value, $Res Function(_RewardPolicy) _then) =
      __$RewardPolicyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      RewardType type,
      RewardAmount referrerReward,
      RewardAmount refereeReward,
      RewardCondition condition,
      int validityDays,
      Map<String, dynamic> metadata});

  @override
  $RewardAmountCopyWith<$Res> get referrerReward;
  @override
  $RewardAmountCopyWith<$Res> get refereeReward;
  @override
  $RewardConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$RewardPolicyCopyWithImpl<$Res>
    implements _$RewardPolicyCopyWith<$Res> {
  __$RewardPolicyCopyWithImpl(this._self, this._then);

  final _RewardPolicy _self;
  final $Res Function(_RewardPolicy) _then;

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? referrerReward = null,
    Object? refereeReward = null,
    Object? condition = null,
    Object? validityDays = null,
    Object? metadata = null,
  }) {
    return _then(_RewardPolicy(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RewardType,
      referrerReward: null == referrerReward
          ? _self.referrerReward
          : referrerReward // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      refereeReward: null == refereeReward
          ? _self.refereeReward
          : refereeReward // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      condition: null == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as RewardCondition,
      validityDays: null == validityDays
          ? _self.validityDays
          : validityDays // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get referrerReward {
    return $RewardAmountCopyWith<$Res>(_self.referrerReward, (value) {
      return _then(_self.copyWith(referrerReward: value));
    });
  }

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get refereeReward {
    return $RewardAmountCopyWith<$Res>(_self.refereeReward, (value) {
      return _then(_self.copyWith(refereeReward: value));
    });
  }

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardConditionCopyWith<$Res> get condition {
    return $RewardConditionCopyWith<$Res>(_self.condition, (value) {
      return _then(_self.copyWith(condition: value));
    });
  }
}

RewardCondition _$RewardConditionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'immediate':
      return ImmediateCondition.fromJson(json);
    case 'afterPurchase':
      return AfterPurchaseCondition.fromJson(json);
    case 'afterSignup':
      return AfterSignupCondition.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RewardCondition',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RewardCondition {
  /// Serializes this RewardCondition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RewardCondition);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RewardCondition()';
  }
}

/// @nodoc
class $RewardConditionCopyWith<$Res> {
  $RewardConditionCopyWith(
      RewardCondition _, $Res Function(RewardCondition) __);
}

/// Adds pattern-matching-related methods to [RewardCondition].
extension RewardConditionPatterns on RewardCondition {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImmediateCondition value)? immediate,
    TResult Function(AfterPurchaseCondition value)? afterPurchase,
    TResult Function(AfterSignupCondition value)? afterSignup,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ImmediateCondition() when immediate != null:
        return immediate(_that);
      case AfterPurchaseCondition() when afterPurchase != null:
        return afterPurchase(_that);
      case AfterSignupCondition() when afterSignup != null:
        return afterSignup(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(ImmediateCondition value) immediate,
    required TResult Function(AfterPurchaseCondition value) afterPurchase,
    required TResult Function(AfterSignupCondition value) afterSignup,
  }) {
    final _that = this;
    switch (_that) {
      case ImmediateCondition():
        return immediate(_that);
      case AfterPurchaseCondition():
        return afterPurchase(_that);
      case AfterSignupCondition():
        return afterSignup(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImmediateCondition value)? immediate,
    TResult? Function(AfterPurchaseCondition value)? afterPurchase,
    TResult? Function(AfterSignupCondition value)? afterSignup,
  }) {
    final _that = this;
    switch (_that) {
      case ImmediateCondition() when immediate != null:
        return immediate(_that);
      case AfterPurchaseCondition() when afterPurchase != null:
        return afterPurchase(_that);
      case AfterSignupCondition() when afterSignup != null:
        return afterSignup(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? immediate,
    TResult Function(int minAmount)? afterPurchase,
    TResult Function(int daysAfter)? afterSignup,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ImmediateCondition() when immediate != null:
        return immediate();
      case AfterPurchaseCondition() when afterPurchase != null:
        return afterPurchase(_that.minAmount);
      case AfterSignupCondition() when afterSignup != null:
        return afterSignup(_that.daysAfter);
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
  TResult when<TResult extends Object?>({
    required TResult Function() immediate,
    required TResult Function(int minAmount) afterPurchase,
    required TResult Function(int daysAfter) afterSignup,
  }) {
    final _that = this;
    switch (_that) {
      case ImmediateCondition():
        return immediate();
      case AfterPurchaseCondition():
        return afterPurchase(_that.minAmount);
      case AfterSignupCondition():
        return afterSignup(_that.daysAfter);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? immediate,
    TResult? Function(int minAmount)? afterPurchase,
    TResult? Function(int daysAfter)? afterSignup,
  }) {
    final _that = this;
    switch (_that) {
      case ImmediateCondition() when immediate != null:
        return immediate();
      case AfterPurchaseCondition() when afterPurchase != null:
        return afterPurchase(_that.minAmount);
      case AfterSignupCondition() when afterSignup != null:
        return afterSignup(_that.daysAfter);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class ImmediateCondition implements RewardCondition {
  const ImmediateCondition({final String? $type})
      : $type = $type ?? 'immediate';
  factory ImmediateCondition.fromJson(Map<String, dynamic> json) =>
      _$ImmediateConditionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ImmediateConditionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ImmediateCondition);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RewardCondition.immediate()';
  }
}

/// @nodoc
@JsonSerializable()
class AfterPurchaseCondition implements RewardCondition {
  const AfterPurchaseCondition(this.minAmount, {final String? $type})
      : $type = $type ?? 'afterPurchase';
  factory AfterPurchaseCondition.fromJson(Map<String, dynamic> json) =>
      _$AfterPurchaseConditionFromJson(json);

  final int minAmount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of RewardCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AfterPurchaseConditionCopyWith<AfterPurchaseCondition> get copyWith =>
      _$AfterPurchaseConditionCopyWithImpl<AfterPurchaseCondition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AfterPurchaseConditionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AfterPurchaseCondition &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minAmount);

  @override
  String toString() {
    return 'RewardCondition.afterPurchase(minAmount: $minAmount)';
  }
}

/// @nodoc
abstract mixin class $AfterPurchaseConditionCopyWith<$Res>
    implements $RewardConditionCopyWith<$Res> {
  factory $AfterPurchaseConditionCopyWith(AfterPurchaseCondition value,
          $Res Function(AfterPurchaseCondition) _then) =
      _$AfterPurchaseConditionCopyWithImpl;
  @useResult
  $Res call({int minAmount});
}

/// @nodoc
class _$AfterPurchaseConditionCopyWithImpl<$Res>
    implements $AfterPurchaseConditionCopyWith<$Res> {
  _$AfterPurchaseConditionCopyWithImpl(this._self, this._then);

  final AfterPurchaseCondition _self;
  final $Res Function(AfterPurchaseCondition) _then;

  /// Create a copy of RewardCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? minAmount = null,
  }) {
    return _then(AfterPurchaseCondition(
      null == minAmount
          ? _self.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class AfterSignupCondition implements RewardCondition {
  const AfterSignupCondition(this.daysAfter, {final String? $type})
      : $type = $type ?? 'afterSignup';
  factory AfterSignupCondition.fromJson(Map<String, dynamic> json) =>
      _$AfterSignupConditionFromJson(json);

  final int daysAfter;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of RewardCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AfterSignupConditionCopyWith<AfterSignupCondition> get copyWith =>
      _$AfterSignupConditionCopyWithImpl<AfterSignupCondition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AfterSignupConditionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AfterSignupCondition &&
            (identical(other.daysAfter, daysAfter) ||
                other.daysAfter == daysAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, daysAfter);

  @override
  String toString() {
    return 'RewardCondition.afterSignup(daysAfter: $daysAfter)';
  }
}

/// @nodoc
abstract mixin class $AfterSignupConditionCopyWith<$Res>
    implements $RewardConditionCopyWith<$Res> {
  factory $AfterSignupConditionCopyWith(AfterSignupCondition value,
          $Res Function(AfterSignupCondition) _then) =
      _$AfterSignupConditionCopyWithImpl;
  @useResult
  $Res call({int daysAfter});
}

/// @nodoc
class _$AfterSignupConditionCopyWithImpl<$Res>
    implements $AfterSignupConditionCopyWith<$Res> {
  _$AfterSignupConditionCopyWithImpl(this._self, this._then);

  final AfterSignupCondition _self;
  final $Res Function(AfterSignupCondition) _then;

  /// Create a copy of RewardCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? daysAfter = null,
  }) {
    return _then(AfterSignupCondition(
      null == daysAfter
          ? _self.daysAfter
          : daysAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
