import 'package:coding_task/feature/cart/presentation/logic/cart_notifier.dart';
import 'package:coding_task/feature/cart/presentation/page/cart_page.dart';
import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/presentation/logic/product_attribute_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddToCartButton extends ConsumerWidget {
  const AddToCartButton({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          ref.read(cartNotifier.notifier).add(
                product,
                ref.read(productAttributeNotifier),
              );
          Navigator.pushNamed(context, CartPage.route);
        },
        child: const Text('Add To Cart'),
      ),
    );
  }
}
