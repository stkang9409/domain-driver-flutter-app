// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferralLink {
  Uuid get id;
  Uuid get referrerId;
  Uuid get programId;
  ReferralCode get code;
  String get shareableUrl;
  int get clickCount;
  List<ReferralRelationship> get relationships;
  Map<String, dynamic> get metadata;
  DateTime get createdAt;
  DateTime? get expiresAt;

  /// Create a copy of ReferralLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReferralLinkCopyWith<ReferralLink> get copyWith =>
      _$ReferralLinkCopyWithImpl<ReferralLink>(
          this as ReferralLink, _$identity);

  /// Serializes this ReferralLink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReferralLink &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.shareableUrl, shareableUrl) ||
                other.shareableUrl == shareableUrl) &&
            (identical(other.clickCount, clickCount) ||
                other.clickCount == clickCount) &&
            const DeepCollectionEquality()
                .equals(other.relationships, relationships) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      referrerId,
      programId,
      code,
      shareableUrl,
      clickCount,
      const DeepCollectionEquality().hash(relationships),
      const DeepCollectionEquality().hash(metadata),
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'ReferralLink(id: $id, referrerId: $referrerId, programId: $programId, code: $code, shareableUrl: $shareableUrl, clickCount: $clickCount, relationships: $relationships, metadata: $metadata, createdAt: $createdAt, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $ReferralLinkCopyWith<$Res> {
  factory $ReferralLinkCopyWith(
          ReferralLink value, $Res Function(ReferralLink) _then) =
      _$ReferralLinkCopyWithImpl;
  @useResult
  $Res call(
      {Uuid id,
      Uuid referrerId,
      Uuid programId,
      ReferralCode code,
      String shareableUrl,
      int clickCount,
      List<ReferralRelationship> relationships,
      Map<String, dynamic> metadata,
      DateTime createdAt,
      DateTime? expiresAt});

  $ReferralCodeCopyWith<$Res> get code;
}

/// @nodoc
class _$ReferralLinkCopyWithImpl<$Res> implements $ReferralLinkCopyWith<$Res> {
  _$ReferralLinkCopyWithImpl(this._self, this._then);

  final ReferralLink _self;
  final $Res Function(ReferralLink) _then;

