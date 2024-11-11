import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/banner.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          )),
    );
  }
}
