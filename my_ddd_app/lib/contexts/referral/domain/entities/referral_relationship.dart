import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../value_objects/referral_status.dart';

part 'referral_relationship.freezed.dart';
part 'referral_relationship.g.dart';

@freezed
abstract class ReferralRelationship with _$ReferralRelationship {
  const ReferralRelationship._();

  const factory ReferralRelationship({
    required Uuid id,
    required Uuid referrerId,
    required Uuid refereeId,
    required String refereeName,
    required Uuid referralLinkId,
    required ReferralStatus status,
    required DateTime createdAt,
    DateTime? completedAt,
    Map<String, dynamic>? metadata,
  }) = _ReferralRelationship;

  factory ReferralRelationship.fromJson(Map<String, dynamic> json) =>
      _$ReferralRelationshipFromJson(json);

  factory ReferralRelationship.create({
    required Uuid referrerId,
    required Uuid refereeId,
    required String refereeName,
    required Uuid referralLinkId,
  }) {
    return ReferralRelationship(
      id: Uuid.generate(),
      referrerId: referrerId,
      refereeId: refereeId,
      refereeName: refereeName,
      referralLinkId: referralLinkId,
      status: const ReferralStatus.pending(),
      createdAt: DateTime.now(),
    );
  }

  ReferralRelationship complete() {
    return copyWith(
      status: const ReferralStatus.completed(),
      completedAt: DateTime.now(),
    );
  }

  ReferralRelationship reject(String reason) {
    return copyWith(
      status: ReferralStatus.rejected(reason),
      metadata: {'rejectionReason': reason},
    );
  }

  ReferralRelationship expire() {
    return copyWith(
      status: const ReferralStatus.expired(),
    );
  }

  bool get canComplete => status.canTransitionToCompleted;
  bool get canReject => status.canTransitionToRejected;
  bool get canExpire => status.canTransitionToExpired;
}