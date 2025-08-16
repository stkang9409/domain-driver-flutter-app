import 'package:flutter_test/flutter_test.dart';
import 'package:my_ddd_app/contexts/referral/domain/entities/reward_transaction.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/reward_amount.dart';

void main() {
  group('RewardTransaction', () {
    group('create', () {
      test('should create a transaction with generated ID and current timestamp', () {
        final amount = const RewardAmount(value: 100, currency: 'USD');
        final transaction = RewardTransaction.create(
          type: TransactionType.earned,
          amount: amount,
          referenceId: 'ref123',
          description: 'Referral bonus',
        );
        
        expect(transaction.id.value, isNotEmpty);
        expect(transaction.type, equals(TransactionType.earned));
        expect(transaction.amount, equals(amount));
        expect(transaction.referenceId, equals('ref123'));
        expect(transaction.description, equals('Referral bonus'));
        expect(transaction.createdAt, isNotNull);
        expect(transaction.metadata, isNull);
      });

      test('should create a transaction with metadata', () {
        final amount = const RewardAmount(value: 50, currency: 'USD');
        final metadata = {'source': 'campaign_001', 'tier': 'gold'};
        
        final transaction = RewardTransaction.create(
          type: TransactionType.claimed,
          amount: amount,
          referenceId: 'claim456',
          description: 'Reward claimed',
          metadata: metadata,
        );
        
        expect(transaction.metadata, equals(metadata));
      });
    });

    group('isCredit and isDebit', () {
      test('earned transaction should be credit', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.earned,
          amount: const RewardAmount(value: 100, currency: 'USD'),
          referenceId: 'ref',
          description: 'desc',
        );
        
        expect(transaction.isCredit, isTrue);
        expect(transaction.isDebit, isFalse);
      });

      test('claimed transaction should be debit', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.claimed,
          amount: const RewardAmount(value: 100, currency: 'USD'),
          referenceId: 'ref',
          description: 'desc',
        );
        
        expect(transaction.isCredit, isFalse);
        expect(transaction.isDebit, isTrue);
      });

      test('expired transaction should not be credit or debit', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.expired,
          amount: const RewardAmount(value: 100, currency: 'USD'),
          referenceId: 'ref',
          description: 'desc',
        );
        
        expect(transaction.isCredit, isFalse);
        expect(transaction.isDebit, isFalse);
      });

      test('reversed transaction should not be credit or debit', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.reversed,
          amount: const RewardAmount(value: 100, currency: 'USD'),
          referenceId: 'ref',
          description: 'desc',
        );
        
        expect(transaction.isCredit, isFalse);
        expect(transaction.isDebit, isFalse);
      });
    });

    group('displayDescription', () {
      test('should format earned transaction description', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.earned,
          amount: const RewardAmount(value: 100, currency: 'USD'),
          referenceId: 'ref',
          description: 'Referral bonus',
        );
        
        expect(
          transaction.displayDescription,
          equals('+ \$100.00 - Referral bonus'),
        );
      });

      test('should format claimed transaction description', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.claimed,
          amount: const RewardAmount(value: 50, currency: 'USD'),
          referenceId: 'ref',
          description: 'Cashed out',
        );
        
        expect(
          transaction.displayDescription,
          equals('- \$50.00 - Cashed out'),
        );
      });

      test('should format expired transaction description', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.expired,
          amount: const RewardAmount(value: 25, currency: 'USD'),
          referenceId: 'ref',
          description: 'Reward expired',
        );
        
        expect(
          transaction.displayDescription,
          equals('Expired: \$25.00 - Reward expired'),
        );
      });

      test('should format reversed transaction description', () {
        final transaction = RewardTransaction.create(
          type: TransactionType.reversed,
          amount: const RewardAmount(value: 75, currency: 'USD'),
          referenceId: 'ref',
          description: 'Fraud detected',
        );
        
        expect(
          transaction.displayDescription,
          equals('Reversed: \$75.00 - Fraud detected'),
        );
      });
    });
  });
}