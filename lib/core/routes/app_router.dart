import 'package:coffee_app/core/di/dependancy_injection.dart';
import 'package:coffee_app/core/routes/routes.dart';
import 'package:coffee_app/screens/hot_coffee_details/screen/hot_coffee_details_screen.dart';
import 'package:coffee_app/screens/home/home_screen.dart';
import 'package:coffee_app/screens/home/on_boarding_screen.dart';
import 'package:coffee_app/screens/hot_coffee_screen/screens/hot_coffee_screen.dart';
import 'package:coffee_app/screens/hot_coffee_screen/model/hot_coffee_model.dart';
import 'package:coffee_app/screens/hot_coffee_screen/view_model/cubit/hot_coffee_cubit.dart';
import 'package:coffee_app/screens/ice_coffee_details/screen/ice_coffee_details_screen.dart';
import 'package:coffee_app/screens/ice_coffee_screen/screen/ice_coffee_screen.dart';
import 'package:coffee_app/screens/ice_coffee_screen/model/ice_coffee_model.dart';
import 'package:coffee_app/screens/ice_coffee_screen/view_model/cubit/ice_coffee_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.iceCoffeeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (contex) => getIt<IceCoffeeCubit>()..getIceCoffee(),
                  child: const IceCoffeeScreen(),
                ));
      case Routes.hotCoffeeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<HotCoffeeCubit>()..getHotCoffee(),
                  child: const HotCoffeeScreen(),
                ));
      case Routes.hotCoffeeDetails:
        final arg = settings.arguments as HotCoffeeModel;
        return MaterialPageRoute(
            builder: (_) => HotCoffeeDetailsScreen(
                  coffee: arg,
                ));

                 case Routes.iceCoffeeDetails:
        final arg = settings.arguments as IceCoffeeModel;
        return MaterialPageRoute(
            builder: (_) => IceCoffeeDetailsScreen(
                  coffee: arg,
                ));
      default:
        const Scaffold(
          body: Center(
            child: Text('no route'),
          ),
        );
    }
    return null;
  }
}
