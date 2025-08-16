// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardTransaction {
  Uuid get id;
  TransactionType get type;
  RewardAmount get amount;
  String get referenceId;
  String get description;
  DateTime get createdAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of RewardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RewardTransactionCopyWith<RewardTransaction> get copyWith =>
      _$RewardTransactionCopyWithImpl<RewardTransaction>(
          this as RewardTransaction, _$identity);

  /// Serializes this RewardTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RewardTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, amount, referenceId,
      description, createdAt, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'RewardTransaction(id: $id, type: $type, amount: $amount, referenceId: $referenceId, description: $description, createdAt: $createdAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $RewardTransactionCopyWith<$Res> {
  factory $RewardTransactionCopyWith(
          RewardTransaction value, $Res Function(RewardTransaction) _then) =
      _$RewardTransactionCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      TransactionType type,
      RewardAmount amount,
      String referenceId,
      String description,
      DateTime createdAt,
      Map<String, dynamic>? metadata});

  $RewardAmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$RewardTransactionCopyWithImpl<$Res>
    implements $RewardTransactionCopyWith<$Res> {
  _$RewardTransactionCopyWithImpl(this._self, this._then);

  final RewardTransaction _self;
  final $Res Function(RewardTransaction) _then;

  /// Create a copy of RewardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? referenceId = null,
    Object? description = null,
    Object? createdAt = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      referenceId: null == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of RewardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get amount {
    return $RewardAmountCopyWith<$Res>(_self.amount, (value) {
      return _then(_self.copyWith(amount: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RewardTransaction].
extension RewardTransactionPatterns on RewardTransaction {
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
    TResult Function(_RewardTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardTransaction() when $default != null:
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
    TResult Function(_RewardTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTransaction():
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
    TResult? Function(_RewardTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTransaction() when $default != null:
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
            TransactionType type,
            RewardAmount amount,
            String referenceId,
            String description,
            DateTime createdAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RewardTransaction() when $default != null:
        return $default(_that.id, _that.type, _that.amount, _that.referenceId,
            _that.description, _that.createdAt, _that.metadata);
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
            TransactionType type,
            RewardAmount amount,
            String referenceId,
            String description,
            DateTime createdAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTransaction():
        return $default(_that.id, _that.type, _that.amount, _that.referenceId,
            _that.description, _that.createdAt, _that.metadata);
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
            TransactionType type,
            RewardAmount amount,
            String referenceId,
            String description,
            DateTime createdAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RewardTransaction() when $default != null:
        return $default(_that.id, _that.type, _that.amount, _that.referenceId,
            _that.description, _that.createdAt, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RewardTransaction extends RewardTransaction {
  const _RewardTransaction(
      {required this.id,
      required this.type,
      required this.amount,
      required this.referenceId,
      required this.description,
      required this.createdAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata,
        super._();
  factory _RewardTransaction.fromJson(Map<String, dynamic> json) =>
      _$RewardTransactionFromJson(json);

  @override
  final Uuid id;
  @override
  final TransactionType type;
  @override
  final RewardAmount amount;
  @override
  final String referenceId;
  @override
  final String description;
  @override
  final DateTime createdAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of RewardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RewardTransactionCopyWith<_RewardTransaction> get copyWith =>
      __$RewardTransactionCopyWithImpl<_RewardTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RewardTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, amount, referenceId,
      description, createdAt, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'RewardTransaction(id: $id, type: $type, amount: $amount, referenceId: $referenceId, description: $description, createdAt: $createdAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$RewardTransactionCopyWith<$Res>
    implements $RewardTransactionCopyWith<$Res> {
  factory _$RewardTransactionCopyWith(
          _RewardTransaction value, $Res Function(_RewardTransaction) _then) =
      __$RewardTransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      TransactionType type,
      RewardAmount amount,
      String referenceId,
      String description,
      DateTime createdAt,
      Map<String, dynamic>? metadata});

  @override
  $RewardAmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$RewardTransactionCopyWithImpl<$Res>
    implements _$RewardTransactionCopyWith<$Res> {
  __$RewardTransactionCopyWithImpl(this._self, this._then);

  final _RewardTransaction _self;
  final $Res Function(_RewardTransaction) _then;

  /// Create a copy of RewardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? amount = null,
    Object? referenceId = null,
    Object? description = null,
    Object? createdAt = null,
    Object? metadata = freezed,
  }) {
    return _then(_RewardTransaction(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as RewardAmount,
      referenceId: null == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of RewardTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardAmountCopyWith<$Res> get amount {
    return $RewardAmountCopyWith<$Res>(_self.amount, (value) {
      return _then(_self.copyWith(amount: value));
    });
  }
}

// dart format on
