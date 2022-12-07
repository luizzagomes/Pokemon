import 'package:aula_sd/src/features/dashboard/controller/dashboard_controller.dart';
import 'package:aula_sd/src/features/dashboard/repositorio/dashboard_repository.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.I;

void registerDependencies (){

  di.registerLazySingleton<DashboardRepository>(() => DashboardRepository());
  di.registerLazySingleton<DashboardController>(() => DashboardController(di.get()));
  
}