

import 'package:womensafety/core/usecase.dart';
import 'package:womensafety/data/models/user_signin_request.dart';
import 'package:womensafety/domain/repositories/auth_repository.dart';
import 'package:womensafety/service_locator.dart';

class SigninUseCase implements Usecase<void, UserSigninRequest> {
  @override
  Future<void> call({UserSigninRequest? params}) async {
    return await sl<AuthRepository>().signin(params!);
  }
}
