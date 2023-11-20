import 'package:bookly/Core/utils/api_servic.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setup(){
  getIt.registerSingleton<ApiService>(ApiService(Dio(),),);
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}