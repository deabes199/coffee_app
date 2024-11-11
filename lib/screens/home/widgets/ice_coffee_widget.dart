import 'package:coffee_app/core/routes/routes.dart';
import 'package:coffee_app/core/uitils/spacing.dart';
import 'package:flutter/material.dart';

class IceCoffeeWidget extends StatelessWidget {
  const IceCoffeeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(Routes.iceCoffeeScreen),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        height: 219,
        width: 164,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/z0fnuvpunys-scaled.jpg',
                height: 140,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            verticalSpace(10),
            const Text(
              'Ice coffee',
              style: TextStyle(fontSize: 22, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
