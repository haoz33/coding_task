import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/presentation/logic/product_attribute_notifier.dart';
import 'package:coding_task/feature/product/presentation/widget/add_to_cart_button.dart';
import 'package:coding_task/feature/product/presentation/widget/available_sizes_selection.dart';
import 'package:coding_task/feature/product/presentation/widget/product_detail.dart';
import 'package:coding_task/feature/product/presentation/widget/product_image.dart';
import 'package:coding_task/feature/product/presentation/widget/quantity_selection.dart';
import 'package:coding_task/feature/product/presentation/widget/stock_indicator.dart';
import 'package:coding_task/feature/view_history/presentation/logic/recent_view_notifier.dart';
import 'package:coding_task/feature/view_history/presentation/widget/recent_view_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context, ref) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ref
          .read(productAttributeNotifier.notifier)
          .sizeUpdated(int.parse(product.sizes.first));
    });
    return WillPopScope(
      onWillPop: () async {
        ref.read(recentViewNotifier.notifier).add(product);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductImage(
                url: product.mainImage,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              ListTile(
                title: Text(product.name,
                    style: Theme.of(context).textTheme.headline4),
                subtitle: Text(product.price.toString() +
                    '\n' +
                    'color: ${product.colour}'),
                trailing: StockIndicator(stock: product.stockStatus),
              ),
              AvailableSizesSelection(sizes: product.sizes),
              const QuantitySelection(),
              const AddToCartButton(),
              ProductDetail(product: product),
              const Divider(),
              const RecentViewList()
            ],
          ),
        ),
      ),
    );
  }
}
