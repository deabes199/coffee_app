part of 'hot_coffee_cubit.dart';


class HotCoffeeState {}

final class HotCoffeeInitialState extends HotCoffeeState {}

final class HotCoffeeLoadingState extends HotCoffeeState {}

final class HotCoffeeLoadedState extends HotCoffeeState {
  final List<HotCoffeeModel> hotCoffeeList;

  HotCoffeeLoadedState({required this.hotCoffeeList});
}

final class HotCoffeeErrorState extends HotCoffeeState {
  final String errorMessage;

  HotCoffeeErrorState( {required this.errorMessage});
}
