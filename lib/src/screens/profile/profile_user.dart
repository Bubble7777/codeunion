import 'package:json_annotation/json_annotation.dart';

// класс для вывода пользователей.

part 'profile_user.g.dart';

@JsonSerializable()
class ProfileUser {
  @JsonKey(name: 'loginToken')
  final String login;
  @JsonKey(name: 'avatarToken')
  final String avatar;
  @JsonKey(name: 'emailToken')
  final String email;

  const ProfileUser({
    required this.login,
    required this.avatar,
    required this.email,
  });

  factory ProfileUser.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileUserToJson(this);
}
