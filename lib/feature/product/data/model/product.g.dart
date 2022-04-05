// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      sku: json['SKU'] as String?,
      name: json['name'] as String,
      brandName: json['brandName'] as String,
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
      stockStatus: json['stockStatus'] as String,
      colour: json['colour'] as String?,
      description: json['description'] as String,
      mainImage: json['mainImage'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'SKU': instance.sku,
      'name': instance.name,
      'brandName': instance.brandName,
      'mainImage': instance.mainImage,
      'price': instance.price.toJson(),
      'sizes': instance.sizes,
      'stockStatus': instance.stockStatus,
      'colour': instance.colour,
      'description': instance.description,
    };
