import 'package:coding_task/feature/product/data/model/price.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
  final String id;
  @JsonKey(name: 'SKU')
  final String? sku;
  final String name;
  final String brandName;
  final String mainImage;
  final Price price;
  final List<String> sizes;
  final String stockStatus;
  final String? colour;
  final String description;

  const Product(
      {required this.id,
      this.sku,
      required this.name,
      required this.brandName,
      required this.sizes,
      required this.stockStatus,
      this.colour,
      required this.description,
      required this.mainImage,
      required this.price});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  List<Object?> get props => [
        id,
        sku,
        name,
        brandName,
        mainImage,
        price,
        sizes,
        stockStatus,
        colour,
        description
      ];
}
