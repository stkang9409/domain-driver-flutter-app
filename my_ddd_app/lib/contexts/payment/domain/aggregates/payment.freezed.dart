// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Payment {
  Uuid get id;
  Uuid get orderId;
  Uuid get payerId;
  PaymentAmount get amount;
  PaymentMethod get paymentMethod;
  PaymentStatus get status;
  String get description;
  String? get transactionId;
  Map<String, dynamic>? get metadata;
  DateTime? get processedAt;
  DateTime? get completedAt;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<Payment> get copyWith =>
      _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.payerId, payerId) || other.payerId == payerId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
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
      orderId,
      payerId,
      amount,
      paymentMethod,
      status,
      description,
      transactionId,
      const DeepCollectionEquality().hash(metadata),
      processedAt,
      completedAt,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'Payment(id: $id, orderId: $orderId, payerId: $payerId, amount: $amount, paymentMethod: $paymentMethod, status: $status, description: $description, transactionId: $transactionId, metadata: $metadata, processedAt: $processedAt, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) =
      _$PaymentCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Uuid orderId,
      Uuid payerId,
      PaymentAmount amount,
      PaymentMethod paymentMethod,
      PaymentStatus status,
      String description,
      String? transactionId,
      Map<String, dynamic>? metadata,
      DateTime? processedAt,
      DateTime? completedAt,
      DateTime createdAt,
      DateTime updatedAt});

  $PaymentAmountCopyWith<$Res> get amount;
  $PaymentMethodCopyWith<$Res> get paymentMethod;
  $PaymentStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res> implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? payerId = null,
    Object? amount = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? description = null,
    Object? transactionId = freezed,
    Object? metadata = freezed,
    Object? processedAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      payerId: null == payerId
          ? _self.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PaymentAmount,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      processedAt: freezed == processedAt
          ? _self.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentAmountCopyWith<$Res> get amount {
    return $PaymentAmountCopyWith<$Res>(_self.amount, (value) {
      return _then(_self.copyWith(amount: value));
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_self.paymentMethod, (value) {
      return _then(_self.copyWith(paymentMethod: value));
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentStatusCopyWith<$Res> get status {
    return $PaymentStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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
    TResult Function(_Payment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
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
    TResult Function(_Payment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment():
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
    TResult? Function(_Payment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
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
            Uuid orderId,
            Uuid payerId,
            PaymentAmount amount,
            PaymentMethod paymentMethod,
            PaymentStatus status,
            String description,
            String? transactionId,
            Map<String, dynamic>? metadata,
            DateTime? processedAt,
            DateTime? completedAt,
            DateTime createdAt,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
        return $default(
            _that.id,
            _that.orderId,
            _that.payerId,
            _that.amount,
            _that.paymentMethod,
            _that.status,
            _that.description,
            _that.transactionId,
            _that.metadata,
            _that.processedAt,
            _that.completedAt,
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
            Uuid orderId,
            Uuid payerId,
            PaymentAmount amount,
            PaymentMethod paymentMethod,
            PaymentStatus status,
            String description,
            String? transactionId,
            Map<String, dynamic>? metadata,
            DateTime? processedAt,
            DateTime? completedAt,
            DateTime createdAt,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment():
        return $default(
            _that.id,
            _that.orderId,
            _that.payerId,
            _that.amount,
            _that.paymentMethod,
            _that.status,
            _that.description,
            _that.transactionId,
            _that.metadata,
            _that.processedAt,
            _that.completedAt,
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
            Uuid orderId,
            Uuid payerId,
            PaymentAmount amount,
            PaymentMethod paymentMethod,
            PaymentStatus status,
            String description,
            String? transactionId,
            Map<String, dynamic>? metadata,
            DateTime? processedAt,
            DateTime? completedAt,
            DateTime createdAt,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Payment() when $default != null:
        return $default(
            _that.id,
            _that.orderId,
            _that.payerId,
            _that.amount,
            _that.paymentMethod,
            _that.status,
            _that.description,
            _that.transactionId,
            _that.metadata,
            _that.processedAt,
            _that.completedAt,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Payment extends Payment {
  const _Payment(
      {required this.id,
      required this.orderId,
      required this.payerId,
      required this.amount,
      required this.paymentMethod,
      required this.status,
      required this.description,
      this.transactionId,
      final Map<String, dynamic>? metadata,
      this.processedAt,
      this.completedAt,
      required this.createdAt,
      required this.updatedAt})
      : _metadata = metadata,
        super._();
  factory _Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  @override
  final Uuid id;
  @override
  final Uuid orderId;
  @override
  final Uuid payerId;
  @override
  final PaymentAmount amount;
  @override
  final PaymentMethod paymentMethod;
  @override
  final PaymentStatus status;
  @override
  final String description;
  @override
  final String? transactionId;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? processedAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentCopyWith<_Payment> get copyWith =>
      __$PaymentCopyWithImpl<_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.payerId, payerId) || other.payerId == payerId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
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
      orderId,
      payerId,
      amount,
      paymentMethod,
      status,
      description,
      transactionId,
      const DeepCollectionEquality().hash(_metadata),
      processedAt,
      completedAt,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'Payment(id: $id, orderId: $orderId, payerId: $payerId, amount: $amount, paymentMethod: $paymentMethod, status: $status, description: $description, transactionId: $transactionId, metadata: $metadata, processedAt: $processedAt, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) =
      __$PaymentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Uuid orderId,
      Uuid payerId,
      PaymentAmount amount,
      PaymentMethod paymentMethod,
      PaymentStatus status,
      String description,
      String? transactionId,
      Map<String, dynamic>? metadata,
      DateTime? processedAt,
      DateTime? completedAt,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $PaymentAmountCopyWith<$Res> get amount;
  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
  @override
  $PaymentStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$PaymentCopyWithImpl<$Res> implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? payerId = null,
    Object? amount = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? description = null,
    Object? transactionId = freezed,
    Object? metadata = freezed,
    Object? processedAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Payment(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      payerId: null == payerId
          ? _self.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PaymentAmount,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      processedAt: freezed == processedAt
          ? _self.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentAmountCopyWith<$Res> get amount {
    return $PaymentAmountCopyWith<$Res>(_self.amount, (value) {
      return _then(_self.copyWith(amount: value));
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_self.paymentMethod, (value) {
      return _then(_self.copyWith(paymentMethod: value));
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentStatusCopyWith<$Res> get status {
    return $PaymentStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

// dart format on
