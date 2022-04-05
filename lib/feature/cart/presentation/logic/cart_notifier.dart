import 'package:coding_task/feature/cart/data/model/cart.dart';
import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/data/model/product_attribute.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<Cart> {
  CartNotifier() : super(const Cart({}));

  void add(Product product, ProductAttribute attribute) {
    state = state.add(product, attribute);
  }

  void increment(String id) {
    state = state.increment(id);
  }

  void decrement(String id) {
    state = state.decrement(id);
  }
}

final cartNotifier =
    StateNotifierProvider<CartNotifier, Cart>((ref) => CartNotifier());
