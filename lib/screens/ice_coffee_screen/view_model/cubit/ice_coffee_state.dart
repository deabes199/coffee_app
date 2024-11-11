part of 'ice_coffee_cubit.dart';

@immutable
sealed class IceCoffeeState {}

final class IceCoffeeInitial extends IceCoffeeState {}

final class IceCoffeeLoadingState extends IceCoffeeState {}

final class IceCoffeeSuccessState extends IceCoffeeState {
  final List<IceCoffeeModel> iceList;

  IceCoffeeSuccessState(this.iceList);
}

final class IceCoffeeFaliureState extends IceCoffeeState {
  final String errorMessage;

  IceCoffeeFaliureState(this.errorMessage);
}
