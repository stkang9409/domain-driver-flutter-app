// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_referral_code_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplyReferralCodeCommand {
  String get refereeId;
  String get refereeName;
  String get referralCode;
  Map<String, dynamic>? get metadata;

  /// Create a copy of ApplyReferralCodeCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApplyReferralCodeCommandCopyWith<ApplyReferralCodeCommand> get copyWith =>
      _$ApplyReferralCodeCommandCopyWithImpl<ApplyReferralCodeCommand>(
          this as ApplyReferralCodeCommand, _$identity);

  /// Serializes this ApplyReferralCodeCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplyReferralCodeCommand &&
            (identical(other.refereeId, refereeId) ||
                other.refereeId == refereeId) &&
            (identical(other.refereeName, refereeName) ||
                other.refereeName == refereeName) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refereeId, refereeName,
      referralCode, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'ApplyReferralCodeCommand(refereeId: $refereeId, refereeName: $refereeName, referralCode: $referralCode, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ApplyReferralCodeCommandCopyWith<$Res> {
  factory $ApplyReferralCodeCommandCopyWith(ApplyReferralCodeCommand value,
          $Res Function(ApplyReferralCodeCommand) _then) =
      _$ApplyReferralCodeCommandCopyWithImpl;
  @useResult
  $Res call(
      {String refereeId,
      String refereeName,
      String referralCode,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ApplyReferralCodeCommandCopyWithImpl<$Res>
    implements $ApplyReferralCodeCommandCopyWith<$Res> {
  _$ApplyReferralCodeCommandCopyWithImpl(this._self, this._then);

  final ApplyReferralCodeCommand _self;
  final $Res Function(ApplyReferralCodeCommand) _then;

  /// Create a copy of ApplyReferralCodeCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refereeId = null,
    Object? refereeName = null,
    Object? referralCode = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      refereeId: null == refereeId
          ? _self.refereeId
          : refereeId // ignore: cast_nullable_to_non_nullable
              as String,
      refereeName: null == refereeName
          ? _self.refereeName
          : refereeName // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _self.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApplyReferralCodeCommand].
extension ApplyReferralCodeCommandPatterns on ApplyReferralCodeCommand {
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
    TResult Function(_ApplyReferralCodeCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApplyReferralCodeCommand() when $default != null:
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
    TResult Function(_ApplyReferralCodeCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplyReferralCodeCommand():
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
    TResult? Function(_ApplyReferralCodeCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplyReferralCodeCommand() when $default != null:
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
    TResult Function(String refereeId, String refereeName, String referralCode,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApplyReferralCodeCommand() when $default != null:
        return $default(_that.refereeId, _that.refereeName, _that.referralCode,
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
    TResult Function(String refereeId, String refereeName, String referralCode,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplyReferralCodeCommand():
        return $default(_that.refereeId, _that.refereeName, _that.referralCode,
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
    TResult? Function(String refereeId, String refereeName, String referralCode,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApplyReferralCodeCommand() when $default != null:
        return $default(_that.refereeId, _that.refereeName, _that.referralCode,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApplyReferralCodeCommand implements ApplyReferralCodeCommand {
  const _ApplyReferralCodeCommand(
      {required this.refereeId,
      required this.refereeName,
      required this.referralCode,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _ApplyReferralCodeCommand.fromJson(Map<String, dynamic> json) =>
      _$ApplyReferralCodeCommandFromJson(json);

  @override
  final String refereeId;
  @override
  final String refereeName;
  @override
  final String referralCode;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ApplyReferralCodeCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApplyReferralCodeCommandCopyWith<_ApplyReferralCodeCommand> get copyWith =>
      __$ApplyReferralCodeCommandCopyWithImpl<_ApplyReferralCodeCommand>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApplyReferralCodeCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApplyReferralCodeCommand &&
            (identical(other.refereeId, refereeId) ||
                other.refereeId == refereeId) &&
            (identical(other.refereeName, refereeName) ||
                other.refereeName == refereeName) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refereeId, refereeName,
      referralCode, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'ApplyReferralCodeCommand(refereeId: $refereeId, refereeName: $refereeName, referralCode: $referralCode, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ApplyReferralCodeCommandCopyWith<$Res>
    implements $ApplyReferralCodeCommandCopyWith<$Res> {
  factory _$ApplyReferralCodeCommandCopyWith(_ApplyReferralCodeCommand value,
          $Res Function(_ApplyReferralCodeCommand) _then) =
      __$ApplyReferralCodeCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String refereeId,
      String refereeName,
      String referralCode,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$ApplyReferralCodeCommandCopyWithImpl<$Res>
    implements _$ApplyReferralCodeCommandCopyWith<$Res> {
  __$ApplyReferralCodeCommandCopyWithImpl(this._self, this._then);

  final _ApplyReferralCodeCommand _self;
  final $Res Function(_ApplyReferralCodeCommand) _then;

  /// Create a copy of ApplyReferralCodeCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? refereeId = null,
    Object? refereeName = null,
    Object? referralCode = null,
    Object? metadata = freezed,
  }) {
    return _then(_ApplyReferralCodeCommand(
      refereeId: null == refereeId
          ? _self.refereeId
          : refereeId // ignore: cast_nullable_to_non_nullable
              as String,
      refereeName: null == refereeName
          ? _self.refereeName
          : refereeName // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _self.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
