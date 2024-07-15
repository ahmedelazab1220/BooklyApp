part of 'login_cubit.dart';

@immutable
abstract class LoginCubitState {}

final class LoginCubitInitial extends LoginCubitState {}

final class LoginCubitLoading extends LoginCubitState {}

final class LoginCubitSuccess extends LoginCubitState {}

final class LoginCubitFailure extends LoginCubitState {
  final String errMessage;

  LoginCubitFailure({required this.errMessage});
}
