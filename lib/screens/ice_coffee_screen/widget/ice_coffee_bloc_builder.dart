import 'package:coffee_app/core/routes/routes.dart';
import 'package:coffee_app/screens/hot_coffee_screen/widgets/hot_coffee/hot_coffee_shimmer_loading.dart';
import 'package:coffee_app/screens/ice_coffee_screen/view_model/cubit/ice_coffee_cubit.dart';
import 'package:coffee_app/screens/ice_coffee_screen/widget/ice_coffee_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IceCoffeeBlocBuilder extends StatelessWidget {
  const IceCoffeeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IceCoffeeCubit, IceCoffeeState>(
        builder: (context, state) {
      if (state is IceCoffeeSuccessState) {
        return Expanded(
            child: ListView.builder(
                itemCount: state.iceList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(Routes.iceCoffeeDetails, arguments: state.iceList[index]);
                      },
                      child: IceCoffeeItem(
                        iceCoffee: state.iceList[index],
                      ));
                }));
      } else if (state is IceCoffeeLoadingState) {
        return const HotCoffeeShimmerLoading();
      } else if (state is IceCoffeeFaliureState) {
        return Center(
          child: Text(
            state.errorMessage,
            style: const TextStyle(fontSize: 22),
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}