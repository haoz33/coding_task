import 'package:coding_task/feature/cart/data/model/cart_item.dart';
import 'package:coding_task/feature/cart/presentation/widget/cart_item_quantity_widget.dart';
import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({Key? key, required this.item}) : super(key: key);

  final CartItem item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.product.name),
      subtitle:
          Text('Size: ${item.size} \nPrice: £${item.price.toStringAsFixed(2)}'),
      trailing: SizedBox(
        width: 120,
        child: CartItemQuantityWidget(item: item),
      ),
    );
  }
}
