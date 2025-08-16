import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_referral_statistics_query.freezed.dart';
part 'get_referral_statistics_query.g.dart';

@freezed
abstract class GetReferralStatisticsQuery with _$GetReferralStatisticsQuery {
  const factory GetReferralStatisticsQuery({
    required String userId,
    DateTime? fromDate,
    DateTime? toDate,
  }) = _GetReferralStatisticsQuery;

  factory GetReferralStatisticsQuery.fromJson(Map<String, dynamic> json) =>
      _$GetReferralStatisticsQueryFromJson(json);
}