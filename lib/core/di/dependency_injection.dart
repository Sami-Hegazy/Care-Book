import 'package:care_book/core/networking/api_service.dart';
import 'package:care_book/core/networking/dio_factory.dart';
import 'package:care_book/features/login/data/repos/login_repo.dart';
import 'package:care_book/features/login/logic/cubit/login_cubit.dart';
import 'package:care_book/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:care_book/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}
