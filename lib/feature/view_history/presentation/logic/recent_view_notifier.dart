import 'dart:collection';

import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentViewNotifier extends StateNotifier<Queue<Product>> {
  RecentViewNotifier() : super(Queue());

  void add(Product product) {
    if (state.contains(product)) {
      state.remove(product);
    }

    state.addFirst(product);
    state = Queue.of(state);
  }
}

final recentViewNotifier =
    StateNotifierProvider<RecentViewNotifier, Queue<Product>>(
        (ref) => RecentViewNotifier());
