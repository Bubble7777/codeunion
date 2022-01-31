import 'package:json_annotation/json_annotation.dart';

// класс для вывода пользователей.

part 'profile_user.g.dart';

@JsonSerializable()
class ProfileUser {
  @JsonKey(name: 'nickname')
  final String nickname;

  final String avatar;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'email')
  final String email;

  const ProfileUser({
    required this.id,
    required this.nickname,
    required this.avatar,
    required this.email,
  });

  factory ProfileUser.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileUserToJson(this);
}
