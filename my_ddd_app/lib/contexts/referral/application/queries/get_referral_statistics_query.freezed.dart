// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_referral_statistics_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetReferralStatisticsQuery {
  String get userId;
  DateTime? get fromDate;
  DateTime? get toDate;

  /// Create a copy of GetReferralStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetReferralStatisticsQueryCopyWith<GetReferralStatisticsQuery>
      get copyWith =>
          _$GetReferralStatisticsQueryCopyWithImpl<GetReferralStatisticsQuery>(
              this as GetReferralStatisticsQuery, _$identity);

  /// Serializes this GetReferralStatisticsQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetReferralStatisticsQuery &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, fromDate, toDate);

  @override
  String toString() {
    return 'GetReferralStatisticsQuery(userId: $userId, fromDate: $fromDate, toDate: $toDate)';
  }
}

/// @nodoc
abstract mixin class $GetReferralStatisticsQueryCopyWith<$Res> {
  factory $GetReferralStatisticsQueryCopyWith(GetReferralStatisticsQuery value,
          $Res Function(GetReferralStatisticsQuery) _then) =
      _$GetReferralStatisticsQueryCopyWithImpl;
  @useResult
  $Res call({String userId, DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class _$GetReferralStatisticsQueryCopyWithImpl<$Res>
    implements $GetReferralStatisticsQueryCopyWith<$Res> {
  _$GetReferralStatisticsQueryCopyWithImpl(this._self, this._then);

  final GetReferralStatisticsQuery _self;
  final $Res Function(GetReferralStatisticsQuery) _then;

  /// Create a copy of GetReferralStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: freezed == fromDate
          ? _self.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _self.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetReferralStatisticsQuery].
extension GetReferralStatisticsQueryPatterns on GetReferralStatisticsQuery {
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
    TResult Function(_GetReferralStatisticsQuery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetReferralStatisticsQuery() when $default != null:
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
    TResult Function(_GetReferralStatisticsQuery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetReferralStatisticsQuery():
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
    TResult? Function(_GetReferralStatisticsQuery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetReferralStatisticsQuery() when $default != null:
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
    TResult Function(String userId, DateTime? fromDate, DateTime? toDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetReferralStatisticsQuery() when $default != null:
        return $default(_that.userId, _that.fromDate, _that.toDate);
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
    TResult Function(String userId, DateTime? fromDate, DateTime? toDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetReferralStatisticsQuery():
        return $default(_that.userId, _that.fromDate, _that.toDate);
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
    TResult? Function(String userId, DateTime? fromDate, DateTime? toDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetReferralStatisticsQuery() when $default != null:
        return $default(_that.userId, _that.fromDate, _that.toDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetReferralStatisticsQuery implements GetReferralStatisticsQuery {
  const _GetReferralStatisticsQuery(
      {required this.userId, this.fromDate, this.toDate});
  factory _GetReferralStatisticsQuery.fromJson(Map<String, dynamic> json) =>
      _$GetReferralStatisticsQueryFromJson(json);

  @override
  final String userId;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  /// Create a copy of GetReferralStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetReferralStatisticsQueryCopyWith<_GetReferralStatisticsQuery>
      get copyWith => __$GetReferralStatisticsQueryCopyWithImpl<
          _GetReferralStatisticsQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetReferralStatisticsQueryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetReferralStatisticsQuery &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, fromDate, toDate);

  @override
  String toString() {
    return 'GetReferralStatisticsQuery(userId: $userId, fromDate: $fromDate, toDate: $toDate)';
  }
}

/// @nodoc
abstract mixin class _$GetReferralStatisticsQueryCopyWith<$Res>
    implements $GetReferralStatisticsQueryCopyWith<$Res> {
  factory _$GetReferralStatisticsQueryCopyWith(
          _GetReferralStatisticsQuery value,
          $Res Function(_GetReferralStatisticsQuery) _then) =
      __$GetReferralStatisticsQueryCopyWithImpl;
  @override
  @useResult
  $Res call({String userId, DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class __$GetReferralStatisticsQueryCopyWithImpl<$Res>
    implements _$GetReferralStatisticsQueryCopyWith<$Res> {
  __$GetReferralStatisticsQueryCopyWithImpl(this._self, this._then);

  final _GetReferralStatisticsQuery _self;
  final $Res Function(_GetReferralStatisticsQuery) _then;

  /// Create a copy of GetReferralStatisticsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_GetReferralStatisticsQuery(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: freezed == fromDate
          ? _self.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _self.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
