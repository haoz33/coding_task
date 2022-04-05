import 'package:coding_task/feature/product/data/repository/product_repository.dart';
import 'package:coding_task/feature/product/presentation/widget/product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsProvider = FutureProvider(
    (ref) async => await ref.watch(productRepository).fetchAll());

class ProductListView extends ConsumerWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final products = ref.watch(productsProvider);

    return products.when(
      data: (products) => ListView(
        children: products
            .map(
              (e) => ProductView(product: e),
            )
            .toList(),
      ),
      error: (err, stack) => Text(err.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
