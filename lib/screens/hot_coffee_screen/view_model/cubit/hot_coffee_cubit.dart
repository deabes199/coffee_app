import 'package:bloc/bloc.dart';
import 'package:coffee_app/screens/hot_coffee_screen/model/hot_coffee_model.dart';
import 'package:coffee_app/screens/hot_coffee_screen/view_model/hot_coffee_repo.dart';

part 'hot_coffee_state.dart';

class HotCoffeeCubit extends Cubit<HotCoffeeState> {
  final HotCoffeeRepo hotCoffeeRepo;
  HotCoffeeCubit(this.hotCoffeeRepo) : super(HotCoffeeInitialState());

  Future<void> getHotCoffee() async {
    emit(HotCoffeeLoadingState());
    final response = await hotCoffeeRepo.getHotCoffee();
    response.fold((error) {
      emit(HotCoffeeErrorState(
          errorMessage: error.message ?? 'Unknown error occured'));
    }, (hotList) {
      emit(HotCoffeeLoadedState(hotCoffeeList: hotList));
    });
  }
}
