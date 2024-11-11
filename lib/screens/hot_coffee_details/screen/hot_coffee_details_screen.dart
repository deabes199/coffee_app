import 'package:coffee_app/core/uitils/spacing.dart';
import 'package:coffee_app/screens/hot_coffee_details/widgets/hot_coffee_content.dart';
import 'package:coffee_app/screens/hot_coffee_details/widgets/hot_coffee_image.dart';
import 'package:coffee_app/screens/hot_coffee_details/widgets/hot_coffee_name_and_about.dart';
import 'package:coffee_app/screens/hot_coffee_screen/model/hot_coffee_model.dart';
import 'package:flutter/material.dart';

class HotCoffeeDetailsScreen extends StatelessWidget {
  const HotCoffeeDetailsScreen({super.key, required this.coffee});
  final HotCoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFA661),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HotCoffeeImage(
                coffeeModel: coffee,
              ),
              verticalSpace(10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HotCoffeeNameAndAbout(
                      coffeeModel: coffee,
                    ),
                    verticalSpace(20),
                    HotCoffeeContent(
                      coffeeModel: coffee,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
