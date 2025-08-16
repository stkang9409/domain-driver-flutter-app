import 'package:my_ddd_app/shared/domain/events/domain_event.dart';

class ReferralProgramCreatedEvent extends DomainEvent {
  final String name;

  ReferralProgramCreatedEvent({
    required String programId,
    required this.name,
    DateTime? occurredAt,
  }) : super(aggregateId: programId, occurredAt: occurredAt);
}

class ReferralProgramActivatedEvent extends DomainEvent {
  ReferralProgramActivatedEvent({
    required String programId,
    DateTime? occurredAt,
  }) : super(aggregateId: programId, occurredAt: occurredAt);
}

class ReferralProgramDeactivatedEvent extends DomainEvent {
  ReferralProgramDeactivatedEvent({
    required String programId,
    DateTime? occurredAt,
  }) : super(aggregateId: programId, occurredAt: occurredAt);
}

class ReferralLinkCreatedEvent extends DomainEvent {
  final String referrerId;
  final String code;

  ReferralLinkCreatedEvent({
    required String linkId,
    required this.referrerId,
    required this.code,
    DateTime? occurredAt,
  }) : super(aggregateId: linkId, occurredAt: occurredAt);
}

class ReferralAppliedEvent extends DomainEvent {
  final String referrerId;
  final String refereeId;
  final String referralCode;

  ReferralAppliedEvent({
    required String referralId,
    required this.referrerId,
    required this.refereeId,
    required this.referralCode,
    DateTime? occurredAt,
  }) : super(aggregateId: referralId, occurredAt: occurredAt);
}

class RewardEarnedEvent extends DomainEvent {
  final double amount;
  final String referralId;

  RewardEarnedEvent({
    required String userId,
    required this.amount,
    required this.referralId,
    DateTime? occurredAt,
  }) : super(aggregateId: userId, occurredAt: occurredAt);
}

class RewardClaimedEvent extends DomainEvent {
  final double amount;
  final String claimMethod;

  RewardClaimedEvent({
    required String userId,
    required this.amount,
    required this.claimMethod,
    DateTime? occurredAt,
  }) : super(aggregateId: userId, occurredAt: occurredAt);
}
