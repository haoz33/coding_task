import 'package:coding_task/feature/product/presentation/logic/product_attribute_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AvailableSizesSelection extends ConsumerWidget {
  const AvailableSizesSelection({Key? key, required this.sizes})
      : super(key: key);
  final List<String> sizes;
  @override
  Widget build(BuildContext context, ref) {
    final size = ref.watch(
        productAttributeNotifier.select((value) => value.size.toString()));
    return ListTile(
      title: Row(
        children: [
          const Text('Choose Size:'),
          const SizedBox(
            width: 18,
          ),
          SizedBox(
            width: 100,
            child: DropdownButton<String>(
              isExpanded: true,
              value: size == '0' ? sizes.first : size,
              items: sizes
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) {
                if (v != null) {
                  ref
                      .read(productAttributeNotifier.notifier)
                      .sizeUpdated(int.parse(v));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
