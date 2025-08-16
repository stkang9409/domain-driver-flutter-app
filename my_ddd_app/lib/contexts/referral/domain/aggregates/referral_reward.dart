import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../value_objects/reward_amount.dart';
import '../entities/reward_transaction.dart';

part 'referral_reward.freezed.dart';
part 'referral_reward.g.dart';

@freezed
abstract class ReferralReward with _$ReferralReward {
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
  }) = _ReferralReward;

  factory ReferralReward.fromJson(Map<String, dynamic> json) =>
      _$ReferralRewardFromJson(json);

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
    ));
  }

  Either<String, ReferralReward> claimReward({
    required RewardAmount amount,
    required String claimMethod,
  }) {
    if (amount.value > pendingAmount.value) {
      return left('Insufficient pending amount');
    }

    if (amount.value <= 0) {
      return left('Claim amount must be positive');
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
    ));
  }

  Either<String, ReferralReward> reverseReward({
    required RewardAmount amount,
    required String reason,
    required String referralId,
  }) {
    if (amount.value > totalEarned.value) {
      return left('Cannot reverse more than total earned');
    }

    final transaction = RewardTransaction.create(
      type: TransactionType.reversed,
      amount: amount,
      referenceId: referralId,
      description: 'Reversed: $reason',
    );

    final newPending = pendingAmount.value >= amount.value
        ? pendingAmount.subtract(amount)
        : RewardAmount.zero(pendingAmount.currency);

    return right(copyWith(
      totalEarned: totalEarned.subtract(amount),
      pendingAmount: newPending,
      transactions: [...transactions, transaction],
      updatedAt: DateTime.now(),
    ));
  }

  List<RewardTransaction> getTransactionHistory({
    DateTime? from,
    DateTime? to,
    TransactionType? type,
    int? limit,
  }) {
    var filteredTransactions = transactions.where((t) {
      if (from != null && t.createdAt.isBefore(from)) return false;
      if (to != null && t.createdAt.isAfter(to)) return false;
      if (type != null && t.type != type) return false;
      return true;
    }).toList();

    filteredTransactions.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    if (limit != null && filteredTransactions.length > limit) {
      return filteredTransactions.take(limit).toList();
    }

    return filteredTransactions;
  }

  RewardAmount getEarnedInPeriod(DateTime from, DateTime to) {
    final periodTransactions = transactions.where((t) {
      return t.type == TransactionType.earned &&
          t.createdAt.isAfter(from) &&
          t.createdAt.isBefore(to);
    });

    if (periodTransactions.isEmpty) {
      return RewardAmount.zero(totalEarned.currency);
    }

    return periodTransactions
        .map((t) => t.amount)
        .reduce((value, element) => value.add(element));
  }

  bool get hasClaimableRewards => pendingAmount.value > 0;

  double get claimRate {
    if (totalEarned.value == 0) return 0;
    return totalClaimed.value / totalEarned.value;
  }

}