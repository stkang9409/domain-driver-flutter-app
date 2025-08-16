맞습니다! 제가 DDD 개념을 잘못 적용했네요. 정리하자면:

1. **바운디드 컨텍스트**는 여러 개의 **애그리게이트**를 가질 수 있습니다
2. **애그리게이트**는 하나의 **애그리게이트 루트(Aggregate Root)**와 그에 속한 **엔티티들**, **값 객체들**로 구성됩니다
3. **엔티티**는 애그리게이트의 구성요소입니다

## Referral 바운디드 컨텍스트 재설계

### 올바른 디렉토리 구조

```
lib/contexts/referral/
├── domain/
│   ├── aggregates/
│   │   ├── referral_program.dart      # 애그리게이트 루트
│   │   ├── referral_link.dart         # 애그리게이트 루트
│   │   └── referral_reward.dart       # 애그리게이트 루트
│   ├── entities/
│   │   ├── reward_policy.dart         # ReferralProgram 애그리게이트에 속함
│   │   ├── reward_tier.dart           # ReferralProgram 애그리게이트에 속함
│   │   ├── referral_relationship.dart # ReferralLink 애그리게이트에 속함
│   │   └── reward_transaction.dart    # ReferralReward 애그리게이트에 속함
│   ├── value_objects/
│   │   ├── referral_code.dart
│   │   ├── reward_amount.dart
│   │   └── referral_status.dart
│   ├── events/
│   │   └── referral_events.dart
│   ├── repositories/
│   │   ├── referral_program_repository.dart
│   │   ├── referral_link_repository.dart
│   │   └── referral_reward_repository.dart
│   └── services/
│       └── referral_service.dart
```

### 1. **ReferralProgram 애그리게이트**

```dart
// lib/contexts/referral/domain/aggregates/referral_program.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/contexts/referral/domain/entities/reward_policy.dart';
import 'package:my_ddd_app/contexts/referral/domain/entities/reward_tier.dart';

part 'referral_program.freezed.dart';

@freezed
class ReferralProgram with _$ReferralProgram {
  const ReferralProgram._();

  const factory ReferralProgram({
    required Uuid id,
    required String name,
    required String description,
    required bool isActive,
    required DateTime startDate,
    DateTime? endDate,
    required RewardPolicy defaultRewardPolicy,
    required List<RewardTier> rewardTiers,
    required Map<String, dynamic> metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<DomainEvent> domainEvents,
  }) = _ReferralProgram;

  factory ReferralProgram.create({
    required String name,
    required String description,
    required RewardPolicy defaultRewardPolicy,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return ReferralProgram(
      id: Uuid.generate(),
      name: name,
      description: description,
      isActive: true,
      startDate: startDate ?? DateTime.now(),
      endDate: endDate,
      defaultRewardPolicy: defaultRewardPolicy,
      rewardTiers: [],
      metadata: {},
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      domainEvents: [
        ReferralProgramCreatedEvent(
          programId: Uuid.generate().value,
          name: name,
        ),
      ],
    );
  }

  Either<String, ReferralProgram> addRewardTier(RewardTier tier) {
    // 중복 검사
    if (rewardTiers.any((t) => t.minReferrals == tier.minReferrals)) {
      return left('Tier with same minimum referrals already exists');
    }

    final updatedTiers = [...rewardTiers, tier]
      ..sort((a, b) => a.minReferrals.compareTo(b.minReferrals));

    return right(copyWith(
      rewardTiers: updatedTiers,
      updatedAt: DateTime.now(),
    ));
  }

  RewardTier getCurrentTier(int referralCount) {
    // 현재 추천 수에 해당하는 티어 찾기
    return rewardTiers
        .where((tier) => tier.minReferrals <= referralCount)
        .lastOrNull ?? RewardTier.defaultTier();
  }

  ReferralProgram activate() {
    return copyWith(
      isActive: true,
      updatedAt: DateTime.now(),
      domainEvents: [
        ...domainEvents,
        ReferralProgramActivatedEvent(programId: id.value),
      ],
    );
  }

  ReferralProgram deactivate() {
    return copyWith(
      isActive: false,
      updatedAt: DateTime.now(),
      domainEvents: [
        ...domainEvents,
        ReferralProgramDeactivatedEvent(programId: id.value),
      ],
    );
  }
}
```

