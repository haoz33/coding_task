import 'dart:collection';

import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:equatable/equatable.dart';

class ViewHistory extends Equatable {
  const ViewHistory(this.history);

  final Queue<Product> history;

  ViewHistory add(Product product) {
    if (history.contains(product)) {
      history.remove(product);
    }

    history.addFirst(product);

    return ViewHistory(Queue.of(history));
  }

  @override
  List<Object?> get props => [history];
}
