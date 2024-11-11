import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xff0E6B42),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Text(
        'Categories',
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }
}
