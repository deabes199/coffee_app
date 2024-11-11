import 'package:bloc/bloc.dart';
import 'package:coffee_app/screens/ice_coffee_screen/model/ice_coffee_model.dart';
import 'package:coffee_app/screens/ice_coffee_screen/view_model/ice_coffee_repo.dart';
import 'package:meta/meta.dart';

part 'ice_coffee_state.dart';

class IceCoffeeCubit extends Cubit<IceCoffeeState> {
  IceCoffeeCubit(this.iceCoffeeRepo) : super(IceCoffeeInitial());
  final IceCoffeeRepo iceCoffeeRepo;
  Future<void> getIceCoffee() async {
    emit(IceCoffeeLoadingState());
    final response = await iceCoffeeRepo.getIceCoffee();
    response.fold((error) {
      emit(IceCoffeeFaliureState(error.message??'Unknown error occured'));
    }, (iceList) {
      emit(IceCoffeeSuccessState(iceList));
    });
  }
}
