part of 'log_up_bloc.dart';

@immutable
abstract class LogUpEvent {}

class LogUpPressed extends LogUpEvent {
  final String nickname;
  final String phone;
  final String email;
  final String password;

  LogUpPressed({
    required this.email,
    required this.phone,
    required this.nickname,
    required this.password,
  });
}
