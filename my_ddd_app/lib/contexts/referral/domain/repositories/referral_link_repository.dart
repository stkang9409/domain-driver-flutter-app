import 'package:fpdart/fpdart.dart';
import '../aggregates/referral_link.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

abstract class ReferralLinkRepository {
  Future<Either<String, ReferralLink>> save(ReferralLink link);
  Future<Either<String, ReferralLink>> findById(Uuid id);
  Future<Either<String, ReferralLink?>> findByCode(String code);
  Future<Either<String, List<ReferralLink>>> findByReferrerId(Uuid referrerId);
  Future<Either<String, List<ReferralLink>>> findAll();
  Future<Either<String, void>> delete(Uuid id);
}