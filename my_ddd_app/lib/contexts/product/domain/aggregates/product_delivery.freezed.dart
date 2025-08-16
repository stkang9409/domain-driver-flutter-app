// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDelivery {
  Uuid get id;
  Uuid get orderId;
  Uuid get productId;
  Uuid get recipientId;
  DeliveryType get type;
  DeliveryStatus get status;
  Map<String, dynamic> get deliveryDetails;
  String? get trackingNumber;
  DateTime? get shippedAt;
  DateTime? get deliveredAt;
  String? get deliveryProof;
  String? get failureReason;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of ProductDelivery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDeliveryCopyWith<ProductDelivery> get copyWith =>
      _$ProductDeliveryCopyWithImpl<ProductDelivery>(
          this as ProductDelivery, _$identity);

  /// Serializes this ProductDelivery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDelivery &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.deliveryDetails, deliveryDetails) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber) &&
            (identical(other.shippedAt, shippedAt) ||
                other.shippedAt == shippedAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.deliveryProof, deliveryProof) ||
                other.deliveryProof == deliveryProof) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
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
      productId,
      recipientId,
      type,
      status,
      const DeepCollectionEquality().hash(deliveryDetails),
      trackingNumber,
      shippedAt,
      deliveredAt,
      deliveryProof,
      failureReason,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ProductDelivery(id: $id, orderId: $orderId, productId: $productId, recipientId: $recipientId, type: $type, status: $status, deliveryDetails: $deliveryDetails, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt, deliveryProof: $deliveryProof, failureReason: $failureReason, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ProductDeliveryCopyWith<$Res> {
  factory $ProductDeliveryCopyWith(
          ProductDelivery value, $Res Function(ProductDelivery) _then) =
      _$ProductDeliveryCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Uuid orderId,
      Uuid productId,
      Uuid recipientId,
      DeliveryType type,
      DeliveryStatus status,
      Map<String, dynamic> deliveryDetails,
      String? trackingNumber,
      DateTime? shippedAt,
      DateTime? deliveredAt,
      String? deliveryProof,
      String? failureReason,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ProductDeliveryCopyWithImpl<$Res>
    implements $ProductDeliveryCopyWith<$Res> {
  _$ProductDeliveryCopyWithImpl(this._self, this._then);

  final ProductDelivery _self;
  final $Res Function(ProductDelivery) _then;

  /// Create a copy of ProductDelivery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? productId = null,
    Object? recipientId = null,
    Object? type = null,
    Object? status = null,
    Object? deliveryDetails = null,
    Object? trackingNumber = freezed,
    Object? shippedAt = freezed,
    Object? deliveredAt = freezed,
    Object? deliveryProof = freezed,
    Object? failureReason = freezed,
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
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      recipientId: null == recipientId
          ? _self.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryDetails: null == deliveryDetails
          ? _self.deliveryDetails
          : deliveryDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      trackingNumber: freezed == trackingNumber
          ? _self.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippedAt: freezed == shippedAt
          ? _self.shippedAt
          : shippedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryProof: freezed == deliveryProof
          ? _self.deliveryProof
          : deliveryProof // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _self.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// Adds pattern-matching-related methods to [ProductDelivery].
extension ProductDeliveryPatterns on ProductDelivery {
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
    TResult Function(_ProductDelivery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDelivery() when $default != null:
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
    TResult Function(_ProductDelivery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDelivery():
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
    TResult? Function(_ProductDelivery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDelivery() when $default != null:
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
            Uuid productId,
            Uuid recipientId,
            DeliveryType type,
            DeliveryStatus status,
            Map<String, dynamic> deliveryDetails,
            String? trackingNumber,
            DateTime? shippedAt,
            DateTime? deliveredAt,
            String? deliveryProof,
            String? failureReason,
            DateTime createdAt,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDelivery() when $default != null:
        return $default(
            _that.id,
            _that.orderId,
            _that.productId,
            _that.recipientId,
            _that.type,
            _that.status,
            _that.deliveryDetails,
            _that.trackingNumber,
            _that.shippedAt,
            _that.deliveredAt,
            _that.deliveryProof,
            _that.failureReason,
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
            Uuid productId,
            Uuid recipientId,
            DeliveryType type,
            DeliveryStatus status,
            Map<String, dynamic> deliveryDetails,
            String? trackingNumber,
            DateTime? shippedAt,
            DateTime? deliveredAt,
            String? deliveryProof,
            String? failureReason,
            DateTime createdAt,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDelivery():
        return $default(
            _that.id,
            _that.orderId,
            _that.productId,
            _that.recipientId,
            _that.type,
            _that.status,
            _that.deliveryDetails,
            _that.trackingNumber,
            _that.shippedAt,
            _that.deliveredAt,
            _that.deliveryProof,
            _that.failureReason,
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
            Uuid productId,
            Uuid recipientId,
            DeliveryType type,
            DeliveryStatus status,
            Map<String, dynamic> deliveryDetails,
            String? trackingNumber,
            DateTime? shippedAt,
            DateTime? deliveredAt,
            String? deliveryProof,
            String? failureReason,
            DateTime createdAt,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDelivery() when $default != null:
        return $default(
            _that.id,
            _that.orderId,
            _that.productId,
            _that.recipientId,
            _that.type,
            _that.status,
            _that.deliveryDetails,
            _that.trackingNumber,
            _that.shippedAt,
            _that.deliveredAt,
            _that.deliveryProof,
            _that.failureReason,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductDelivery extends ProductDelivery {
  const _ProductDelivery(
      {required this.id,
      required this.orderId,
      required this.productId,
      required this.recipientId,
      required this.type,
      required this.status,
      required final Map<String, dynamic> deliveryDetails,
      this.trackingNumber,
      this.shippedAt,
      this.deliveredAt,
      this.deliveryProof,
      this.failureReason,
      required this.createdAt,
      required this.updatedAt})
      : _deliveryDetails = deliveryDetails,
        super._();
  factory _ProductDelivery.fromJson(Map<String, dynamic> json) =>
      _$ProductDeliveryFromJson(json);

  @override
  final Uuid id;
  @override
  final Uuid orderId;
  @override
  final Uuid productId;
  @override
  final Uuid recipientId;
  @override
  final DeliveryType type;
  @override
  final DeliveryStatus status;
  final Map<String, dynamic> _deliveryDetails;
  @override
  Map<String, dynamic> get deliveryDetails {
    if (_deliveryDetails is EqualUnmodifiableMapView) return _deliveryDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_deliveryDetails);
  }

  @override
  final String? trackingNumber;
  @override
  final DateTime? shippedAt;
  @override
  final DateTime? deliveredAt;
  @override
  final String? deliveryProof;
  @override
  final String? failureReason;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of ProductDelivery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDeliveryCopyWith<_ProductDelivery> get copyWith =>
      __$ProductDeliveryCopyWithImpl<_ProductDelivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductDeliveryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDelivery &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._deliveryDetails, _deliveryDetails) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber) &&
            (identical(other.shippedAt, shippedAt) ||
                other.shippedAt == shippedAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.deliveryProof, deliveryProof) ||
                other.deliveryProof == deliveryProof) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
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
      productId,
      recipientId,
      type,
      status,
      const DeepCollectionEquality().hash(_deliveryDetails),
      trackingNumber,
      shippedAt,
      deliveredAt,
      deliveryProof,
      failureReason,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ProductDelivery(id: $id, orderId: $orderId, productId: $productId, recipientId: $recipientId, type: $type, status: $status, deliveryDetails: $deliveryDetails, trackingNumber: $trackingNumber, shippedAt: $shippedAt, deliveredAt: $deliveredAt, deliveryProof: $deliveryProof, failureReason: $failureReason, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ProductDeliveryCopyWith<$Res>
    implements $ProductDeliveryCopyWith<$Res> {
  factory _$ProductDeliveryCopyWith(
          _ProductDelivery value, $Res Function(_ProductDelivery) _then) =
      __$ProductDeliveryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Uuid orderId,
      Uuid productId,
      Uuid recipientId,
      DeliveryType type,
      DeliveryStatus status,
      Map<String, dynamic> deliveryDetails,
      String? trackingNumber,
      DateTime? shippedAt,
      DateTime? deliveredAt,
      String? deliveryProof,
      String? failureReason,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$ProductDeliveryCopyWithImpl<$Res>
    implements _$ProductDeliveryCopyWith<$Res> {
  __$ProductDeliveryCopyWithImpl(this._self, this._then);

  final _ProductDelivery _self;
  final $Res Function(_ProductDelivery) _then;

  /// Create a copy of ProductDelivery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? productId = null,
    Object? recipientId = null,
    Object? type = null,
    Object? status = null,
    Object? deliveryDetails = null,
    Object? trackingNumber = freezed,
    Object? shippedAt = freezed,
    Object? deliveredAt = freezed,
    Object? deliveryProof = freezed,
    Object? failureReason = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ProductDelivery(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      recipientId: null == recipientId
          ? _self.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryDetails: null == deliveryDetails
          ? _self._deliveryDetails
          : deliveryDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      trackingNumber: freezed == trackingNumber
          ? _self.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      shippedAt: freezed == shippedAt
          ? _self.shippedAt
          : shippedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryProof: freezed == deliveryProof
          ? _self.deliveryProof
          : deliveryProof // ignore: cast_nullable_to_non_nullable
              as String?,
      failureReason: freezed == failureReason
          ? _self.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

// dart format on
