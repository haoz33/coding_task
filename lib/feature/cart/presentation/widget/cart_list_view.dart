import 'package:coding_task/feature/cart/presentation/logic/cart_notifier.dart';
import 'package:coding_task/feature/cart/presentation/widget/cart_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartListView extends ConsumerWidget {
  const CartListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final items = ref.watch(cartNotifier).items;
    return ListView.builder(
      itemBuilder: (context, index) {
        return CartItemTile(item: items[index]);
      },
      itemCount: items.length,
    );
  }
}
