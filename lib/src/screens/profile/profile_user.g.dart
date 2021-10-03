// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUser _$ProfileUserFromJson(Map<String, dynamic> json) {
  return ProfileUser(
    id: json['id'] as int,
    nickname: json['nickname'] as String,
    avatar: json['avatar'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$ProfileUserToJson(ProfileUser instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'id': instance.id,
      'email': instance.email,
    };
