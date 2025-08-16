// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferralProgram {
  Uuid get id;
  String get name;
  String get description;
  bool get isActive;
  DateTime get startDate;
  DateTime? get endDate;
  RewardPolicy get defaultRewardPolicy;
  List<RewardTier> get rewardTiers;
  Map<String, dynamic> get metadata;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of ReferralProgram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReferralProgramCopyWith<ReferralProgram> get copyWith =>
      _$ReferralProgramCopyWithImpl<ReferralProgram>(
          this as ReferralProgram, _$identity);

  /// Serializes this ReferralProgram to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReferralProgram &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.defaultRewardPolicy, defaultRewardPolicy) ||
                other.defaultRewardPolicy == defaultRewardPolicy) &&
            const DeepCollectionEquality()
                .equals(other.rewardTiers, rewardTiers) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
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
      name,
      description,
      isActive,
      startDate,
      endDate,
      defaultRewardPolicy,
      const DeepCollectionEquality().hash(rewardTiers),
      const DeepCollectionEquality().hash(metadata),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ReferralProgram(id: $id, name: $name, description: $description, isActive: $isActive, startDate: $startDate, endDate: $endDate, defaultRewardPolicy: $defaultRewardPolicy, rewardTiers: $rewardTiers, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ReferralProgramCopyWith<$Res> {
  factory $ReferralProgramCopyWith(
          ReferralProgram value, $Res Function(ReferralProgram) _then) =
      _$ReferralProgramCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      String name,
      String description,
      bool isActive,
      DateTime startDate,
      DateTime? endDate,
      RewardPolicy defaultRewardPolicy,
      List<RewardTier> rewardTiers,
      Map<String, dynamic> metadata,
      DateTime createdAt,
      DateTime updatedAt});

  $RewardPolicyCopyWith<$Res> get defaultRewardPolicy;
}

