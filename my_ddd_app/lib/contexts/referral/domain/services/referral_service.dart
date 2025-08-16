import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../value_objects/reward_amount.dart';

abstract class ReferralService {
  Future<Either<String, bool>> validateReferralCode(String code);

  Future<Either<String, bool>> detectFraud({
    required String referrerId,
    required String refereeId,
    required Map<String, dynamic> context,
  });

  Future<Either<String, RewardCalculation>> calculateReward({
    required String programId,
    required String referralId,
    required Map<String, dynamic> context,
  });

  Future<Either<String, bool>> checkEligibility({
    required Uuid userId,
    required Uuid programId,
    Map<String, dynamic>? context,
  });

  Future<Either<String, ReferralStatistics>> getStatistics({
    required Uuid userId,
    DateTime? fromDate,
    DateTime? toDate,
  });
}

class RewardCalculation {
  final RewardAmount referrerAmount;
  final RewardAmount refereeAmount;
  final String reason;
  final Map<String, dynamic> breakdown;

  RewardCalculation({
    required this.referrerAmount,
    required this.refereeAmount,
    required this.reason,
    this.breakdown = const {},
  });
}

class ReferralStatistics {
  final int totalReferrals;
  final int successfulReferrals;
  final int pendingReferrals;
  final RewardAmount totalEarned;
  final RewardAmount totalPending;
  final double conversionRate;
  final Map<String, dynamic> additionalMetrics;

  ReferralStatistics({
    required this.totalReferrals,
    required this.successfulReferrals,
    required this.pendingReferrals,
    required this.totalEarned,
    required this.totalPending,
    required this.conversionRate,
    this.additionalMetrics = const {},
  });
}