import 'package:coffee_app/screens/ice_coffee_screen/widget/ice_coffee_bloc_builder.dart';
import 'package:flutter/material.dart';

class IceCoffeeScreen extends StatelessWidget {
  const IceCoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEFA661),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: [
                IceCoffeeBlocBuilder(),
              ],
            )),
      ),
    );
  }
}
