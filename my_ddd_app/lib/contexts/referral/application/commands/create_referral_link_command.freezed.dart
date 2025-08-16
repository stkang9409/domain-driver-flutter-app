// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_referral_link_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateReferralLinkCommand {
  String get referrerId;
  String get programId;
  String? get customCode;
  DateTime? get expiresAt;

  /// Create a copy of CreateReferralLinkCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateReferralLinkCommandCopyWith<CreateReferralLinkCommand> get copyWith =>
      _$CreateReferralLinkCommandCopyWithImpl<CreateReferralLinkCommand>(
          this as CreateReferralLinkCommand, _$identity);

  /// Serializes this CreateReferralLinkCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateReferralLinkCommand &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, referrerId, programId, customCode, expiresAt);

  @override
  String toString() {
    return 'CreateReferralLinkCommand(referrerId: $referrerId, programId: $programId, customCode: $customCode, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $CreateReferralLinkCommandCopyWith<$Res> {
  factory $CreateReferralLinkCommandCopyWith(CreateReferralLinkCommand value,
          $Res Function(CreateReferralLinkCommand) _then) =
      _$CreateReferralLinkCommandCopyWithImpl;
  @useResult
  $Res call(
      {String referrerId,
      String programId,
      String? customCode,
      DateTime? expiresAt});
}

/// @nodoc
class _$CreateReferralLinkCommandCopyWithImpl<$Res>
    implements $CreateReferralLinkCommandCopyWith<$Res> {
  _$CreateReferralLinkCommandCopyWithImpl(this._self, this._then);

  final CreateReferralLinkCommand _self;
  final $Res Function(CreateReferralLinkCommand) _then;

  /// Create a copy of CreateReferralLinkCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referrerId = null,
    Object? programId = null,
    Object? customCode = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_self.copyWith(
      referrerId: null == referrerId
          ? _self.referrerId
          : referrerId // ignore: cast_nullable_to_non_nullable
              as String,
      programId: null == programId
          ? _self.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      customCode: freezed == customCode
          ? _self.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateReferralLinkCommand].
extension CreateReferralLinkCommandPatterns on CreateReferralLinkCommand {
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
    TResult Function(_CreateReferralLinkCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateReferralLinkCommand() when $default != null:
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
    TResult Function(_CreateReferralLinkCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReferralLinkCommand():
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
    TResult? Function(_CreateReferralLinkCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReferralLinkCommand() when $default != null:
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
    TResult Function(String referrerId, String programId, String? customCode,
            DateTime? expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateReferralLinkCommand() when $default != null:
        return $default(_that.referrerId, _that.programId, _that.customCode,
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
    TResult Function(String referrerId, String programId, String? customCode,
            DateTime? expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReferralLinkCommand():
        return $default(_that.referrerId, _that.programId, _that.customCode,
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
    TResult? Function(String referrerId, String programId, String? customCode,
            DateTime? expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateReferralLinkCommand() when $default != null:
        return $default(_that.referrerId, _that.programId, _that.customCode,
            _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateReferralLinkCommand implements CreateReferralLinkCommand {
  const _CreateReferralLinkCommand(
      {required this.referrerId,
      required this.programId,
      this.customCode,
      this.expiresAt});
  factory _CreateReferralLinkCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateReferralLinkCommandFromJson(json);

  @override
  final String referrerId;
  @override
  final String programId;
  @override
  final String? customCode;
  @override
  final DateTime? expiresAt;

  /// Create a copy of CreateReferralLinkCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateReferralLinkCommandCopyWith<_CreateReferralLinkCommand>
      get copyWith =>
          __$CreateReferralLinkCommandCopyWithImpl<_CreateReferralLinkCommand>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateReferralLinkCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateReferralLinkCommand &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, referrerId, programId, customCode, expiresAt);

  @override
  String toString() {
    return 'CreateReferralLinkCommand(referrerId: $referrerId, programId: $programId, customCode: $customCode, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$CreateReferralLinkCommandCopyWith<$Res>
    implements $CreateReferralLinkCommandCopyWith<$Res> {
  factory _$CreateReferralLinkCommandCopyWith(_CreateReferralLinkCommand value,
          $Res Function(_CreateReferralLinkCommand) _then) =
      __$CreateReferralLinkCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String referrerId,
      String programId,
      String? customCode,
      DateTime? expiresAt});
}

/// @nodoc
class __$CreateReferralLinkCommandCopyWithImpl<$Res>
    implements _$CreateReferralLinkCommandCopyWith<$Res> {
  __$CreateReferralLinkCommandCopyWithImpl(this._self, this._then);

  final _CreateReferralLinkCommand _self;
  final $Res Function(_CreateReferralLinkCommand) _then;

  /// Create a copy of CreateReferralLinkCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? referrerId = null,
    Object? programId = null,
    Object? customCode = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_CreateReferralLinkCommand(
      referrerId: null == referrerId
          ? _self.referrerId
          : referrerId // ignore: cast_nullable_to_non_nullable
              as String,
      programId: null == programId
          ? _self.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      customCode: freezed == customCode
          ? _self.customCode
          : customCode // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
