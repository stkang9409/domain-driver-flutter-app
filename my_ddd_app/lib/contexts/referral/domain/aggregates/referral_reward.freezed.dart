// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferralReward {
  Uuid get id;
  Uuid get userId;
  RewardAmount get totalEarned;
  RewardAmount get totalClaimed;
  RewardAmount get pendingAmount;
  List<RewardTransaction> get transactions;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReferralRewardCopyWith<ReferralReward> get copyWith =>
      _$ReferralRewardCopyWithImpl<ReferralReward>(
          this as ReferralReward, _$identity);

  /// Serializes this ReferralReward to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReferralReward &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.totalClaimed, totalClaimed) ||
                other.totalClaimed == totalClaimed) &&
            (identical(other.pendingAmount, pendingAmount) ||
                other.pendingAmount == pendingAmount) &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      totalEarned,
      totalClaimed,
      pendingAmount,
      const DeepCollectionEquality().hash(transactions),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ReferralReward(id: $id, userId: $userId, totalEarned: $totalEarned, totalClaimed: $totalClaimed, pendingAmount: $pendingAmount, transactions: $transactions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ReferralRewardCopyWith<$Res> {
  factory $ReferralRewardCopyWith(
          ReferralReward value, $Res Function(ReferralReward) _then) =
      _$ReferralRewardCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Uuid userId,
      RewardAmount totalEarned,
      RewardAmount totalClaimed,
      RewardAmount pendingAmount,
      List<RewardTransaction> transactions,
      DateTime createdAt,
      DateTime updatedAt});

  $RewardAmountCopyWith<$Res> get totalEarned;
  $RewardAmountCopyWith<$Res> get totalClaimed;
  $RewardAmountCopyWith<$Res> get pendingAmount;
}

