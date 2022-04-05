import 'package:coding_task/feature/cart/data/model/cart_item.dart';
import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/data/model/product_attribute.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  const Cart(this._data);

  final Map<String, CartItem> _data;

  List<CartItem> get items => _data.values.toList();

  double get total => items.fold(0, (pre, cur) => pre + cur.price);

  Cart add(Product product, ProductAttribute attribute) {
    final newItem = CartItem(
        product: product, size: attribute.size, quantity: attribute.quantity);

    // Increment quantity by one when a same product with same size is added
    if (_data.containsKey(newItem.id)) {
      return increment(newItem.id, incrementBy: attribute.quantity);
    }

    return Cart(Map.of(_data)..[newItem.id] = newItem);
  }

  Cart increment(String id, {int incrementBy = 1}) {
    final item = _data[id]!;
    return Cart(Map.of(_data)
      ..[id] = item.copyWith(quantity: item.quantity + incrementBy));
  }

  Cart decrement(String id) {
    final item = _data[id]!;

    if (item.quantity - 1 == 0) {
      return Cart(Map.of(_data)..remove(id));
    }

    return Cart(
        Map.of(_data)..[id] = item.copyWith(quantity: item.quantity - 1));
  }

  @override
  List<Object?> get props => [_data];
}
