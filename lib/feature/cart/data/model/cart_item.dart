import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'cart_item.g.dart';

@CopyWith()
class CartItem extends Equatable {
  // A combination of product id and size can be used to identify a cart item
  CartItem({required this.product, required this.size, required this.quantity})
      : id = '${product.id}$size';

  final String id;
  final Product product;
  final int size;
  final int quantity;

  double get price => double.parse(product.price.amount) * quantity;

  @override
  List<Object?> get props => [id, product, size, quantity];
}
