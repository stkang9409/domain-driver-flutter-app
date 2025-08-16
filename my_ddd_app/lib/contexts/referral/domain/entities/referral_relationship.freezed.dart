// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferralRelationship {
  Uuid get id;
  Uuid get referrerId;
  Uuid get refereeId;
  String get refereeName;
  Uuid get referralLinkId;
  ReferralStatus get status;
  DateTime get createdAt;
  DateTime? get completedAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of ReferralRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReferralRelationshipCopyWith<ReferralRelationship> get copyWith =>
      _$ReferralRelationshipCopyWithImpl<ReferralRelationship>(
          this as ReferralRelationship, _$identity);

  /// Serializes this ReferralRelationship to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReferralRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.refereeId, refereeId) ||
                other.refereeId == refereeId) &&
            (identical(other.refereeName, refereeName) ||
                other.refereeName == refereeName) &&
            (identical(other.referralLinkId, referralLinkId) ||
                other.referralLinkId == referralLinkId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      referrerId,
      refereeId,
      refereeName,
      referralLinkId,
      status,
      createdAt,
      completedAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'ReferralRelationship(id: $id, referrerId: $referrerId, refereeId: $refereeId, refereeName: $refereeName, referralLinkId: $referralLinkId, status: $status, createdAt: $createdAt, completedAt: $completedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ReferralRelationshipCopyWith<$Res> {
  factory $ReferralRelationshipCopyWith(ReferralRelationship value,
          $Res Function(ReferralRelationship) _then) =
      _$ReferralRelationshipCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Uuid referrerId,
      Uuid refereeId,
      String refereeName,
      Uuid referralLinkId,
      ReferralStatus status,
      DateTime createdAt,
      DateTime? completedAt,
      Map<String, dynamic>? metadata});

  $ReferralStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ReferralRelationshipCopyWithImpl<$Res>
    implements $ReferralRelationshipCopyWith<$Res> {
  _$ReferralRelationshipCopyWithImpl(this._self, this._then);

  final ReferralRelationship _self;
  final $Res Function(ReferralRelationship) _then;

  /// Create a copy of ReferralRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referrerId = null,
    Object? refereeId = null,
    Object? refereeName = null,
    Object? referralLinkId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      referrerId: null == referrerId
          ? _self.referrerId
          : referrerId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      refereeId: null == refereeId
          ? _self.refereeId
          : refereeId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      refereeName: null == refereeName
          ? _self.refereeName
          : refereeName // ignore: cast_nullable_to_non_nullable
              as String,
      referralLinkId: null == referralLinkId
          ? _self.referralLinkId
          : referralLinkId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ReferralRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralStatusCopyWith<$Res> get status {
    return $ReferralStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReferralRelationship].
extension ReferralRelationshipPatterns on ReferralRelationship {
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
    TResult Function(_ReferralRelationship value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralRelationship() when $default != null:
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
    TResult Function(_ReferralRelationship value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralRelationship():
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
    TResult? Function(_ReferralRelationship value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralRelationship() when $default != null:
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
            Uuid referrerId,
            Uuid refereeId,
            String refereeName,
            Uuid referralLinkId,
            ReferralStatus status,
            DateTime createdAt,
            DateTime? completedAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralRelationship() when $default != null:
        return $default(
            _that.id,
            _that.referrerId,
            _that.refereeId,
            _that.refereeName,
            _that.referralLinkId,
            _that.status,
            _that.createdAt,
            _that.completedAt,
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
            Uuid id,
            Uuid referrerId,
            Uuid refereeId,
            String refereeName,
            Uuid referralLinkId,
            ReferralStatus status,
            DateTime createdAt,
            DateTime? completedAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralRelationship():
        return $default(
            _that.id,
            _that.referrerId,
            _that.refereeId,
            _that.refereeName,
            _that.referralLinkId,
            _that.status,
            _that.createdAt,
            _that.completedAt,
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
            Uuid id,
            Uuid referrerId,
            Uuid refereeId,
            String refereeName,
            Uuid referralLinkId,
            ReferralStatus status,
            DateTime createdAt,
            DateTime? completedAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralRelationship() when $default != null:
        return $default(
            _that.id,
            _that.referrerId,
            _that.refereeId,
            _that.refereeName,
            _that.referralLinkId,
            _that.status,
            _that.createdAt,
            _that.completedAt,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReferralRelationship extends ReferralRelationship {
  const _ReferralRelationship(
      {required this.id,
      required this.referrerId,
      required this.refereeId,
      required this.refereeName,
      required this.referralLinkId,
      required this.status,
      required this.createdAt,
      this.completedAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata,
        super._();
  factory _ReferralRelationship.fromJson(Map<String, dynamic> json) =>
      _$ReferralRelationshipFromJson(json);

  @override
  final Uuid id;
  @override
  final Uuid referrerId;
  @override
  final Uuid refereeId;
  @override
  final String refereeName;
  @override
  final Uuid referralLinkId;
  @override
  final ReferralStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ReferralRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReferralRelationshipCopyWith<_ReferralRelationship> get copyWith =>
      __$ReferralRelationshipCopyWithImpl<_ReferralRelationship>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReferralRelationshipToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReferralRelationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.refereeId, refereeId) ||
                other.refereeId == refereeId) &&
            (identical(other.refereeName, refereeName) ||
                other.refereeName == refereeName) &&
            (identical(other.referralLinkId, referralLinkId) ||
                other.referralLinkId == referralLinkId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      referrerId,
      refereeId,
      refereeName,
      referralLinkId,
      status,
      createdAt,
      completedAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'ReferralRelationship(id: $id, referrerId: $referrerId, refereeId: $refereeId, refereeName: $refereeName, referralLinkId: $referralLinkId, status: $status, createdAt: $createdAt, completedAt: $completedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ReferralRelationshipCopyWith<$Res>
    implements $ReferralRelationshipCopyWith<$Res> {
  factory _$ReferralRelationshipCopyWith(_ReferralRelationship value,
          $Res Function(_ReferralRelationship) _then) =
      __$ReferralRelationshipCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Uuid referrerId,
      Uuid refereeId,
      String refereeName,
      Uuid referralLinkId,
      ReferralStatus status,
      DateTime createdAt,
      DateTime? completedAt,
      Map<String, dynamic>? metadata});

  @override
  $ReferralStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$ReferralRelationshipCopyWithImpl<$Res>
    implements _$ReferralRelationshipCopyWith<$Res> {
  __$ReferralRelationshipCopyWithImpl(this._self, this._then);

  final _ReferralRelationship _self;
  final $Res Function(_ReferralRelationship) _then;

  /// Create a copy of ReferralRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? referrerId = null,
    Object? refereeId = null,
    Object? refereeName = null,
    Object? referralLinkId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_ReferralRelationship(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      referrerId: null == referrerId
          ? _self.referrerId
          : referrerId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      refereeId: null == refereeId
          ? _self.refereeId
          : refereeId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      refereeName: null == refereeName
          ? _self.refereeName
          : refereeName // ignore: cast_nullable_to_non_nullable
              as String,
      referralLinkId: null == referralLinkId
          ? _self.referralLinkId
          : referralLinkId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReferralStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ReferralRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralStatusCopyWith<$Res> get status {
    return $ReferralStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

// dart format on
