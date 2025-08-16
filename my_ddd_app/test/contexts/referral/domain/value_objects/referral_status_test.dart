import 'package:flutter_test/flutter_test.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/referral_status.dart';

void main() {
  group('ReferralStatus', () {
    group('status checks', () {
      test('isPending should return true for pending status', () {
        const status = ReferralStatus.pending();
        
        expect(status.isPending, isTrue);
        expect(status.isCompleted, isFalse);
        expect(status.isRejected, isFalse);
        expect(status.isExpired, isFalse);
      });

      test('isCompleted should return true for completed status', () {
        const status = ReferralStatus.completed();
        
        expect(status.isPending, isFalse);
        expect(status.isCompleted, isTrue);
        expect(status.isRejected, isFalse);
        expect(status.isExpired, isFalse);
      });

      test('isRejected should return true for rejected status', () {
        const status = ReferralStatus.rejected('Invalid referral');
        
        expect(status.isPending, isFalse);
        expect(status.isCompleted, isFalse);
        expect(status.isRejected, isTrue);
        expect(status.isExpired, isFalse);
      });

      test('isExpired should return true for expired status', () {
        const status = ReferralStatus.expired();
        
        expect(status.isPending, isFalse);
        expect(status.isCompleted, isFalse);
        expect(status.isRejected, isFalse);
        expect(status.isExpired, isTrue);
      });
    });

    group('displayName', () {
      test('should return correct display name for pending', () {
        const status = ReferralStatus.pending();
        
        expect(status.displayName, equals('Pending'));
      });

      test('should return correct display name for completed', () {
        const status = ReferralStatus.completed();
        
        expect(status.displayName, equals('Completed'));
      });

      test('should return correct display name for rejected', () {
        const status = ReferralStatus.rejected('reason');
        
        expect(status.displayName, equals('Rejected'));
      });

      test('should return correct display name for expired', () {
        const status = ReferralStatus.expired();
        
        expect(status.displayName, equals('Expired'));
      });
    });

    group('transition checks', () {
      test('pending status can transition to all other states', () {
        const status = ReferralStatus.pending();
        
        expect(status.canTransitionToCompleted, isTrue);
        expect(status.canTransitionToRejected, isTrue);
        expect(status.canTransitionToExpired, isTrue);
      });

      test('completed status cannot transition to other states', () {
        const status = ReferralStatus.completed();
        
        expect(status.canTransitionToCompleted, isFalse);
        expect(status.canTransitionToRejected, isFalse);
        expect(status.canTransitionToExpired, isFalse);
      });

      test('rejected status cannot transition to other states', () {
        const status = ReferralStatus.rejected('reason');
        
        expect(status.canTransitionToCompleted, isFalse);
        expect(status.canTransitionToRejected, isFalse);
        expect(status.canTransitionToExpired, isFalse);
      });

      test('expired status cannot transition to other states', () {
        const status = ReferralStatus.expired();
        
        expect(status.canTransitionToCompleted, isFalse);
        expect(status.canTransitionToRejected, isFalse);
        expect(status.canTransitionToExpired, isFalse);
      });
    });

    group('rejected status', () {
      test('should store rejection reason', () {
        const reason = 'Fraudulent activity detected';
        const status = ReferralStatus.rejected(reason);
        
        status.when(
          pending: () => fail('Should not be pending'),
          completed: () => fail('Should not be completed'),
          rejected: (actualReason) => expect(actualReason, equals(reason)),
          expired: () => fail('Should not be expired'),
        );
      });
    });
  });
}