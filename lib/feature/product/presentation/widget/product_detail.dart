import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Details\n',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            product.description,
          ),
          Text('\nbrand: ${product.brandName}'),
          Text('\nSKU: ${product.sku}'),
        ],
      ),
    );
  }
}
