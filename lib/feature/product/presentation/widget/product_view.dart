import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/presentation/page/product_page.dart';
import 'package:coding_task/feature/product/presentation/widget/product_image.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProductImage(url: product.mainImage),
      title: Text(product.name),
      subtitle: Text(product.sizes.length.toString() + ' sizes'),
      trailing: Text(product.price.currency + ' ' + product.price.amount),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => ProductPage(
                  product: product,
                )),
          ),
        );
      },
    );
  }
}
