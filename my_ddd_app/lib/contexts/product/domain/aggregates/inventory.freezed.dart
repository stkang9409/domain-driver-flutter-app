// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Inventory {
  Uuid get id;
  Uuid get productId;
  SKU get sku;
  int get quantity;
  int get reservedQuantity;
  int get minimumStock;
  List<StockMovement> get movements;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InventoryCopyWith<Inventory> get copyWith =>
      _$InventoryCopyWithImpl<Inventory>(this as Inventory, _$identity);

  /// Serializes this Inventory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Inventory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.minimumStock, minimumStock) ||
                other.minimumStock == minimumStock) &&
            const DeepCollectionEquality().equals(other.movements, movements) &&
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
      productId,
      sku,
      quantity,
      reservedQuantity,
      minimumStock,
      const DeepCollectionEquality().hash(movements),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'Inventory(id: $id, productId: $productId, sku: $sku, quantity: $quantity, reservedQuantity: $reservedQuantity, minimumStock: $minimumStock, movements: $movements, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) _then) =
      _$InventoryCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Uuid productId,
      SKU sku,
      int quantity,
      int reservedQuantity,
      int minimumStock,
      List<StockMovement> movements,
      DateTime createdAt,
      DateTime updatedAt});

  $SKUCopyWith<$Res> get sku;
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res> implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._self, this._then);

  final Inventory _self;
  final $Res Function(Inventory) _then;

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? sku = null,
    Object? quantity = null,
    Object? reservedQuantity = null,
    Object? minimumStock = null,
    Object? movements = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      sku: null == sku
          ? _self.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as SKU,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reservedQuantity: null == reservedQuantity
          ? _self.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minimumStock: null == minimumStock
          ? _self.minimumStock
          : minimumStock // ignore: cast_nullable_to_non_nullable
              as int,
      movements: null == movements
          ? _self.movements
          : movements // ignore: cast_nullable_to_non_nullable
              as List<StockMovement>,
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

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SKUCopyWith<$Res> get sku {
    return $SKUCopyWith<$Res>(_self.sku, (value) {
      return _then(_self.copyWith(sku: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Inventory].
extension InventoryPatterns on Inventory {
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
    TResult Function(_Inventory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Inventory() when $default != null:
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
    TResult Function(_Inventory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Inventory():
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
    TResult? Function(_Inventory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Inventory() when $default != null:
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
            Uuid productId,
            SKU sku,
            int quantity,
            int reservedQuantity,
            int minimumStock,
            List<StockMovement> movements,
            DateTime createdAt,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Inventory() when $default != null:
        return $default(
            _that.id,
            _that.productId,
            _that.sku,
            _that.quantity,
            _that.reservedQuantity,
            _that.minimumStock,
            _that.movements,
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
            Uuid productId,
            SKU sku,
            int quantity,
            int reservedQuantity,
            int minimumStock,
            List<StockMovement> movements,
            DateTime createdAt,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Inventory():
        return $default(
            _that.id,
            _that.productId,
            _that.sku,
            _that.quantity,
            _that.reservedQuantity,
            _that.minimumStock,
            _that.movements,
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
            Uuid productId,
            SKU sku,
            int quantity,
            int reservedQuantity,
            int minimumStock,
            List<StockMovement> movements,
            DateTime createdAt,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Inventory() when $default != null:
        return $default(
            _that.id,
            _that.productId,
            _that.sku,
            _that.quantity,
            _that.reservedQuantity,
            _that.minimumStock,
            _that.movements,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Inventory extends Inventory {
  const _Inventory(
      {required this.id,
      required this.productId,
      required this.sku,
      required this.quantity,
      required this.reservedQuantity,
      required this.minimumStock,
      required final List<StockMovement> movements,
      required this.createdAt,
      required this.updatedAt})
      : _movements = movements,
        super._();
  factory _Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);

  @override
  final Uuid id;
  @override
  final Uuid productId;
  @override
  final SKU sku;
  @override
  final int quantity;
  @override
  final int reservedQuantity;
  @override
  final int minimumStock;
  final List<StockMovement> _movements;
  @override
  List<StockMovement> get movements {
    if (_movements is EqualUnmodifiableListView) return _movements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movements);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InventoryCopyWith<_Inventory> get copyWith =>
      __$InventoryCopyWithImpl<_Inventory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InventoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Inventory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.minimumStock, minimumStock) ||
                other.minimumStock == minimumStock) &&
            const DeepCollectionEquality()
                .equals(other._movements, _movements) &&
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
      productId,
      sku,
      quantity,
      reservedQuantity,
      minimumStock,
      const DeepCollectionEquality().hash(_movements),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'Inventory(id: $id, productId: $productId, sku: $sku, quantity: $quantity, reservedQuantity: $reservedQuantity, minimumStock: $minimumStock, movements: $movements, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$InventoryCopyWith<$Res>
    implements $InventoryCopyWith<$Res> {
  factory _$InventoryCopyWith(
          _Inventory value, $Res Function(_Inventory) _then) =
      __$InventoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Uuid productId,
      SKU sku,
      int quantity,
      int reservedQuantity,
      int minimumStock,
      List<StockMovement> movements,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $SKUCopyWith<$Res> get sku;
}

/// @nodoc
class __$InventoryCopyWithImpl<$Res> implements _$InventoryCopyWith<$Res> {
  __$InventoryCopyWithImpl(this._self, this._then);

  final _Inventory _self;
  final $Res Function(_Inventory) _then;

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? sku = null,
    Object? quantity = null,
    Object? reservedQuantity = null,
    Object? minimumStock = null,
    Object? movements = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Inventory(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      sku: null == sku
          ? _self.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as SKU,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reservedQuantity: null == reservedQuantity
          ? _self.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minimumStock: null == minimumStock
          ? _self.minimumStock
          : minimumStock // ignore: cast_nullable_to_non_nullable
              as int,
      movements: null == movements
          ? _self._movements
          : movements // ignore: cast_nullable_to_non_nullable
              as List<StockMovement>,
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

  /// Create a copy of Inventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SKUCopyWith<$Res> get sku {
    return $SKUCopyWith<$Res>(_self.sku, (value) {
      return _then(_self.copyWith(sku: value));
    });
  }
}

// dart format on
