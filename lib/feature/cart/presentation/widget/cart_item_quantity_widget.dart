import 'package:coding_task/feature/cart/data/model/cart_item.dart';
import 'package:coding_task/feature/cart/presentation/logic/cart_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItemQuantityWidget extends ConsumerWidget {
  const CartItemQuantityWidget({Key? key, required this.item})
      : super(key: key);

  final CartItem item;
  @override
  Widget build(BuildContext context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            ref.read(cartNotifier.notifier).decrement(item.id);
          },
          icon: const Icon(
            Icons.remove,
            color: Colors.red,
          ),
        ),
        Text(item.quantity.toString()),
        IconButton(
          onPressed: () {
            ref.read(cartNotifier.notifier).increment(item.id);
          },
          icon: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}
