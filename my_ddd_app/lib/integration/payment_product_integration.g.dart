// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_product_integration.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentProductIntegrationHash() =>
    r'74d90bcb587d918e17582c85a263c30fd7155c95';

/// Integration between Payment and Product contexts
/// Listens to PaymentCompletedEvent and triggers DeliverProductHandler
///
/// Copied from [paymentProductIntegration].
@ProviderFor(paymentProductIntegration)
final paymentProductIntegrationProvider = Provider<void>.internal(
  paymentProductIntegration,
  name: r'paymentProductIntegrationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paymentProductIntegrationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PaymentProductIntegrationRef = ProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
