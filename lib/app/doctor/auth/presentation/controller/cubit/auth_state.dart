abstract class AuthState {}

class AuthInitialState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginErrorState extends AuthState {
  final String messageApi;
  final String messageError;

  LoginErrorState({required this.messageError, required this.messageApi});
}

class LoginLoadedState extends AuthState {
  final String message;

  LoginLoadedState({this.message = ''});
}

class RegisterLoadingState extends AuthState {}

class RegisterErrorState extends AuthState {
  final String messageApi;
  final String messageError;

  RegisterErrorState({required this.messageError, required this.messageApi});
}

class RegisterLoadedState extends AuthState {
  final String message;

  RegisterLoadedState({this.message = ''});
}
