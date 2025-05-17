import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/home/data/apis/home_api_service.dart';
import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:docdoc/features/login/data/repository/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/sign_up/data/repo/signup_repo.dart';
import 'package:docdoc/features/sign_up/logic/signup_cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setupGetIt() {
  //!Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //! Login
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(apiService: getIt<ApiService>()),
  );
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  //! SignUp
  getIt.registerLazySingleton<SignupRepo>(
    () => SignupRepo(apiService: getIt<ApiService>()),
  );
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<SignupRepo>()));

  //! Home
  getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiService(dio),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt<HomeApiService>()),
  );
}
