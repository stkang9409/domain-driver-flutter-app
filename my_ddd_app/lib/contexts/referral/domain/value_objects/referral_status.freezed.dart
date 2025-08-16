// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ReferralStatus _$ReferralStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pending':
      return PendingStatus.fromJson(json);
    case 'completed':
      return CompletedStatus.fromJson(json);
    case 'rejected':
      return RejectedStatus.fromJson(json);
    case 'expired':
      return ExpiredStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ReferralStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ReferralStatus {
  /// Serializes this ReferralStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReferralStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReferralStatus()';
  }
}

/// @nodoc
class $ReferralStatusCopyWith<$Res> {
  $ReferralStatusCopyWith(ReferralStatus _, $Res Function(ReferralStatus) __);
}

/// Adds pattern-matching-related methods to [ReferralStatus].
extension ReferralStatusPatterns on ReferralStatus {
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
    TResult Function(PendingStatus value)? pending,
    TResult Function(CompletedStatus value)? completed,
    TResult Function(RejectedStatus value)? rejected,
    TResult Function(ExpiredStatus value)? expired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PendingStatus() when pending != null:
        return pending(_that);
      case CompletedStatus() when completed != null:
        return completed(_that);
      case RejectedStatus() when rejected != null:
        return rejected(_that);
      case ExpiredStatus() when expired != null:
        return expired(_that);
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
    required TResult Function(PendingStatus value) pending,
    required TResult Function(CompletedStatus value) completed,
    required TResult Function(RejectedStatus value) rejected,
    required TResult Function(ExpiredStatus value) expired,
  }) {
    final _that = this;
    switch (_that) {
      case PendingStatus():
        return pending(_that);
      case CompletedStatus():
        return completed(_that);
      case RejectedStatus():
        return rejected(_that);
      case ExpiredStatus():
        return expired(_that);
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
    TResult? Function(PendingStatus value)? pending,
    TResult? Function(CompletedStatus value)? completed,
    TResult? Function(RejectedStatus value)? rejected,
    TResult? Function(ExpiredStatus value)? expired,
  }) {
    final _that = this;
    switch (_that) {
      case PendingStatus() when pending != null:
        return pending(_that);
      case CompletedStatus() when completed != null:
        return completed(_that);
      case RejectedStatus() when rejected != null:
        return rejected(_that);
      case ExpiredStatus() when expired != null:
        return expired(_that);
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
    TResult Function()? completed,
    TResult Function(String reason)? rejected,
    TResult Function()? expired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PendingStatus() when pending != null:
        return pending();
      case CompletedStatus() when completed != null:
        return completed();
      case RejectedStatus() when rejected != null:
        return rejected(_that.reason);
      case ExpiredStatus() when expired != null:
        return expired();
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
    required TResult Function() completed,
    required TResult Function(String reason) rejected,
    required TResult Function() expired,
  }) {
    final _that = this;
    switch (_that) {
      case PendingStatus():
        return pending();
      case CompletedStatus():
        return completed();
      case RejectedStatus():
        return rejected(_that.reason);
      case ExpiredStatus():
        return expired();
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
    TResult? Function()? completed,
    TResult? Function(String reason)? rejected,
    TResult? Function()? expired,
  }) {
    final _that = this;
    switch (_that) {
      case PendingStatus() when pending != null:
        return pending();
      case CompletedStatus() when completed != null:
        return completed();
      case RejectedStatus() when rejected != null:
        return rejected(_that.reason);
      case ExpiredStatus() when expired != null:
        return expired();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class PendingStatus extends ReferralStatus {
  const PendingStatus({final String? $type})
      : $type = $type ?? 'pending',
        super._();
  factory PendingStatus.fromJson(Map<String, dynamic> json) =>
      _$PendingStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$PendingStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PendingStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReferralStatus.pending()';
  }
}

/// @nodoc
@JsonSerializable()
class CompletedStatus extends ReferralStatus {
  const CompletedStatus({final String? $type})
      : $type = $type ?? 'completed',
        super._();
  factory CompletedStatus.fromJson(Map<String, dynamic> json) =>
      _$CompletedStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$CompletedStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompletedStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReferralStatus.completed()';
  }
}

/// @nodoc
@JsonSerializable()
class RejectedStatus extends ReferralStatus {
  const RejectedStatus(this.reason, {final String? $type})
      : $type = $type ?? 'rejected',
        super._();
  factory RejectedStatus.fromJson(Map<String, dynamic> json) =>
      _$RejectedStatusFromJson(json);

  final String reason;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ReferralStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RejectedStatusCopyWith<RejectedStatus> get copyWith =>
      _$RejectedStatusCopyWithImpl<RejectedStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RejectedStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RejectedStatus &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString() {
    return 'ReferralStatus.rejected(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $RejectedStatusCopyWith<$Res>
    implements $ReferralStatusCopyWith<$Res> {
  factory $RejectedStatusCopyWith(
          RejectedStatus value, $Res Function(RejectedStatus) _then) =
      _$RejectedStatusCopyWithImpl;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$RejectedStatusCopyWithImpl<$Res>
    implements $RejectedStatusCopyWith<$Res> {
  _$RejectedStatusCopyWithImpl(this._self, this._then);

  final RejectedStatus _self;
  final $Res Function(RejectedStatus) _then;

  /// Create a copy of ReferralStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
  }) {
    return _then(RejectedStatus(
      null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ExpiredStatus extends ReferralStatus {
  const ExpiredStatus({final String? $type})
      : $type = $type ?? 'expired',
        super._();
  factory ExpiredStatus.fromJson(Map<String, dynamic> json) =>
      _$ExpiredStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ExpiredStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExpiredStatus);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReferralStatus.expired()';
  }
}

// dart format on
