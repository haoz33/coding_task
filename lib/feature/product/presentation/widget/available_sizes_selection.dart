import 'package:flutter/material.dart';

class AvailableSizesSelection extends StatelessWidget {
  const AvailableSizesSelection({Key? key, required this.sizes})
      : super(key: key);
  final List<String> sizes;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: DropdownButton<String>(
        isExpanded: true,
        value: sizes.first,
        items: sizes
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: (v) {},
      ),
    );
  }
}
