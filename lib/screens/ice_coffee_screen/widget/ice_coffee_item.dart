import 'package:coffee_app/screens/ice_coffee_screen/model/ice_coffee_model.dart';
import 'package:flutter/material.dart';

class IceCoffeeItem extends StatelessWidget {
  const IceCoffeeItem({super.key, required this.iceCoffee});
  final IceCoffeeModel iceCoffee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.only(top: 7, bottom: 7, left: 7, right: 11),
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                iceCoffee.image ?? 'assets/images/th (2).jpg',
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(
              height: 100,
              width: 150,
              child: Text(
                iceCoffee.title ?? 'Title',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
