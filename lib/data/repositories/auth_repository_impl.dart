import 'package:womensafety/data/datasources/auth_firebase_service.dart';
import 'package:womensafety/data/models/user_signin_request.dart';
import 'package:womensafety/data/models/user_singup_request.dart';
import 'package:womensafety/domain/repositories/auth_repository.dart';
import 'package:womensafety/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<bool> isLoggedIn() async {
    return await sl<AuthFirebaseService>().isLoggedIn();
  }

  @override
  Future<void> signin(UserSigninRequest userSigninRequest) async {
    return await sl<AuthFirebaseService>().signin(userSigninRequest);
  }

  @override
  Future<void> signup(UserSignupRequest userSignupRequest) async {
    return await sl<AuthFirebaseService>().signup(userSignupRequest);
  }
}
