import 'package:coffee_app/core/networking/api_services.dart';
import 'package:coffee_app/screens/hot_coffee_screen/view_model/cubit/hot_coffee_cubit.dart';
import 'package:coffee_app/screens/hot_coffee_screen/view_model/hot_coffee_repo.dart';
import 'package:coffee_app/screens/ice_coffee_screen/view_model/cubit/ice_coffee_cubit.dart';
import 'package:coffee_app/screens/ice_coffee_screen/view_model/ice_coffee_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = Dio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<HotCoffeeRepo>(
      () => HotCoffeeRepo(apiServices: getIt()));
  getIt.registerFactory<HotCoffeeCubit>(() => HotCoffeeCubit(getIt()));

  getIt.registerLazySingleton<IceCoffeeRepo>(
      () => IceCoffeeRepo(apiServices: getIt()));
  getIt.registerFactory<IceCoffeeCubit>(() => IceCoffeeCubit(getIt()));
}