```dart
// lib/contexts/referral/domain/entities/reward_policy.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/reward_amount.dart';

part 'reward_policy.freezed.dart';

@freezed
class RewardPolicy with _$RewardPolicy {
  const RewardPolicy._();

  const factory RewardPolicy({
    required String id,
    required RewardType type,
    required RewardAmount referrerReward,
    required RewardAmount refereeReward,
    required RewardCondition condition,
    required int validityDays,
    required Map<String, dynamic> metadata,
  }) = _RewardPolicy;

  bool isEligible(Map<String, dynamic> context) {
    return condition.when(
      immediate: () => true,
      afterPurchase: (minAmount) =>
        (context['purchaseAmount'] as int?) ?? 0 >= minAmount,
      afterSignup: (daysAfter) =>
        DateTime.now().difference(context['signupDate'] as DateTime).inDays >= daysAfter,
      custom: (validator) => validator(context),
    );
  }
}

enum RewardType { points, cash, discount, gift }

@freezed
class RewardCondition with _$RewardCondition {
  const factory RewardCondition.immediate() = ImmediateCondition;
  const factory RewardCondition.afterPurchase(int minAmount) = AfterPurchaseCondition;
  const factory RewardCondition.afterSignup(int daysAfter) = AfterSignupCondition;
  const factory RewardCondition.custom(bool Function(Map<String, dynamic>) validator) = CustomCondition;
}
```

### 2. **ReferralLink 애그리게이트**

```dart
// lib/contexts/referral/domain/aggregates/referral_link.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/referral_code.dart';
import 'package:my_ddd_app/contexts/referral/domain/entities/referral_relationship.dart';

part 'referral_link.freezed.dart';

@freezed
class ReferralLink with _$ReferralLink {
  const ReferralLink._();

  const factory ReferralLink({
    required Uuid id,
    required Uuid referrerId,
    required Uuid programId,
    required ReferralCode code,
    required String shareableUrl,
    required int clickCount,
    required List<ReferralRelationship> relationships,
    required Map<String, dynamic> metadata,
    required DateTime createdAt,
    DateTime? expiresAt,
    @Default([]) List<DomainEvent> domainEvents,
  }) = _ReferralLink;

  factory ReferralLink.create({
    required Uuid referrerId,
    required Uuid programId,
    String? customCode,
    DateTime? expiresAt,
  }) {
    final code = customCode != null
        ? ReferralCode.custom(customCode)
        : ReferralCode.generate();

    return ReferralLink(
      id: Uuid.generate(),
      referrerId: referrerId,
      programId: programId,
      code: code,
      shareableUrl: _generateShareableUrl(code),
      clickCount: 0,
      relationships: [],
      metadata: {},
      createdAt: DateTime.now(),
      expiresAt: expiresAt,
      domainEvents: [
        ReferralLinkCreatedEvent(
          linkId: Uuid.generate().value,
          referrerId: referrerId.value,
          code: code.value,
        ),
      ],
    );
  }

  static String _generateShareableUrl(ReferralCode code) {
    return 'https://app.example.com/ref/${code.value}';
  }

  ReferralLink recordClick({
    String? source,
    Map<String, dynamic>? metadata,
  }) {
    return copyWith(
      clickCount: clickCount + 1,
      metadata: {
        ...this.metadata,
        'lastClickAt': DateTime.now().toIso8601String(),
        'lastClickSource': source,
        if (metadata != null) ...metadata,
      },
    );
  }

  Either<String, ReferralLink> applyReferral({
    required Uuid refereeId,
    required String refereeName,
  }) {
    // 유효성 검사
    if (expiresAt != null && DateTime.now().isAfter(expiresAt!)) {
      return left('Referral link has expired');
    }

    // 자기 자신 추천 방지
    if (referrerId == refereeId) {
      return left('Cannot refer yourself');
    }

    // 중복 추천 방지
    if (relationships.any((r) => r.refereeId == refereeId)) {
      return left('User has already been referred');
    }

    final relationship = ReferralRelationship.create(
      referrerId: referrerId,
      refereeId: refereeId,
      refereeName: refereeName,
      referralLinkId: id,
    );

    return right(copyWith(
      relationships: [...relationships, relationship],
      domainEvents: [
        ...domainEvents,
        ReferralAppliedEvent(
          referralId: relationship.id.value,
          referrerId: referrerId.value,
          refereeId: refereeId.value,
          referralCode: code.value,
        ),
      ],
    ));
  }

  int get successfulReferralCount =>
      relationships.where((r) => r.status == ReferralStatus.completed).length;

  int get pendingReferralCount =>
      relationships.where((r) => r.status == ReferralStatus.pending).length;
}
```

