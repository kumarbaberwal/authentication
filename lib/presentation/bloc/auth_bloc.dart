import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:womensafety/data/models/user_signin_request.dart';
import 'package:womensafety/data/models/user_singup_request.dart';
import 'package:womensafety/domain/repositories/auth_repository.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignInEvent) {
      yield AuthLoading();
      try {
        await authRepository.signin(UserSigninRequest(
          emailAddress: event.email,
          password: event.password,
        ));
        yield AuthSuccess();
      } catch (e) {
        yield AuthFailure(e.toString());
      }
    } else if (event is SignUpEvent) {
      yield AuthLoading();
      try {
        await authRepository.signup(UserSignupRequest(
            emailAddress: event.email, password: event.password));
        yield AuthSuccess();
      } catch (e) {
        yield AuthFailure(e.toString());
      }
    }
  }
}
