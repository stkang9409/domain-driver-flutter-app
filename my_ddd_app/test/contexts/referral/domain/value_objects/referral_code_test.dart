import 'package:flutter_test/flutter_test.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/referral_code.dart';

void main() {
  group('ReferralCode', () {
    group('generate', () {
      test('should generate a valid 8-character code', () {
        final code = ReferralCode.generate();
        
        expect(code.value.length, equals(8));
        expect(RegExp(r'^[A-Z0-9]+$').hasMatch(code.value), isTrue);
      });

      test('should generate unique codes', () {
        final codes = List.generate(10, (_) => ReferralCode.generate());
        final uniqueCodes = codes.map((c) => c.value).toSet();
        
        expect(uniqueCodes.length, equals(10));
      });
    });

    group('custom', () {
      test('should create custom code with valid input', () {
        final code = ReferralCode.custom('TEST123');
        
        expect(code.value, equals('TEST123'));
      });

      test('should convert to uppercase', () {
        final code = ReferralCode.custom('test123');
        
        expect(code.value, equals('TEST123'));
      });

      test('should throw when code is empty', () {
        expect(
          () => ReferralCode.custom(''),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'Referral code cannot be empty',
          )),
        );
      });

      test('should throw when code is less than 4 characters', () {
        expect(
          () => ReferralCode.custom('ABC'),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'Referral code must be at least 4 characters',
          )),
        );
      });

      test('should throw when code is more than 20 characters', () {
        expect(
          () => ReferralCode.custom('A' * 21),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'Referral code must be at most 20 characters',
          )),
        );
      });

      test('should throw when code contains invalid characters', () {
        expect(
          () => ReferralCode.custom('TEST-123'),
          throwsA(isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'Referral code must contain only letters and numbers',
          )),
        );
      });
    });

    group('isValid', () {
      test('should return true for valid code', () {
        final code = ReferralCode.generate();
        
        expect(code.isValid(), isTrue);
      });

      test('should return true for valid custom code', () {
        final code = ReferralCode.custom('VALID123');
        
        expect(code.isValid(), isTrue);
      });
    });

    group('displayValue', () {
      test('should return the code value', () {
        final code = ReferralCode.custom('DISPLAY123');
        
        expect(code.displayValue, equals('DISPLAY123'));
      });
    });
  });
}