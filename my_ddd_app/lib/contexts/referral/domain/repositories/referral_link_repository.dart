import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../aggregates/referral_link.dart';

abstract class ReferralLinkRepository {
  Future<Either<String, ReferralLink>> findById(Uuid id);
  
  Future<Either<String, ReferralLink>> findByCode(String code);
  
  Future<Either<String, List<ReferralLink>>> findByReferrer(Uuid referrerId);
  
  Future<Either<String, List<ReferralLink>>> findByProgram(Uuid programId);
  
  Future<Either<String, ReferralLink>> findByReferrerAndProgram(
    Uuid referrerId,
    Uuid programId,
  );
  
  Future<Either<String, void>> save(ReferralLink link);
  
  Future<Either<String, void>> delete(Uuid id);
  
  Future<Either<String, bool>> codeExists(String code);
  
  Future<Either<String, int>> countSuccessfulReferrals(Uuid referrerId);
}