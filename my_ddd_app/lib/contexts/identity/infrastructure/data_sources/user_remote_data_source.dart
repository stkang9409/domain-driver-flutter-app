// lib/contexts/identity/infrastructure/data_sources/remote/user_remote_data_source.dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ddd_app/shared/infrastructure/database/supabase_provider.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/contexts/identity/infrastructure/models/user_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_remote_data_source.g.dart';

class UserRemoteDataSource {
  final SupabaseClient _supabase;
  UserRemoteDataSource(this._supabase);

  Future<UserDto> createUser(UserDto user) async {
    final response =
        await _supabase.from('users').insert(user.toJson()).select();
    return UserDto.fromJson(response.first);
  }

  Future<UserDto> getUser(String id) async {
    final response = await _supabase.from('users').select().eq('id', id);
    return UserDto.fromJson(response.first);
  }
}

// Provider
@riverpod
UserRemoteDataSource userRemoteDataSource(Ref ref) {
  final supabase = ref.watch(supabaseProvider);
  return UserRemoteDataSource(supabase);
}
