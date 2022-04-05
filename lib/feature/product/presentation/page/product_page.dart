import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/presentation/widget/add_to_cart_button.dart';
import 'package:coding_task/feature/product/presentation/widget/available_sizes_selection.dart';
import 'package:coding_task/feature/product/presentation/widget/product_detail.dart';
import 'package:coding_task/feature/product/presentation/widget/stock_indicator.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            product.mainImage,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          ListTile(
            title: Text(product.name,
                style: Theme.of(context).textTheme.headline4),
            subtitle: Text(
                product.price.toString() + '\n' + 'color: ${product.colour}'),
            trailing: StockIndicator(stock: product.stockStatus),
          ),
          ListTile(
            title: Row(
              children: [
                const Text('Choose Size:'),
                const SizedBox(
                  width: 18,
                ),
                AvailableSizesSelection(sizes: product.sizes),
              ],
            ),
          ),
          const AddToCartButton(),
          ProductDetail(product: product),
        ],
      ),
    );
  }
}
