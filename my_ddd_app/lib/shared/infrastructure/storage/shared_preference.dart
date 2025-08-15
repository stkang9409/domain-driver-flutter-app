import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preference.g.dart';

class LocalStorage {
  static late LocalStorage _instance;
  final SharedPreferences _prefs;

  LocalStorage(this._prefs);

  static Future<LocalStorage> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    _instance = LocalStorage(prefs);
    return _instance;
  }

  static LocalStorage get instance => _instance;

  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  Future<String?> getString(String key) async {
    return _prefs.getString(key);
  }
}

@riverpod
LocalStorage localStorage(Ref ref) {
  return LocalStorage.instance;
}
