// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deliver_product_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliverProductCommand {
  String get orderId;
  String get productId;
  String get recipientId;
  int get quantity;
  DeliveryReason get reason;
  Map<String, dynamic>? get metadata;

  /// Create a copy of DeliverProductCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeliverProductCommandCopyWith<DeliverProductCommand> get copyWith =>
      _$DeliverProductCommandCopyWithImpl<DeliverProductCommand>(
          this as DeliverProductCommand, _$identity);

  /// Serializes this DeliverProductCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeliverProductCommand &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, productId, recipientId,
      quantity, reason, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'DeliverProductCommand(orderId: $orderId, productId: $productId, recipientId: $recipientId, quantity: $quantity, reason: $reason, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $DeliverProductCommandCopyWith<$Res> {
  factory $DeliverProductCommandCopyWith(DeliverProductCommand value,
          $Res Function(DeliverProductCommand) _then) =
      _$DeliverProductCommandCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      String productId,
      String recipientId,
      int quantity,
      DeliveryReason reason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$DeliverProductCommandCopyWithImpl<$Res>
    implements $DeliverProductCommandCopyWith<$Res> {
  _$DeliverProductCommandCopyWithImpl(this._self, this._then);

  final DeliverProductCommand _self;
  final $Res Function(DeliverProductCommand) _then;

  /// Create a copy of DeliverProductCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? recipientId = null,
    Object? quantity = null,
    Object? reason = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _self.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as DeliveryReason,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeliverProductCommand].
extension DeliverProductCommandPatterns on DeliverProductCommand {
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
    TResult Function(_DeliverProductCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeliverProductCommand() when $default != null:
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
    TResult Function(_DeliverProductCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliverProductCommand():
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
    TResult? Function(_DeliverProductCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliverProductCommand() when $default != null:
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
            String orderId,
            String productId,
            String recipientId,
            int quantity,
            DeliveryReason reason,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeliverProductCommand() when $default != null:
        return $default(_that.orderId, _that.productId, _that.recipientId,
            _that.quantity, _that.reason, _that.metadata);
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
    TResult Function(String orderId, String productId, String recipientId,
            int quantity, DeliveryReason reason, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliverProductCommand():
        return $default(_that.orderId, _that.productId, _that.recipientId,
            _that.quantity, _that.reason, _that.metadata);
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
            String orderId,
            String productId,
            String recipientId,
            int quantity,
            DeliveryReason reason,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeliverProductCommand() when $default != null:
        return $default(_that.orderId, _that.productId, _that.recipientId,
            _that.quantity, _that.reason, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DeliverProductCommand implements DeliverProductCommand {
  const _DeliverProductCommand(
      {required this.orderId,
      required this.productId,
      required this.recipientId,
      required this.quantity,
      required this.reason,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _DeliverProductCommand.fromJson(Map<String, dynamic> json) =>
      _$DeliverProductCommandFromJson(json);

  @override
  final String orderId;
  @override
  final String productId;
  @override
  final String recipientId;
  @override
  final int quantity;
  @override
  final DeliveryReason reason;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of DeliverProductCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeliverProductCommandCopyWith<_DeliverProductCommand> get copyWith =>
      __$DeliverProductCommandCopyWithImpl<_DeliverProductCommand>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeliverProductCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliverProductCommand &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, productId, recipientId,
      quantity, reason, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'DeliverProductCommand(orderId: $orderId, productId: $productId, recipientId: $recipientId, quantity: $quantity, reason: $reason, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$DeliverProductCommandCopyWith<$Res>
    implements $DeliverProductCommandCopyWith<$Res> {
  factory _$DeliverProductCommandCopyWith(_DeliverProductCommand value,
          $Res Function(_DeliverProductCommand) _then) =
      __$DeliverProductCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String orderId,
      String productId,
      String recipientId,
      int quantity,
      DeliveryReason reason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$DeliverProductCommandCopyWithImpl<$Res>
    implements _$DeliverProductCommandCopyWith<$Res> {
  __$DeliverProductCommandCopyWithImpl(this._self, this._then);

  final _DeliverProductCommand _self;
  final $Res Function(_DeliverProductCommand) _then;

  /// Create a copy of DeliverProductCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? recipientId = null,
    Object? quantity = null,
    Object? reason = null,
    Object? metadata = freezed,
  }) {
    return _then(_DeliverProductCommand(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _self.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as DeliveryReason,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
