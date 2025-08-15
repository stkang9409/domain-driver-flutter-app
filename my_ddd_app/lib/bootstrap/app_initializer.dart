// lib/bootstrap/app_initializer.dart
import 'package:flutter/foundation.dart';
import 'package:my_ddd_app/shared/infrastructure/database/supabase_constants.dart';
import 'package:my_ddd_app/shared/infrastructure/storage/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide LocalStorage;

class AppInitializer {
  static Future<void> initialize() async {
    // Firebase 초기화
    // if (kIsWeb) {
    //   await Firebase.initializeApp(options: DefaultFirebaseOptions.web);
    // } else {
    //   await Firebase.initializeApp();
    // }

    // Supabase 초기화
    await Supabase.initialize(
      url: SupabaseConstants.url,
      anonKey: SupabaseConstants.anonKey,
    );

    // 로컬 스토리지 초기화
    await LocalStorage.initialize();

    // 기타 초기화...
  }
}
