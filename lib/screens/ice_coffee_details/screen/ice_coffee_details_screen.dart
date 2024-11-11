import 'package:coffee_app/core/uitils/spacing.dart';
import 'package:coffee_app/screens/ice_coffee_details/widgets/ice_coffee_content.dart';
import 'package:coffee_app/screens/ice_coffee_details/widgets/ice_coffee_image.dart';
import 'package:coffee_app/screens/ice_coffee_details/widgets/ice_coffee_name_and_about.dart';
import 'package:coffee_app/screens/ice_coffee_screen/model/ice_coffee_model.dart';
import 'package:flutter/material.dart';

class IceCoffeeDetailsScreen extends StatelessWidget {
  const IceCoffeeDetailsScreen({super.key, required this.coffee});
  final IceCoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFA661),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IceCoffeeImage(
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
                    IceCoffeeNameAndAbout(
                      coffeeModel: coffee,
                    ),
                    verticalSpace(20),
                    IceCoffeeContent(
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
