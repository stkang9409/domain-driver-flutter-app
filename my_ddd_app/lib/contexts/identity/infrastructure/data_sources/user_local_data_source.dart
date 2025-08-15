import 'dart:convert';

import 'package:my_ddd_app/contexts/identity/infrastructure/models/user_dto.dart';
import 'package:my_ddd_app/shared/infrastructure/storage/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'user_local_data_source.g.dart';

class UserLocalDataSource {
  final LocalStorage _localStorage;

  UserLocalDataSource(this._localStorage);

  Future<UserDto?> getUser(String id) async {
    final json = await _localStorage.getString('user_$id');
    if (json != null) {
      return UserDto.fromJson(jsonDecode(json));
    }
    return null;
  }

  Future<void> cacheUser(UserDto user) async {
    await _localStorage.setString('user_${user.id}', jsonEncode(user.toJson()));
  }
}

@riverpod
UserLocalDataSource userLocalDataSource(Ref ref) {
  final localStorage = ref.read(localStorageProvider);
  return UserLocalDataSource(localStorage);
}
