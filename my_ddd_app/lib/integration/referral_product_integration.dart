// lib/integration/referral_product_integration.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import 'package:my_ddd_app/contexts/referral/domain/events/referral_events.dart';
import 'package:my_ddd_app/contexts/product/application/commands/deliver_product_command.dart';
import 'package:my_ddd_app/contexts/product/application/handlers/deliver_product_handler.dart';

part 'referral_product_integration.g.dart';

/// Integration between Referral and Product contexts
/// Listens to RewardEarnedEvent and triggers DeliverProductHandler for reward products
@Riverpod(keepAlive: true)
void referralProductIntegration(Ref ref) {
  final eventBus = ref.watch(eventBusProvider);
  final deliverProductHandler = ref.watch(deliverProductHandlerProvider);

  // Subscribe to RewardEarnedEvent
  eventBus.on<RewardEarnedEvent>().listen((event) async {
    print(
        '[Integration] Reward earned - User: ${event.aggregateId}, Amount: ${event.amount}');

    // Check reward thresholds and deliver reward products
    // In real implementation, this would check reward configuration

    String? rewardProductId;
    if (event.amount >= 100) {
      rewardProductId = 'premium-subscription-1month';
    } else if (event.amount >= 50) {
      rewardProductId = 'digital-voucher-10usd';
    }

    if (rewardProductId != null) {
      final command = DeliverProductCommand(
        orderId: 'REWARD-${event.referralId}',
        productId: rewardProductId,
        recipientId: event.aggregateId, // userId who earned the reward
        quantity: 1,
        reason: DeliveryReason.reward,
        metadata: {
          'referralId': event.referralId,
          'rewardAmount': event.amount,
          'earnedAt': event.occurredAt.toIso8601String(),
        },
      );

      // Call the handler
      final result = await deliverProductHandler.execute(command);

      result.fold(
        (error) => print('[Integration] Failed to deliver reward: $error'),
        (delivery) =>
            print('[Integration] Reward delivered: ${delivery.id.value}'),
      );
    }
  });

  // Subscribe to ReferralAppliedEvent to check milestones
  eventBus.on<ReferralAppliedEvent>().listen((event) async {
    print('[Integration] Referral applied - Referrer: ${event.referrerId}');

    // In real implementation:
    // 1. Query referral count from Referral context
    // 2. Check against milestone thresholds
    // 3. Deliver milestone rewards

    // Mock: Every 5th referral gets a reward
    const mockReferralCount = 5;
    if (mockReferralCount % 5 == 0) {
      final command = DeliverProductCommand(
        orderId: 'MILESTONE-${event.aggregateId}',
        productId: 'milestone-reward-product',
        recipientId: event.referrerId,
        quantity: 1,
        reason: DeliveryReason.reward,
        metadata: {
          'milestone': '${mockReferralCount} referrals',
          'achievedAt': DateTime.now().toIso8601String(),
        },
      );

      // Call the handler
      final result = await deliverProductHandler.execute(command);

      result.fold(
        (error) =>
            print('[Integration] Failed to deliver milestone reward: $error'),
        (delivery) => print(
            '[Integration] Milestone reward delivered: ${delivery.id.value}'),
      );
    }
  });
}
