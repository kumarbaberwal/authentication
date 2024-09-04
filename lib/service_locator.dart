import 'package:get_it/get_it.dart';
import 'package:womensafety/data/datasources/auth_firebase_service.dart';
import 'package:womensafety/data/repositories/auth_repository_impl.dart';
import 'package:womensafety/domain/repositories/auth_repository.dart';
import 'package:womensafety/domain/usecases/sign_in_usecase.dart';
import 'package:womensafety/domain/usecases/sign_up_usecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // services

  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // repository

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // usecases

  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
