import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../aggregates/referral_program.dart';

abstract class ReferralProgramRepository {
  Future<Either<String, ReferralProgram>> findById(Uuid id);
  
  Future<Either<String, ReferralProgram>> findByName(String name);
  
  Future<Either<String, List<ReferralProgram>>> findActivePrograms();
  
  Future<Either<String, List<ReferralProgram>>> findAll({
    int? limit,
    int? offset,
  });
  
  Future<Either<String, void>> save(ReferralProgram program);
  
  Future<Either<String, void>> delete(Uuid id);
  
  Future<Either<String, bool>> exists(Uuid id);
}