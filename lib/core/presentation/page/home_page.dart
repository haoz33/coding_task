import 'package:coding_task/feature/cart/presentation/widget/cart_fab.dart';
import 'package:coding_task/feature/product/presentation/widget/product_list_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ProductListView(),
      floatingActionButton: const CartFab(),
    );
  }
}
