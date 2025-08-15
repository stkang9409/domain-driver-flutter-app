// lib/app.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ddd_app/shared/presentation/routes/app_router.dart';
import 'package:my_ddd_app/integration/identity_notification_integration.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 통합 초기화
    ref.watch(identityNotificationIntegrationProvider);

    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'DDD App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: router,
    );
  }
}
