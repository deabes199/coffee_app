import 'package:coffee_app/screens/hot_coffee_screen/model/hot_coffee_model.dart';
import 'package:flutter/material.dart';

class HotCoffeeImage extends StatelessWidget {
  const HotCoffeeImage({super.key, required this.coffeeModel});
  final HotCoffeeModel coffeeModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          coffeeModel.image ?? 'assets/images/th (2).jpg',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: 25,
            left: 20,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffEFA661),
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ))
      ],
    );
  }
}
