import 'package:coffee_app/screens/hot_coffee_screen/widgets/hot_coffee/hot_coffee_list_view.dart';
import 'package:flutter/material.dart';

class HotCoffeeScreen extends StatelessWidget {
  const HotCoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEFA661),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: [
                HotCoffeeListView(),
              ],
            )),
      ),
    );
  }
}


