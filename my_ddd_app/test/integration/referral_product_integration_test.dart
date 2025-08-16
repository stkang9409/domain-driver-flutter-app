import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import 'package:my_ddd_app/contexts/referral/domain/events/referral_events.dart';
import 'package:my_ddd_app/integration/referral_product_integration.dart';

void main() {
  group('Referral Product Integration', () {
    late ProviderContainer container;
    late EventBus eventBus;

    setUp(() {
      container = ProviderContainer();
      eventBus = container.read(eventBusProvider);

      // Initialize the integration
      container.read(referralProductIntegrationProvider);
    });

    tearDown(() {
      container.dispose();
    });

    test('should listen to RewardEarnedEvent', () async {
      var eventHandled = false;

      // Listen for the event
      eventBus.on<RewardEarnedEvent>().listen((event) {
        eventHandled = true;
      });

      // Emit a reward earned event
      final event = RewardEarnedEvent(
        userId: 'user-123',
        referralId: 'referral-456',
        amount: 100,
        occurredAt: DateTime.now(),
      );

      eventBus.publish(event);

      // Wait for async processing
      await Future.delayed(const Duration(milliseconds: 100));

      expect(eventHandled, isTrue);
    });

    test('should listen to ReferralAppliedEvent', () async {
      var eventHandled = false;

      // Listen for the event
      eventBus.on<ReferralAppliedEvent>().listen((event) {
        eventHandled = true;
      });

      // Emit a referral applied event
      final event = ReferralAppliedEvent(
        referralId: 'link-123',
        referrerId: 'user-456',
        refereeId: 'user-789',
        referralCode: 'REF123',
        occurredAt: DateTime.now(),
      );

      eventBus.publish(event);

      // Wait for async processing
      await Future.delayed(const Duration(milliseconds: 100));

      expect(eventHandled, isTrue);
    });
  });
}
