import 'package:flutter_test/flutter_test.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/reward_amount.dart';

void main() {
  group('RewardAmount', () {
    group('zero', () {
      test('should create zero amount with default currency', () {
        final amount = RewardAmount.zero();
        
        expect(amount.value, equals(0));
        expect(amount.currency, equals('USD'));
      });

      test('should create zero amount with specified currency', () {
        final amount = RewardAmount.zero('EUR');
        
        expect(amount.value, equals(0));
        expect(amount.currency, equals('EUR'));
      });
    });

    group('add', () {
      test('should add amounts with same currency', () {
        final amount1 = const RewardAmount(value: 100, currency: 'USD');
        final amount2 = const RewardAmount(value: 50, currency: 'USD');
        
        final result = amount1.add(amount2);
        
        expect(result.value, equals(150));
        expect(result.currency, equals('USD'));
      });

      test('should throw when adding amounts with different currencies', () {
        final amount1 = const RewardAmount(value: 100, currency: 'USD');
        final amount2 = const RewardAmount(value: 50, currency: 'EUR');
        
        expect(
          () => amount1.add(amount2),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'Cannot add amounts with different currencies',
          )),
        );
      });
    });

    group('subtract', () {
      test('should subtract amounts with same currency', () {
        final amount1 = const RewardAmount(value: 100, currency: 'USD');
        final amount2 = const RewardAmount(value: 30, currency: 'USD');
        
        final result = amount1.subtract(amount2);
        
        expect(result.value, equals(70));
        expect(result.currency, equals('USD'));
      });

      test('should handle negative results', () {
        final amount1 = const RewardAmount(value: 30, currency: 'USD');
        final amount2 = const RewardAmount(value: 100, currency: 'USD');
        
        final result = amount1.subtract(amount2);
        
        expect(result.value, equals(-70));
        expect(result.currency, equals('USD'));
      });

      test('should throw when subtracting amounts with different currencies', () {
        final amount1 = const RewardAmount(value: 100, currency: 'USD');
        final amount2 = const RewardAmount(value: 50, currency: 'EUR');
        
        expect(
          () => amount1.subtract(amount2),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'Cannot subtract amounts with different currencies',
          )),
        );
      });
    });

    group('multiply', () {
      test('should multiply amount by factor', () {
        final amount = const RewardAmount(value: 100, currency: 'USD');
        
        final result = amount.multiply(1.5);
        
        expect(result.value, equals(150));
        expect(result.currency, equals('USD'));
      });

      test('should handle zero factor', () {
        final amount = const RewardAmount(value: 100, currency: 'USD');
        
        final result = amount.multiply(0);
        
        expect(result.value, equals(0));
      });

      test('should handle negative factor', () {
        final amount = const RewardAmount(value: 100, currency: 'USD');
        
        final result = amount.multiply(-2);
        
        expect(result.value, equals(-200));
      });
    });

    group('comparison', () {
      test('isGreaterThan should return true when first is greater', () {
        final amount1 = const RewardAmount(value: 100, currency: 'USD');
        final amount2 = const RewardAmount(value: 50, currency: 'USD');
        
        expect(amount1.isGreaterThan(amount2), isTrue);
      });

      test('isGreaterThan should return false when first is less', () {
        final amount1 = const RewardAmount(value: 50, currency: 'USD');
        final amount2 = const RewardAmount(value: 100, currency: 'USD');
        
        expect(amount1.isGreaterThan(amount2), isFalse);
      });

      test('isLessThan should return true when first is less', () {
        final amount1 = const RewardAmount(value: 50, currency: 'USD');
        final amount2 = const RewardAmount(value: 100, currency: 'USD');
        
        expect(amount1.isLessThan(amount2), isTrue);
      });

      test('should throw when comparing different currencies', () {
        final amount1 = const RewardAmount(value: 100, currency: 'USD');
        final amount2 = const RewardAmount(value: 50, currency: 'EUR');
        
        expect(
          () => amount1.isGreaterThan(amount2),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    group('displayValue', () {
      test('should format USD with dollar sign', () {
        final amount = const RewardAmount(value: 99.99, currency: 'USD');
        
        expect(amount.displayValue, equals('\$99.99'));
      });

      test('should format USD with two decimal places', () {
        final amount = const RewardAmount(value: 100, currency: 'USD');
        
        expect(amount.displayValue, equals('\$100.00'));
      });

      test('should format other currencies with currency code', () {
        final amount = const RewardAmount(value: 100.50, currency: 'EUR');
        
        expect(amount.displayValue, equals('100.5 EUR'));
      });
    });
  });
}