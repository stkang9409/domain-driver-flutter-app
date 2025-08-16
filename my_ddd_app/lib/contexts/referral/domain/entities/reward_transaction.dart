import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../value_objects/reward_amount.dart';

part 'reward_transaction.freezed.dart';
part 'reward_transaction.g.dart';

enum TransactionType { earned, claimed, expired, reversed }

@freezed
abstract class RewardTransaction with _$RewardTransaction {
  const RewardTransaction._();

  const factory RewardTransaction({
    required Uuid id,
    required TransactionType type,
    required RewardAmount amount,
    required String referenceId,
    required String description,
    required DateTime createdAt,
    Map<String, dynamic>? metadata,
  }) = _RewardTransaction;

  factory RewardTransaction.fromJson(Map<String, dynamic> json) =>
      _$RewardTransactionFromJson(json);

  factory RewardTransaction.create({
    required TransactionType type,
    required RewardAmount amount,
    required String referenceId,
    required String description,
    Map<String, dynamic>? metadata,
  }) {
    return RewardTransaction(
      id: Uuid.generate(),
      type: type,
      amount: amount,
      referenceId: referenceId,
      description: description,
      createdAt: DateTime.now(),
      metadata: metadata,
    );
  }

  bool get isCredit => type == TransactionType.earned;
  bool get isDebit => type == TransactionType.claimed;

  String get displayDescription {
    switch (type) {
      case TransactionType.earned:
        return '+ ${amount.displayValue} - $description';
      case TransactionType.claimed:
        return '- ${amount.displayValue} - $description';
      case TransactionType.expired:
        return 'Expired: ${amount.displayValue} - $description';
      case TransactionType.reversed:
        return 'Reversed: ${amount.displayValue} - $description';
    }
  }
}
