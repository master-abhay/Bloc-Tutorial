part of 'login_bloc.dart';

class LoginState extends Equatable {

  final String email;
  final String password;
  final String message;
  final ApiStatus apiStatus;

  const LoginState({
    this.email = '',
    this.password = '',
    this.message = '',
    this.apiStatus = ApiStatus.initial,
  });

  LoginState copyWith({
    String? email,
    String? password,
    String? message,
    ApiStatus? apiStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }


  @override
  List<Object?> get props => [email,password,message,apiStatus,];
}
