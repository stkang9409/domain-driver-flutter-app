import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../../domain/aggregates/referral_link.dart';
import '../../domain/repositories/referral_link_repository.dart';

class InMemoryReferralLinkRepository implements ReferralLinkRepository {
  final Map<String, ReferralLink> _storage = {};
  final Map<String, ReferralLink> _codeIndex = {};

  @override
  Future<Either<String, ReferralLink>> save(ReferralLink link) async {
    try {
      _storage[link.id.value] = link;
      _codeIndex[link.code.value] = link;
      return right(link);
    } catch (e) {
      return left('Failed to save referral link: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, ReferralLink>> findById(Uuid id) async {
    final link = _storage[id.value];
    if (link == null) {
      return left('Referral link not found with id: ${id.value}');
    }
    return right(link);
  }

  @override
  Future<Either<String, ReferralLink?>> findByCode(String code) async {
    return right(_codeIndex[code]);
  }

  @override
  Future<Either<String, List<ReferralLink>>> findByReferrerId(Uuid referrerId) async {
    final links = _storage.values
        .where((link) => link.referrerId.value == referrerId.value)
        .toList();
    return right(links);
  }

  @override
  Future<Either<String, List<ReferralLink>>> findAll() async {
    return right(_storage.values.toList());
  }

  @override
  Future<Either<String, void>> delete(Uuid id) async {
    final link = _storage[id.value];
    if (link != null) {
      _storage.remove(id.value);
      _codeIndex.remove(link.code.value);
    }
    return right(unit);
  }
}