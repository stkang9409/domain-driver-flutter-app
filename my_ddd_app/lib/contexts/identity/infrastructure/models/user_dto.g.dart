// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
    };
