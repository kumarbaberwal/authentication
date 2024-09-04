import 'package:womensafety/core/usecase.dart';
import 'package:womensafety/data/models/user_singup_request.dart';
import 'package:womensafety/domain/repositories/auth_repository.dart';
import 'package:womensafety/service_locator.dart';

class SignupUseCase implements Usecase<void, UserSignupRequest> {
  @override
  Future<void> call({UserSignupRequest? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
