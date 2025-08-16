// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ProductStatus _$ProductStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'available':
      return AvailableStatus.fromJson(json);
    case 'outOfStock':
      return OutOfStockStatus.fromJson(json);
    case 'discontinued':
      return DiscontinuedStatus.fromJson(json);
    case 'preOrder':
      return PreOrderStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ProductStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ProductStatus {
  /// Serializes this ProductStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductStatus()';
  }
}

/// @nodoc
class $ProductStatusCopyWith<$Res> {
  $ProductStatusCopyWith(ProductStatus _, $Res Function(ProductStatus) __);
}

/// Adds pattern-matching-related methods to [ProductStatus].
extension ProductStatusPatterns on ProductStatus {
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
    TResult Function(AvailableStatus value)? available,
    TResult Function(OutOfStockStatus value)? outOfStock,
    TResult Function(DiscontinuedStatus value)? discontinued,
    TResult Function(PreOrderStatus value)? preOrder,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AvailableStatus() when available != null:
        return available(_that);
      case OutOfStockStatus() when outOfStock != null:
        return outOfStock(_that);
      case DiscontinuedStatus() when discontinued != null:
        return discontinued(_that);
      case PreOrderStatus() when preOrder != null:
        return preOrder(_that);
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
    required TResult Function(AvailableStatus value) available,
    required TResult Function(OutOfStockStatus value) outOfStock,
    required TResult Function(DiscontinuedStatus value) discontinued,
    required TResult Function(PreOrderStatus value) preOrder,
  }) {
    final _that = this;
    switch (_that) {
      case AvailableStatus():
        return available(_that);
      case OutOfStockStatus():
        return outOfStock(_that);
      case DiscontinuedStatus():
        return discontinued(_that);
      case PreOrderStatus():
        return preOrder(_that);
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
    TResult? Function(AvailableStatus value)? available,
    TResult? Function(OutOfStockStatus value)? outOfStock,
    TResult? Function(DiscontinuedStatus value)? discontinued,
    TResult? Function(PreOrderStatus value)? preOrder,
  }) {
    final _that = this;
    switch (_that) {
      case AvailableStatus() when available != null:
        return available(_that);
      case OutOfStockStatus() when outOfStock != null:
        return outOfStock(_that);
      case DiscontinuedStatus() when discontinued != null:
        return discontinued(_that);
      case PreOrderStatus() when preOrder != null:
        return preOrder(_that);
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
    TResult Function()? available,
    TResult Function()? outOfStock,
    TResult Function()? discontinued,
    TResult Function()? preOrder,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AvailableStatus() when available != null:
        return available();
      case OutOfStockStatus() when outOfStock != null:
        return outOfStock();
      case DiscontinuedStatus() when discontinued != null:
        return discontinued();
      case PreOrderStatus() when preOrder != null:
        return preOrder();
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
    required TResult Function() available,
    required TResult Function() outOfStock,
    required TResult Function() discontinued,
    required TResult Function() preOrder,
  }) {
    final _that = this;
    switch (_that) {
      case AvailableStatus():
        return available();
      case OutOfStockStatus():
        return outOfStock();
      case DiscontinuedStatus():
        return discontinued();
      case PreOrderStatus():
        return preOrder();
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
    TResult? Function()? available,
    TResult? Function()? outOfStock,
    TResult? Function()? discontinued,
    TResult? Function()? preOrder,
  }) {
    final _that = this;
    switch (_that) {
      case AvailableStatus() when available != null:
        return available();
      case OutOfStockStatus() when outOfStock != null:
        return outOfStock();
      case DiscontinuedStatus() when discontinued != null:
        return discontinued();
      case PreOrderStatus() when preOrder != null:
        return preOrder();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class AvailableStatus extends ProductStatus {
  const AvailableStatus({final String? $type})
      : $type = $type ?? 'available',
        super._();
  factory AvailableStatus.fromJson(Map<String, dynamic> json) =>
      _$AvailableStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AvailableStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AvailableStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductStatus.available()';
  }
}

/// @nodoc
@JsonSerializable()
class OutOfStockStatus extends ProductStatus {
  const OutOfStockStatus({final String? $type})
      : $type = $type ?? 'outOfStock',
        super._();
  factory OutOfStockStatus.fromJson(Map<String, dynamic> json) =>
      _$OutOfStockStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OutOfStockStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OutOfStockStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductStatus.outOfStock()';
  }
}

/// @nodoc
@JsonSerializable()
class DiscontinuedStatus extends ProductStatus {
  const DiscontinuedStatus({final String? $type})
      : $type = $type ?? 'discontinued',
        super._();
  factory DiscontinuedStatus.fromJson(Map<String, dynamic> json) =>
      _$DiscontinuedStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$DiscontinuedStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DiscontinuedStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductStatus.discontinued()';
  }
}

/// @nodoc
@JsonSerializable()
class PreOrderStatus extends ProductStatus {
  const PreOrderStatus({final String? $type})
      : $type = $type ?? 'preOrder',
        super._();
  factory PreOrderStatus.fromJson(Map<String, dynamic> json) =>
      _$PreOrderStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$PreOrderStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PreOrderStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductStatus.preOrder()';
  }
}

// dart format on