/// @nodoc
class _$ReferralProgramCopyWithImpl<$Res>
    implements $ReferralProgramCopyWith<$Res> {
  _$ReferralProgramCopyWithImpl(this._self, this._then);

  final ReferralProgram _self;
  final $Res Function(ReferralProgram) _then;

  /// Create a copy of ReferralProgram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? defaultRewardPolicy = null,
    Object? rewardTiers = null,
    Object? metadata = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      defaultRewardPolicy: null == defaultRewardPolicy
          ? _self.defaultRewardPolicy
          : defaultRewardPolicy // ignore: cast_nullable_to_non_nullable
              as RewardPolicy,
      rewardTiers: null == rewardTiers
          ? _self.rewardTiers
          : rewardTiers // ignore: cast_nullable_to_non_nullable
              as List<RewardTier>,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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

  /// Create a copy of ReferralProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardPolicyCopyWith<$Res> get defaultRewardPolicy {
    return $RewardPolicyCopyWith<$Res>(_self.defaultRewardPolicy, (value) {
      return _then(_self.copyWith(defaultRewardPolicy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReferralProgram].
extension ReferralProgramPatterns on ReferralProgram {
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
    TResult Function(_ReferralProgram value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralProgram() when $default != null:
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
    TResult Function(_ReferralProgram value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralProgram():
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
    TResult? Function(_ReferralProgram value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralProgram() when $default != null:
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
            String name,
            String description,
            bool isActive,
            DateTime startDate,
            DateTime? endDate,
            RewardPolicy defaultRewardPolicy,
            List<RewardTier> rewardTiers,
            Map<String, dynamic> metadata,
            DateTime createdAt,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralProgram() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.isActive,
            _that.startDate,
            _that.endDate,
            _that.defaultRewardPolicy,
            _that.rewardTiers,
            _that.metadata,
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
            String name,
            String description,
            bool isActive,
            DateTime startDate,
            DateTime? endDate,
            RewardPolicy defaultRewardPolicy,
            List<RewardTier> rewardTiers,
            Map<String, dynamic> metadata,
            DateTime createdAt,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralProgram():
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.isActive,
            _that.startDate,
            _that.endDate,
            _that.defaultRewardPolicy,
            _that.rewardTiers,
            _that.metadata,
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
            String name,
            String description,
            bool isActive,
            DateTime startDate,
            DateTime? endDate,
            RewardPolicy defaultRewardPolicy,
            List<RewardTier> rewardTiers,
            Map<String, dynamic> metadata,
            DateTime createdAt,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralProgram() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.isActive,
            _that.startDate,
            _that.endDate,
            _that.defaultRewardPolicy,
            _that.rewardTiers,
            _that.metadata,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReferralProgram extends ReferralProgram {
  const _ReferralProgram(
      {required this.id,
      required this.name,
      required this.description,
      required this.isActive,
      required this.startDate,
      this.endDate,
      required this.defaultRewardPolicy,
      required final List<RewardTier> rewardTiers,
      required final Map<String, dynamic> metadata,
      required this.createdAt,
      required this.updatedAt})
      : _rewardTiers = rewardTiers,
        _metadata = metadata,
        super._();
  factory _ReferralProgram.fromJson(Map<String, dynamic> json) =>
      _$ReferralProgramFromJson(json);

  @override
  final Uuid id;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool isActive;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final RewardPolicy defaultRewardPolicy;
  final List<RewardTier> _rewardTiers;
  @override
  List<RewardTier> get rewardTiers {
    if (_rewardTiers is EqualUnmodifiableListView) return _rewardTiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewardTiers);
  }

  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of ReferralProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReferralProgramCopyWith<_ReferralProgram> get copyWith =>
      __$ReferralProgramCopyWithImpl<_ReferralProgram>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReferralProgramToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReferralProgram &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.defaultRewardPolicy, defaultRewardPolicy) ||
                other.defaultRewardPolicy == defaultRewardPolicy) &&
            const DeepCollectionEquality()
                .equals(other._rewardTiers, _rewardTiers) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
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
      name,
      description,
      isActive,
      startDate,
      endDate,
      defaultRewardPolicy,
      const DeepCollectionEquality().hash(_rewardTiers),
      const DeepCollectionEquality().hash(_metadata),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'ReferralProgram(id: $id, name: $name, description: $description, isActive: $isActive, startDate: $startDate, endDate: $endDate, defaultRewardPolicy: $defaultRewardPolicy, rewardTiers: $rewardTiers, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ReferralProgramCopyWith<$Res>
    implements $ReferralProgramCopyWith<$Res> {
  factory _$ReferralProgramCopyWith(
          _ReferralProgram value, $Res Function(_ReferralProgram) _then) =
      __$ReferralProgramCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      String name,
      String description,
      bool isActive,
      DateTime startDate,
      DateTime? endDate,
      RewardPolicy defaultRewardPolicy,
      List<RewardTier> rewardTiers,
      Map<String, dynamic> metadata,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $RewardPolicyCopyWith<$Res> get defaultRewardPolicy;
}

/// @nodoc
class __$ReferralProgramCopyWithImpl<$Res>
    implements _$ReferralProgramCopyWith<$Res> {
  __$ReferralProgramCopyWithImpl(this._self, this._then);

  final _ReferralProgram _self;
  final $Res Function(_ReferralProgram) _then;

  /// Create a copy of ReferralProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? defaultRewardPolicy = null,
    Object? rewardTiers = null,
    Object? metadata = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ReferralProgram(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      defaultRewardPolicy: null == defaultRewardPolicy
          ? _self.defaultRewardPolicy
          : defaultRewardPolicy // ignore: cast_nullable_to_non_nullable
              as RewardPolicy,
      rewardTiers: null == rewardTiers
          ? _self._rewardTiers
          : rewardTiers // ignore: cast_nullable_to_non_nullable
              as List<RewardTier>,
      metadata: null == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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

  /// Create a copy of ReferralProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardPolicyCopyWith<$Res> get defaultRewardPolicy {
    return $RewardPolicyCopyWith<$Res>(_self.defaultRewardPolicy, (value) {
      return _then(_self.copyWith(defaultRewardPolicy: value));
    });
  }
}

// dart format on
