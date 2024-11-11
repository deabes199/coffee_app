import 'package:coffee_app/core/uitils/spacing.dart';
import 'package:coffee_app/screens/ice_coffee_screen/model/ice_coffee_model.dart';
import 'package:flutter/material.dart';

class IceCoffeeContent extends StatelessWidget {
  const IceCoffeeContent({super.key, required this.coffeeModel});
  final  IceCoffeeModel coffeeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Content',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        verticalSpace(10),
        Text(
          coffeeModel.ingredients!.join('\n'),
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