```dart
// lib/contexts/referral/domain/entities/referral_relationship.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/referral_status.dart';

part 'referral_relationship.freezed.dart';

@freezed
class ReferralRelationship with _$ReferralRelationship {
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
      status: ReferralStatus.pending,
      createdAt: DateTime.now(),
    );
  }

  ReferralRelationship complete() {
    return copyWith(
      status: ReferralStatus.completed,
      completedAt: DateTime.now(),
    );
  }

  ReferralRelationship reject(String reason) {
    return copyWith(
      status: ReferralStatus.rejected,
      metadata: {'rejectionReason': reason},
    );
  }
}
```

### 3. **ReferralReward 애그리게이트**

```dart
// lib/contexts/referral/domain/aggregates/referral_reward.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/reward_amount.dart';
import 'package:my_ddd_app/contexts/referral/domain/entities/reward_transaction.dart';

part 'referral_reward.freezed.dart';

@freezed
class ReferralReward with _$ReferralReward {
  const ReferralReward._();

  const factory ReferralReward({
    required Uuid id,
    required Uuid userId,
    required RewardAmount totalEarned,
    required RewardAmount totalClaimed,
    required RewardAmount pendingAmount,
    required List<RewardTransaction> transactions,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<DomainEvent> domainEvents,
  }) = _ReferralReward;

  factory ReferralReward.createForUser(Uuid userId) {
    return ReferralReward(
      id: Uuid.generate(),
      userId: userId,
      totalEarned: RewardAmount.zero(),
      totalClaimed: RewardAmount.zero(),
      pendingAmount: RewardAmount.zero(),
      transactions: [],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  Either<String, ReferralReward> earnReward({
    required RewardAmount amount,
    required String referralId,
    required String description,
  }) {
    final transaction = RewardTransaction.create(
      type: TransactionType.earned,
      amount: amount,
      referenceId: referralId,
      description: description,
    );

    return right(copyWith(
      totalEarned: totalEarned.add(amount),
      pendingAmount: pendingAmount.add(amount),
      transactions: [...transactions, transaction],
      updatedAt: DateTime.now(),
      domainEvents: [
        ...domainEvents,
        RewardEarnedEvent(
          userId: userId.value,
          amount: amount.value,
          referralId: referralId,
        ),
      ],
    ));
  }

  Either<String, ReferralReward> claimReward({
    required RewardAmount amount,
    required String claimMethod,
  }) {
    if (amount.value > pendingAmount.value) {
      return left('Insufficient pending amount');
    }

    final transaction = RewardTransaction.create(
      type: TransactionType.claimed,
      amount: amount,
      referenceId: id.value,
      description: 'Claimed via $claimMethod',
    );

    return right(copyWith(
      totalClaimed: totalClaimed.add(amount),
      pendingAmount: pendingAmount.subtract(amount),
      transactions: [...transactions, transaction],
      updatedAt: DateTime.now(),
      domainEvents: [
        ...domainEvents,
        RewardClaimedEvent(
          userId: userId.value,
          amount: amount.value,
          claimMethod: claimMethod,
        ),
      ],
    ));
  }

  List<RewardTransaction> getTransactionHistory({
    DateTime? from,
    DateTime? to,
    TransactionType? type,
  }) {
    return transactions.where((t) {
      if (from != null && t.createdAt.isBefore(from)) return false;
      if (to != null && t.createdAt.isAfter(to)) return false;
      if (type != null && t.type != type) return false;
      return true;
    }).toList();
  }
}
```

