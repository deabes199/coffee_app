import 'package:coffee_app/core/uitils/spacing.dart';
import 'package:coffee_app/screens/home/widgets/categories_widget.dart';
import 'package:coffee_app/screens/home/widgets/home_banner.dart';
import 'package:coffee_app/screens/home/widgets/hot_coffee_widget.dart';
import 'package:coffee_app/screens/home/widgets/ice_coffee_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFA661),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(40),
              const HomeBanner(),
              verticalSpace(50),
              const CategoriesWidget(),
              verticalSpace(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IceCoffeeWidget(),
                  HotCoffeeWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
