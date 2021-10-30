part of 'log_up_bloc.dart';

@immutable
abstract class LogUpState {}

class LogUpInitial extends LogUpState {}

class LogUpLoading extends LogUpState {}

class LogUpLoaded extends LogUpState {}

class LogUpFailed extends LogUpState {
  final String message;

  LogUpFailed({required this.message});
}
