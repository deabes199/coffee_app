import 'package:coffee_app/core/uitils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HotCoffeeShimmerLoading extends StatelessWidget {
  const HotCoffeeShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Shimmer.fromColors(
                baseColor: const Color(0xffEFA661),
                highlightColor: const Color(0xffD69456),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade300,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Shimmer.fromColors(
                          baseColor: const Color(0xffEFA661),
                          highlightColor: const Color(0xffD69456),
                          child: Container(
                            height: 120,
                            width: 120,
                          
                          ),
                        ),
                        horizontalSpace(10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 100,
                                color: Colors.grey.shade400,
                                margin: const EdgeInsets.only(bottom: 10),
                              ),
                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
