import 'package:coffee_app/core/di/dependancy_injection.dart';
import 'package:coffee_app/core/routes/app_router.dart';
import 'package:coffee_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

void main() async{
   await setUpGetIt();
  runApp(MyApp(
   
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: Routes.onBoardingScreen,
    );
  }
}
