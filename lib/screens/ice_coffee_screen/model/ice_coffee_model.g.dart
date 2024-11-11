// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ice_coffee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IceCoffeeModel _$IceCoffeeModelFromJson(Map<String, dynamic> json) =>
    IceCoffeeModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      id: (json['id'] as num?)?.toInt(),
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$IceCoffeeModelToJson(IceCoffeeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'id': instance.id,
      'ingredients': instance.ingredients,
    };
