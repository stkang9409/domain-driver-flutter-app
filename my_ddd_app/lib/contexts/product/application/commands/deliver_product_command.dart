import 'package:freezed_annotation/freezed_annotation.dart';

part 'deliver_product_command.freezed.dart';
part 'deliver_product_command.g.dart';

@freezed
abstract class DeliverProductCommand with _$DeliverProductCommand {
  const factory DeliverProductCommand({
    required String orderId,
    required String productId,
    required String recipientId,
    required int quantity,
    required DeliveryReason reason,
    Map<String, dynamic>? metadata,
  }) = _DeliverProductCommand;

  factory DeliverProductCommand.fromJson(Map<String, dynamic> json) =>
      _$DeliverProductCommandFromJson(json);
}

enum DeliveryReason {
  purchase,      // Normal purchase
  reward,        // Referral reward
  gift,          // Gift from another user
  promotion,     // Promotional giveaway
  replacement,   // Replacement for defective product
}