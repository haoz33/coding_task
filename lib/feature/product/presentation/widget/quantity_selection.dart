import 'package:coding_task/feature/product/presentation/logic/product_attribute_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuantitySelection extends ConsumerWidget {
  const QuantitySelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return ListTile(
      title: Row(
        children: [
          Text('Quantity:'),
          SizedBox(
            width: 18,
          ),
          SizedBox(
            width: 100,
            child: DropdownButton<int>(
              isExpanded: true,
              value: ref.watch(
                  productAttributeNotifier.select((value) => value.quantity)),
              items: List.generate(10, (index) => index + 1, growable: false)
                  .map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
              onChanged: (v) {
                if (v != null) {
                  ref
                      .read(productAttributeNotifier.notifier)
                      .quantityUpdated(v);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
