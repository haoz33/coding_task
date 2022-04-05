import 'package:flutter/material.dart';

class StockIndicator extends StatelessWidget {
  const StockIndicator({Key? key, required this.stock}) : super(key: key);

  final String stock;
  @override
  Widget build(BuildContext context) {
    return stock == 'IN STOCK'
        ? Text(
            'IN STOCK',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: Colors.green),
          )
        : Text(
            'OUT OF STOCK',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: Colors.red),
          );
  }
}
