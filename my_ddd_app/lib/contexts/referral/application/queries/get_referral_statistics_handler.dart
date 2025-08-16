import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../../domain/services/referral_service.dart';
import 'get_referral_statistics_query.dart';

class GetReferralStatisticsHandler {
  final ReferralService _referralService;

  GetReferralStatisticsHandler(this._referralService);

  Future<Either<String, ReferralStatistics>> execute(
    GetReferralStatisticsQuery query,
  ) async {
    return await _referralService.getStatistics(
      userId: Uuid.fromString(query.userId),
      fromDate: query.fromDate,
      toDate: query.toDate,
    );
  }
}