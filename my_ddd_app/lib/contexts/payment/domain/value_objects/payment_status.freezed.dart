// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PaymentStatus _$PaymentStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pending':
      return PendingPaymentStatus.fromJson(json);
    case 'processing':
      return ProcessingPaymentStatus.fromJson(json);
    case 'completed':
      return CompletedPaymentStatus.fromJson(json);
    case 'failed':
      return FailedPaymentStatus.fromJson(json);
    case 'refunded':
      return RefundedPaymentStatus.fromJson(json);
    case 'cancelled':
      return CancelledPaymentStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PaymentStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PaymentStatus {
  /// Serializes this PaymentStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentStatus()';
  }
}

/// @nodoc
class $PaymentStatusCopyWith<$Res> {
  $PaymentStatusCopyWith(PaymentStatus _, $Res Function(PaymentStatus) __);
}

/// Adds pattern-matching-related methods to [PaymentStatus].
extension PaymentStatusPatterns on PaymentStatus {
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
    TResult Function(PendingPaymentStatus value)? pending,
    TResult Function(ProcessingPaymentStatus value)? processing,
    TResult Function(CompletedPaymentStatus value)? completed,
    TResult Function(FailedPaymentStatus value)? failed,
    TResult Function(RefundedPaymentStatus value)? refunded,
    TResult Function(CancelledPaymentStatus value)? cancelled,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PendingPaymentStatus() when pending != null:
        return pending(_that);
      case ProcessingPaymentStatus() when processing != null:
        return processing(_that);
      case CompletedPaymentStatus() when completed != null:
        return completed(_that);
      case FailedPaymentStatus() when failed != null:
        return failed(_that);
      case RefundedPaymentStatus() when refunded != null:
        return refunded(_that);
      case CancelledPaymentStatus() when cancelled != null:
        return cancelled(_that);
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
    required TResult Function(PendingPaymentStatus value) pending,
    required TResult Function(ProcessingPaymentStatus value) processing,
    required TResult Function(CompletedPaymentStatus value) completed,
    required TResult Function(FailedPaymentStatus value) failed,
    required TResult Function(RefundedPaymentStatus value) refunded,
    required TResult Function(CancelledPaymentStatus value) cancelled,
  }) {
    final _that = this;
    switch (_that) {
      case PendingPaymentStatus():
        return pending(_that);
      case ProcessingPaymentStatus():
        return processing(_that);
      case CompletedPaymentStatus():
        return completed(_that);
      case FailedPaymentStatus():
        return failed(_that);
      case RefundedPaymentStatus():
        return refunded(_that);
      case CancelledPaymentStatus():
        return cancelled(_that);
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
    TResult? Function(PendingPaymentStatus value)? pending,
    TResult? Function(ProcessingPaymentStatus value)? processing,
    TResult? Function(CompletedPaymentStatus value)? completed,
    TResult? Function(FailedPaymentStatus value)? failed,
    TResult? Function(RefundedPaymentStatus value)? refunded,
    TResult? Function(CancelledPaymentStatus value)? cancelled,
  }) {
    final _that = this;
    switch (_that) {
      case PendingPaymentStatus() when pending != null:
        return pending(_that);
      case ProcessingPaymentStatus() when processing != null:
        return processing(_that);
      case CompletedPaymentStatus() when completed != null:
        return completed(_that);
      case FailedPaymentStatus() when failed != null:
        return failed(_that);
      case RefundedPaymentStatus() when refunded != null:
        return refunded(_that);
      case CancelledPaymentStatus() when cancelled != null:
        return cancelled(_that);
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
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function(String reason)? failed,
    TResult Function(double amount, String reason)? refunded,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PendingPaymentStatus() when pending != null:
        return pending();
      case ProcessingPaymentStatus() when processing != null:
        return processing();
      case CompletedPaymentStatus() when completed != null:
        return completed();
      case FailedPaymentStatus() when failed != null:
        return failed(_that.reason);
      case RefundedPaymentStatus() when refunded != null:
        return refunded(_that.amount, _that.reason);
      case CancelledPaymentStatus() when cancelled != null:
        return cancelled();
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
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function(String reason) failed,
    required TResult Function(double amount, String reason) refunded,
    required TResult Function() cancelled,
  }) {
    final _that = this;
    switch (_that) {
      case PendingPaymentStatus():
        return pending();
      case ProcessingPaymentStatus():
        return processing();
      case CompletedPaymentStatus():
        return completed();
      case FailedPaymentStatus():
        return failed(_that.reason);
      case RefundedPaymentStatus():
        return refunded(_that.amount, _that.reason);
      case CancelledPaymentStatus():
        return cancelled();
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
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function(String reason)? failed,
    TResult? Function(double amount, String reason)? refunded,
    TResult? Function()? cancelled,
  }) {
    final _that = this;
    switch (_that) {
      case PendingPaymentStatus() when pending != null:
        return pending();
      case ProcessingPaymentStatus() when processing != null:
        return processing();
      case CompletedPaymentStatus() when completed != null:
        return completed();
      case FailedPaymentStatus() when failed != null:
        return failed(_that.reason);
      case RefundedPaymentStatus() when refunded != null:
        return refunded(_that.amount, _that.reason);
      case CancelledPaymentStatus() when cancelled != null:
        return cancelled();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class PendingPaymentStatus extends PaymentStatus {
  const PendingPaymentStatus({final String? $type})
      : $type = $type ?? 'pending',
        super._();
  factory PendingPaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$PendingPaymentStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$PendingPaymentStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PendingPaymentStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentStatus.pending()';
  }
}

/// @nodoc
@JsonSerializable()
class ProcessingPaymentStatus extends PaymentStatus {
  const ProcessingPaymentStatus({final String? $type})
      : $type = $type ?? 'processing',
        super._();
  factory ProcessingPaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$ProcessingPaymentStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ProcessingPaymentStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProcessingPaymentStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentStatus.processing()';
  }
}

