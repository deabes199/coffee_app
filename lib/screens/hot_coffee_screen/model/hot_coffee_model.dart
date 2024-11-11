import 'package:json_annotation/json_annotation.dart';
part 'hot_coffee_model.g.dart';

@JsonSerializable()
class HotCoffeeModel {
  final String? title;
  final String? description;
  final String? image;
  final int? id;
  final List<String>? ingredients;

  HotCoffeeModel({required this.title, required this.description, required this.image, required this.id, required this.ingredients});
factory HotCoffeeModel.fromJson(Map<String, dynamic> json) => _$HotCoffeeModelFromJson(json);
Map<String, dynamic> toJson() => _$HotCoffeeModelToJson(this);

}