/// @nodoc
class _$ReferralRewardCopyWithImpl<$Res>
    implements $ReferralRewardCopyWith<$Res> {
  _$ReferralRewardCopyWithImpl(this._self, this._then);

  final ReferralReward _self;
  final $Res Function(ReferralReward) _then;

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? totalEarned = null,
    Object? totalClaimed = null,
    Object? pendingAmount = null,
    Object? transactions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      totalEarned: null == totalEarned
          ? _self.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      totalClaimed: null == totalClaimed
          ? _self.totalClaimed
          : totalClaimed // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      pendingAmount: null == pendingAmount
          ? _self.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      transactions: null == transactions
          ? _self.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<RewardTransaction>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get totalEarned {
    return $RewardAmountCopyWith<$Res>(_self.totalEarned, (value) {
      return _then(_self.copyWith(totalEarned: value));
    });
  }

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get totalClaimed {
    return $RewardAmountCopyWith<$Res>(_self.totalClaimed, (value) {
      return _then(_self.copyWith(totalClaimed: value));
    });
  }

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get pendingAmount {
    return $RewardAmountCopyWith<$Res>(_self.pendingAmount, (value) {
      return _then(_self.copyWith(pendingAmount: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReferralReward].
extension ReferralRewardPatterns on ReferralReward {
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
    TResult Function(_ReferralReward value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralReward() when $default != null:
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
    TResult Function(_ReferralReward value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralReward():
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
    TResult? Function(_ReferralReward value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralReward() when $default != null:
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
            Uuid id,
            Uuid userId,
            RewardAmount totalEarned,
            RewardAmount totalClaimed,
            RewardAmount pendingAmount,
            List<RewardTransaction> transactions,
            DateTime createdAt,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralReward() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.totalEarned,
            _that.totalClaimed,
            _that.pendingAmount,
            _that.transactions,
            _that.createdAt,
            _that.updatedAt);
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
            Uuid id,
            Uuid userId,
            RewardAmount totalEarned,
            RewardAmount totalClaimed,
            RewardAmount pendingAmount,
            List<RewardTransaction> transactions,
            DateTime createdAt,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralReward():
        return $default(
            _that.id,
            _that.userId,
            _that.totalEarned,
            _that.totalClaimed,
            _that.pendingAmount,
            _that.transactions,
            _that.createdAt,
            _that.updatedAt);
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
            Uuid id,
            Uuid userId,
            RewardAmount totalEarned,
            RewardAmount totalClaimed,
            RewardAmount pendingAmount,
            List<RewardTransaction> transactions,
            DateTime createdAt,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralReward() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.totalEarned,
            _that.totalClaimed,
            _that.pendingAmount,
            _that.transactions,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReferralReward extends ReferralReward {
  const _ReferralReward(
      {required this.id,
      required this.userId,
      required this.totalEarned,
      required this.totalClaimed,
      required this.pendingAmount,
      required final List<RewardTransaction> transactions,
      required this.createdAt,
      required this.updatedAt})
      : _transactions = transactions,
        super._();
  factory _ReferralReward.fromJson(Map<String, dynamic> json) =>
      _$ReferralRewardFromJson(json);

  @override
  final Uuid id;
  @override
  final Uuid userId;
  @override
  final RewardAmount totalEarned;
  @override
  final RewardAmount totalClaimed;
  @override
  final RewardAmount pendingAmount;
  final List<RewardTransaction> _transactions;
  @override
  List<RewardTransaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReferralRewardCopyWith<_ReferralReward> get copyWith =>
      __$ReferralRewardCopyWithImpl<_ReferralReward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReferralRewardToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReferralReward &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalEarned, totalEarned) ||
                other.totalEarned == totalEarned) &&
            (identical(other.totalClaimed, totalClaimed) ||
                other.totalClaimed == totalClaimed) &&
            (identical(other.pendingAmount, pendingAmount) ||
                other.pendingAmount == pendingAmount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      totalEarned,
      totalClaimed,
      pendingAmount,
      const DeepCollectionEquality().hash(_transactions),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ReferralReward(id: $id, userId: $userId, totalEarned: $totalEarned, totalClaimed: $totalClaimed, pendingAmount: $pendingAmount, transactions: $transactions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ReferralRewardCopyWith<$Res>
    implements $ReferralRewardCopyWith<$Res> {
  factory _$ReferralRewardCopyWith(
          _ReferralReward value, $Res Function(_ReferralReward) _then) =
      __$ReferralRewardCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Uuid userId,
      RewardAmount totalEarned,
      RewardAmount totalClaimed,
      RewardAmount pendingAmount,
      List<RewardTransaction> transactions,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $RewardAmountCopyWith<$Res> get totalEarned;
  @override
  $RewardAmountCopyWith<$Res> get totalClaimed;
  @override
  $RewardAmountCopyWith<$Res> get pendingAmount;
}

/// @nodoc
class __$ReferralRewardCopyWithImpl<$Res>
    implements _$ReferralRewardCopyWith<$Res> {
  __$ReferralRewardCopyWithImpl(this._self, this._then);

  final _ReferralReward _self;
  final $Res Function(_ReferralReward) _then;

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? totalEarned = null,
    Object? totalClaimed = null,
    Object? pendingAmount = null,
    Object? transactions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ReferralReward(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      totalEarned: null == totalEarned
          ? _self.totalEarned
          : totalEarned // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      totalClaimed: null == totalClaimed
          ? _self.totalClaimed
          : totalClaimed // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      pendingAmount: null == pendingAmount
          ? _self.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      transactions: null == transactions
          ? _self._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<RewardTransaction>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get totalEarned {
    return $RewardAmountCopyWith<$Res>(_self.totalEarned, (value) {
      return _then(_self.copyWith(totalEarned: value));
    });
  }

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get totalClaimed {
    return $RewardAmountCopyWith<$Res>(_self.totalClaimed, (value) {
      return _then(_self.copyWith(totalClaimed: value));
    });
  }

  /// Create a copy of ReferralReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get pendingAmount {
    return $RewardAmountCopyWith<$Res>(_self.pendingAmount, (value) {
      return _then(_self.copyWith(pendingAmount: value));
    });
  }
}

// dart format on
