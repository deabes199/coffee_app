import 'package:coffee_app/core/uitils/spacing.dart';
import 'package:coffee_app/screens/hot_coffee_screen/model/hot_coffee_model.dart';
import 'package:flutter/material.dart';

class HotCoffeeNameAndAbout extends StatelessWidget {
  const HotCoffeeNameAndAbout({super.key, required this.coffeeModel});
  final HotCoffeeModel coffeeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            coffeeModel.title ?? 'null',
            style: const TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        verticalSpace(20),
        const Text(
          'About',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        verticalSpace(10),
        Text(
          coffeeModel.description ?? 'null',
        ),
      ],
    );
  }
}
