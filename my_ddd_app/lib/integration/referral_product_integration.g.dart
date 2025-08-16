// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_product_integration.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$referralProductIntegrationHash() =>
    r'a5ddcb8ec64184a8f82f793a835b62a6a4a71127';

/// Integration between Referral and Product contexts
/// Listens to RewardEarnedEvent and triggers DeliverProductHandler for reward products
///
/// Copied from [referralProductIntegration].
@ProviderFor(referralProductIntegration)
final referralProductIntegrationProvider = Provider<void>.internal(
  referralProductIntegration,
  name: r'referralProductIntegrationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$referralProductIntegrationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ReferralProductIntegrationRef = ProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
