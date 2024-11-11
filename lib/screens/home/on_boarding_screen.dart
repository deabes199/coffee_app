import 'package:coffee_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffEFA661,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(children: [
                  SizedBox(
                    height: 852,
                    width: 393,
                    child: Image.asset('assets/images/Splash cover.png'),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 69,
                      child: InkWell(
                        onTap: () => Navigator.of(context)
                            .pushReplacementNamed(Routes.homeScreen),
                        child: SizedBox(
                            height: 130,
                            width: 250,
                            child: Image.asset('assets/images/Button.png')),
                      ))
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