### 4. **Domain Services**

```dart
// lib/contexts/referral/domain/services/referral_service.dart
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';

abstract class ReferralService {
  // 추천 코드 유효성 검증
  Future<Either<Failure, bool>> validateReferralCode(String code);

  // 추천 관계의 사기 탐지
  Future<Either<Failure, bool>> detectFraud({
    required String referrerId,
    required String refereeId,
    required Map<String, dynamic> context,
  });

  // 보상 계산
  Future<Either<Failure, RewardCalculation>> calculateReward({
    required String programId,
    required String referralId,
    required Map<String, dynamic> context,
  });
}

class RewardCalculation {
  final RewardAmount referrerAmount;
  final RewardAmount refereeAmount;
  final String reason;

  RewardCalculation({
    required this.referrerAmount,
    required this.refereeAmount,
    required this.reason,
  });
}
```

### 5. **Application Layer**

```dart
// lib/contexts/referral/application/commands/apply_referral_code_command.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apply_referral_code_command.freezed.dart';

@freezed
class ApplyReferralCodeCommand with _$ApplyReferralCodeCommand {
  const factory ApplyReferralCodeCommand({
    required String refereeId,
    required String refereeName,
    required String referralCode,
    Map<String, dynamic>? metadata,
  }) = _ApplyReferralCodeCommand;
}

// lib/contexts/referral/application/handlers/apply_referral_handler.dart
class ApplyReferralHandler {
  final ReferralLinkRepository _linkRepository;
  final ReferralService _referralService;
  final EventBus _eventBus;

  ApplyReferralHandler(
    this._linkRepository,
    this._referralService,
    this._eventBus,
  );

  Future<Either<Failure, void>> execute(ApplyReferralCodeCommand command) async {
    // 1. 추천 코드로 링크 찾기
    final linkResult = await _linkRepository.findByCode(command.referralCode);

    return linkResult.fold(
      (failure) => left(failure),
      (link) async {
        // 2. 사기 탐지
        final fraudResult = await _referralService.detectFraud(
          referrerId: link.referrerId.value,
          refereeId: command.refereeId,
          context: command.metadata ?? {},
        );

        if (fraudResult.isRight() && fraudResult.getOrElse(() => false)) {
          return left(ValidationFailure('Suspicious referral activity detected'));
        }

        // 3. 추천 적용
        final applyResult = link.applyReferral(
          refereeId: Uuid.fromString(command.refereeId),
          refereeName: command.refereeName,
        );

        return applyResult.fold(
          (error) => left(ValidationFailure(error)),
          (updatedLink) async {
            // 4. 저장
            await _linkRepository.save(updatedLink);

            // 5. 이벤트 발행
            for (final event in updatedLink.domainEvents) {
              _eventBus.publish(event);
            }

            return right(unit);
          },
        );
      },
    );
  }
}
```

이렇게 구성하면:

- **ReferralProgram**: 추천 프로그램의 정책과 보상 체계 관리
- **ReferralLink**: 추천 링크와 추천 관계 관리
- **ReferralReward**: 사용자의 추천 보상 관리

각 애그리게이트가 명확한 경계와 책임을 가지며, 서로 ID로만 참조하여 느슨하게 결합됩니다.
