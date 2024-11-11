import 'package:coffee_app/core/networking/api_error_handler.dart';
import 'package:coffee_app/core/networking/api_error_model.dart';
import 'package:coffee_app/core/networking/api_services.dart';
import 'package:coffee_app/screens/ice_coffee_screen/model/ice_coffee_model.dart';
import 'package:dartz/dartz.dart';

class IceCoffeeRepo {
  final ApiServices apiServices;

  IceCoffeeRepo({required this.apiServices});
  Future<Either<ApiErrorModel, List<IceCoffeeModel>>> getIceCoffee() async {
    try {
      final response = await apiServices.getIceCoffee();
      return right(response);
    } catch (error) {
      return left(ApiErrorHandler.handle(error));
    }
  }
}