/// @nodoc
@JsonSerializable()
class CompletedPaymentStatus extends PaymentStatus {
  const CompletedPaymentStatus({final String? $type})
      : $type = $type ?? 'completed',
        super._();
  factory CompletedPaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$CompletedPaymentStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CompletedPaymentStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompletedPaymentStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentStatus.completed()';
  }
}

/// @nodoc
@JsonSerializable()
class FailedPaymentStatus extends PaymentStatus {
  const FailedPaymentStatus(this.reason, {final String? $type})
      : $type = $type ?? 'failed',
        super._();
  factory FailedPaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$FailedPaymentStatusFromJson(json);

  final String reason;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailedPaymentStatusCopyWith<FailedPaymentStatus> get copyWith =>
      _$FailedPaymentStatusCopyWithImpl<FailedPaymentStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FailedPaymentStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailedPaymentStatus &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString() {
    return 'PaymentStatus.failed(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $FailedPaymentStatusCopyWith<$Res>
    implements $PaymentStatusCopyWith<$Res> {
  factory $FailedPaymentStatusCopyWith(
          FailedPaymentStatus value, $Res Function(FailedPaymentStatus) _then) =
      _$FailedPaymentStatusCopyWithImpl;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$FailedPaymentStatusCopyWithImpl<$Res>
    implements $FailedPaymentStatusCopyWith<$Res> {
  _$FailedPaymentStatusCopyWithImpl(this._self, this._then);

  final FailedPaymentStatus _self;
  final $Res Function(FailedPaymentStatus) _then;

  /// Create a copy of PaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
  }) {
    return _then(FailedPaymentStatus(
      null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RefundedPaymentStatus extends PaymentStatus {
  const RefundedPaymentStatus(
      {required this.amount, required this.reason, final String? $type})
      : $type = $type ?? 'refunded',
        super._();
  factory RefundedPaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$RefundedPaymentStatusFromJson(json);

  final double amount;
  final String reason;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefundedPaymentStatusCopyWith<RefundedPaymentStatus> get copyWith =>
      _$RefundedPaymentStatusCopyWithImpl<RefundedPaymentStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RefundedPaymentStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefundedPaymentStatus &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, reason);

  @override
  String toString() {
    return 'PaymentStatus.refunded(amount: $amount, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $RefundedPaymentStatusCopyWith<$Res>
    implements $PaymentStatusCopyWith<$Res> {
  factory $RefundedPaymentStatusCopyWith(RefundedPaymentStatus value,
          $Res Function(RefundedPaymentStatus) _then) =
      _$RefundedPaymentStatusCopyWithImpl;
  @useResult
  $Res call({double amount, String reason});
}

/// @nodoc
class _$RefundedPaymentStatusCopyWithImpl<$Res>
    implements $RefundedPaymentStatusCopyWith<$Res> {
  _$RefundedPaymentStatusCopyWithImpl(this._self, this._then);

  final RefundedPaymentStatus _self;
  final $Res Function(RefundedPaymentStatus) _then;

  /// Create a copy of PaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? reason = null,
  }) {
    return _then(RefundedPaymentStatus(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CancelledPaymentStatus extends PaymentStatus {
  const CancelledPaymentStatus({final String? $type})
      : $type = $type ?? 'cancelled',
        super._();
  factory CancelledPaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$CancelledPaymentStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CancelledPaymentStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelledPaymentStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentStatus.cancelled()';
  }
}

// dart format on
