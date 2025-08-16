import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../../domain/aggregates/referral_program.dart';
import '../../domain/repositories/referral_program_repository.dart';

class InMemoryReferralProgramRepository implements ReferralProgramRepository {
  final Map<String, ReferralProgram> _storage = {};

  @override
  Future<Either<String, ReferralProgram>> findById(Uuid id) async {
    final program = _storage[id.value];
    if (program == null) {
      return left('Referral program not found with id: ${id.value}');
    }
    return right(program);
  }

  @override
  Future<Either<String, ReferralProgram>> findByName(String name) async {
    try {
      final program = _storage.values.firstWhere(
        (p) => p.name == name,
      );
      return right(program);
    } catch (e) {
      return left('Referral program not found with name: $name');
    }
  }

  @override
  Future<Either<String, List<ReferralProgram>>> findActivePrograms() async {
    final activePrograms = _storage.values
        .where((p) => p.isActive)
        .toList();
    return right(activePrograms);
  }

  @override
  Future<Either<String, List<ReferralProgram>>> findAll({
    int? limit,
    int? offset,
  }) async {
    var programs = _storage.values.toList();
    
    if (offset != null && offset > 0) {
      programs = programs.skip(offset).toList();
    }
    
    if (limit != null && limit > 0) {
      programs = programs.take(limit).toList();
    }
    
    return right(programs);
  }

  @override
  Future<Either<String, void>> save(ReferralProgram program) async {
    try {
      _storage[program.id.value] = program;
      return right(unit);
    } catch (e) {
      return left('Failed to save referral program: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, void>> delete(Uuid id) async {
    if (!_storage.containsKey(id.value)) {
      return left('Referral program not found with id: ${id.value}');
    }
    _storage.remove(id.value);
    return right(unit);
  }

  @override
  Future<Either<String, bool>> exists(Uuid id) async {
    return right(_storage.containsKey(id.value));
  }
}