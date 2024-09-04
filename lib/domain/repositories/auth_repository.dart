import 'package:womensafety/data/models/user_signin_request.dart';
import 'package:womensafety/data/models/user_singup_request.dart';

abstract class AuthRepository {
  Future<void> signin(UserSigninRequest userSigninRequest);
  Future<void> signup(UserSignupRequest userSignupRequest);
  Future<bool> isLoggedIn();
}
