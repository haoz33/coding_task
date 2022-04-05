import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/presentation/widget/product_image.dart';
import 'package:flutter/material.dart';

class RecentViewTile extends StatelessWidget {
  const RecentViewTile({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 100,
      child: Card(
        child: Column(children: [
          ProductImage(
            url: product.mainImage,
            height: 70,
          ),
          Text(product.name),
        ]),
      ),
    );
  }
}
