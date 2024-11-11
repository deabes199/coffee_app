import 'package:coffee_app/core/routes/routes.dart';
import 'package:coffee_app/screens/hot_coffee_screen/view_model/cubit/hot_coffee_cubit.dart';
import 'package:coffee_app/screens/hot_coffee_screen/widgets/hot_coffee/hot_coffe_item.dart';
import 'package:coffee_app/screens/hot_coffee_screen/widgets/hot_coffee/hot_coffee_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotCoffeeListView extends StatelessWidget {
  const HotCoffeeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotCoffeeCubit, HotCoffeeState>(
      builder: (context, state) {
        if (state is HotCoffeeLoadedState) {
          return Expanded(
              child: ListView.builder(
                  itemCount: state.hotCoffeeList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            Routes.hotCoffeeDetails,
                            arguments: state.hotCoffeeList[index],
                          );
                        },
                        child: HotCoffeeItem(
                          hotCoffee: state.hotCoffeeList[index],
                        ));
                  }));
        } else if (state is HotCoffeeErrorState) {
          return Center(
              child: Text(
            state.errorMessage,
            style: const TextStyle(fontSize: 22),
          ));
        } else if (state is HotCoffeeLoadingState) {
          return const HotCoffeeShimmerLoading();
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
