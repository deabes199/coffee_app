import 'package:coffee_app/core/networking/api_error_handler.dart';
import 'package:coffee_app/core/networking/api_error_model.dart';
import 'package:coffee_app/core/networking/api_services.dart';
import 'package:coffee_app/screens/hot_coffee_screen/model/hot_coffee_model.dart';
import 'package:dartz/dartz.dart';

class HotCoffeeRepo {
  final ApiServices apiServices;

  HotCoffeeRepo({required this.apiServices});
  Future<Either<ApiErrorModel, List<HotCoffeeModel>>> getHotCoffee() async {
    try {
      final response = await apiServices.getHotCoffee();
      return Right(response);
    } catch (error) {
      return left(ApiErrorHandler.handle(error));
    }
  }
}
