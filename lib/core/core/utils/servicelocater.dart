

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../Features/home/data/repos/home_repo_impl.dart';
import 'apiservice.dart';

final getIt= GetIt.instance;
void setupServiceLocator(){
  getIt.registerSingleton<ApiSercive>(ApiSercive(Dio()));
  getIt.registerSingleton<HomeReprImpl>(HomeReprImpl (
   getIt.get<ApiSercive>(),
  )
  );


}