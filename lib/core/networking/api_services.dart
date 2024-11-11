import 'package:coffee_app/core/networking/api_constant.dart';
import 'package:coffee_app/screens/hot_coffee_screen/model/hot_coffee_model.dart';
import 'package:coffee_app/screens/ice_coffee_screen/model/ice_coffee_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstant.baseURL)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
  @GET(ApiConstant.hotCoffee)
  Future<List<HotCoffeeModel>>getHotCoffee();
  @GET(ApiConstant.iceCoffee)
  Future<List<IceCoffeeModel>>getIceCoffee();
  
}
