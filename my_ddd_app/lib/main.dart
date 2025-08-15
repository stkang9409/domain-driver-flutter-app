// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ddd_app/app.dart';
import 'package:my_ddd_app/bootstrap/app_initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 앱 초기화
  await AppInitializer.initialize();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
