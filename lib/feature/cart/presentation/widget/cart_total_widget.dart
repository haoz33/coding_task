import 'package:coding_task/feature/cart/presentation/logic/cart_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartTotalWidget extends ConsumerWidget {
  const CartTotalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final total = ref.watch(cartNotifier.select((value) => value.total));
    return ListTile(
      title: Text('Total'),
      trailing: Text('£' + total.toStringAsFixed(2)),
    );
  }
}
