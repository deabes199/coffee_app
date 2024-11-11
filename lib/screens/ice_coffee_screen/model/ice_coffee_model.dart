import 'package:json_annotation/json_annotation.dart';

part 'ice_coffee_model.g.dart';

@JsonSerializable()
class IceCoffeeModel {
  final String? title;
  final String? description;
  final String? image;
  final int? id;
  final List<String>? ingredients;

  IceCoffeeModel({
    required this.title,
    required this.description,
    required this.image,
    required this.id,
    required this.ingredients,
  });

  factory IceCoffeeModel.fromJson(Map<String, dynamic> json) =>_$IceCoffeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$IceCoffeeModelToJson(this);
}
