import 'package:coding_task/feature/cart/presentation/widget/cart_list_view.dart';
import 'package:coding_task/feature/cart/presentation/widget/cart_total_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  static const route = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: const [
          Expanded(child: CartListView()),
          CartTotalWidget(),
        ],
      ),
    );
  }
}
