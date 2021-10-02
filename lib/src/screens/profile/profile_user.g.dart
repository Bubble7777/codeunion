// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUser _$ProfileUserFromJson(Map<String, dynamic> json) {
  return ProfileUser(
    login: json['loginToken'] as String,
    avatar: json['avatarToken'] as String,
    email: json['emailToken'] as String,
  );
}

Map<String, dynamic> _$ProfileUserToJson(ProfileUser instance) =>
    <String, dynamic>{
      'loginToken': instance.login,
      'avatarToken': instance.avatar,
      'emailToken': instance.email,
    };
