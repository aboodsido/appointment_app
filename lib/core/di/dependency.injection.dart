import 'package:appointments_app/core/networking/api_service.dart';
import 'package:appointments_app/feature/login/data/repos/login_repo.dart';
import 'package:appointments_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:appointments_app/feature/signup/data/repos/signup_repo.dart';
import 'package:appointments_app/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));

  //Login
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));

  //sign up
  getIt.registerLazySingleton(() => SignupRepo(getIt()));
  getIt.registerFactory(() => SignUpCubit(getIt()));
}