  /// Create a copy of ReferralLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referrerId = null,
    Object? programId = null,
    Object? code = null,
    Object? shareableUrl = null,
    Object? clickCount = null,
    Object? relationships = null,
    Object? metadata = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
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
      programId: null == programId
          ? _self.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as ReferralCode,
      shareableUrl: null == shareableUrl
          ? _self.shareableUrl
          : shareableUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clickCount: null == clickCount
          ? _self.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int,
      relationships: null == relationships
          ? _self.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<ReferralRelationship>,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of ReferralLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeCopyWith<$Res> get code {
    return $ReferralCodeCopyWith<$Res>(_self.code, (value) {
      return _then(_self.copyWith(code: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReferralLink].
extension ReferralLinkPatterns on ReferralLink {
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
    TResult Function(_ReferralLink value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralLink() when $default != null:
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
    TResult Function(_ReferralLink value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralLink():
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
    TResult? Function(_ReferralLink value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralLink() when $default != null:
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
            Uuid programId,
            ReferralCode code,
            String shareableUrl,
            int clickCount,
            List<ReferralRelationship> relationships,
            Map<String, dynamic> metadata,
            DateTime createdAt,
            DateTime? expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReferralLink() when $default != null:
        return $default(
            _that.id,
            _that.referrerId,
            _that.programId,
            _that.code,
            _that.shareableUrl,
            _that.clickCount,
            _that.relationships,
            _that.metadata,
            _that.createdAt,
            _that.expiresAt);
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
            Uuid programId,
            ReferralCode code,
            String shareableUrl,
            int clickCount,
            List<ReferralRelationship> relationships,
            Map<String, dynamic> metadata,
            DateTime createdAt,
            DateTime? expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralLink():
        return $default(
            _that.id,
            _that.referrerId,
            _that.programId,
            _that.code,
            _that.shareableUrl,
            _that.clickCount,
            _that.relationships,
            _that.metadata,
            _that.createdAt,
            _that.expiresAt);
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
            Uuid programId,
            ReferralCode code,
            String shareableUrl,
            int clickCount,
            List<ReferralRelationship> relationships,
            Map<String, dynamic> metadata,
            DateTime createdAt,
            DateTime? expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReferralLink() when $default != null:
        return $default(
            _that.id,
            _that.referrerId,
            _that.programId,
            _that.code,
            _that.shareableUrl,
            _that.clickCount,
            _that.relationships,
            _that.metadata,
            _that.createdAt,
            _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReferralLink extends ReferralLink {
  const _ReferralLink(
      {required this.id,
      required this.referrerId,
      required this.programId,
      required this.code,
      required this.shareableUrl,
      required this.clickCount,
      required final List<ReferralRelationship> relationships,
      required final Map<String, dynamic> metadata,
      required this.createdAt,
      this.expiresAt})
      : _relationships = relationships,
        _metadata = metadata,
        super._();
  factory _ReferralLink.fromJson(Map<String, dynamic> json) =>
      _$ReferralLinkFromJson(json);

  @override
  final Uuid id;
  @override
  final Uuid referrerId;
  @override
  final Uuid programId;
  @override
  final ReferralCode code;
  @override
  final String shareableUrl;
  @override
  final int clickCount;
  final List<ReferralRelationship> _relationships;
  @override
  List<ReferralRelationship> get relationships {
    if (_relationships is EqualUnmodifiableListView) return _relationships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relationships);
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
  final DateTime? expiresAt;

  /// Create a copy of ReferralLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReferralLinkCopyWith<_ReferralLink> get copyWith =>
      __$ReferralLinkCopyWithImpl<_ReferralLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReferralLinkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReferralLink &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.shareableUrl, shareableUrl) ||
                other.shareableUrl == shareableUrl) &&
            (identical(other.clickCount, clickCount) ||
                other.clickCount == clickCount) &&
            const DeepCollectionEquality()
                .equals(other._relationships, _relationships) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      referrerId,
      programId,
      code,
      shareableUrl,
      clickCount,
      const DeepCollectionEquality().hash(_relationships),
      const DeepCollectionEquality().hash(_metadata),
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'ReferralLink(id: $id, referrerId: $referrerId, programId: $programId, code: $code, shareableUrl: $shareableUrl, clickCount: $clickCount, relationships: $relationships, metadata: $metadata, createdAt: $createdAt, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$ReferralLinkCopyWith<$Res>
    implements $ReferralLinkCopyWith<$Res> {
  factory _$ReferralLinkCopyWith(
          _ReferralLink value, $Res Function(_ReferralLink) _then) =
      __$ReferralLinkCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Uuid id,
      Uuid referrerId,
      Uuid programId,
      ReferralCode code,
      String shareableUrl,
      int clickCount,
      List<ReferralRelationship> relationships,
      Map<String, dynamic> metadata,
      DateTime createdAt,
      DateTime? expiresAt});

  @override
  $ReferralCodeCopyWith<$Res> get code;
}

/// @nodoc
class __$ReferralLinkCopyWithImpl<$Res>
    implements _$ReferralLinkCopyWith<$Res> {
  __$ReferralLinkCopyWithImpl(this._self, this._then);

  final _ReferralLink _self;
  final $Res Function(_ReferralLink) _then;

  /// Create a copy of ReferralLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? referrerId = null,
    Object? programId = null,
    Object? code = null,
    Object? shareableUrl = null,
    Object? clickCount = null,
    Object? relationships = null,
    Object? metadata = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_ReferralLink(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      referrerId: null == referrerId
          ? _self.referrerId
          : referrerId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      programId: null == programId
          ? _self.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as Uuid,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as ReferralCode,
      shareableUrl: null == shareableUrl
          ? _self.shareableUrl
          : shareableUrl // ignore: cast_nullable_to_non_nullable
              as String,
      clickCount: null == clickCount
          ? _self.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int,
      relationships: null == relationships
          ? _self._relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<ReferralRelationship>,
      metadata: null == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of ReferralLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralCodeCopyWith<$Res> get code {
    return $ReferralCodeCopyWith<$Res>(_self.code, (value) {
      return _then(_self.copyWith(code: value));
    });
  }
}

// dart format on
