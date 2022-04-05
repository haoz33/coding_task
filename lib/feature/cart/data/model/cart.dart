import 'package:coding_task/feature/cart/data/model/cart_item.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  const Cart(this.items);

  final List<CartItem> items;

  // Cart add(CartItem item) {}

  // Cart update(int id) {}

  @override
  List<Object?> get props => throw UnimplementedError();
}
