import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'cart_item.g.dart';

@CopyWith()
class CartItem extends Equatable {
  const CartItem(
      {required this.id,
      required this.product,
      required this.size,
      required this.quantity});

  final int id;
  final Product product;
  final String size;
  final int quantity;

  @override
  List<Object?> get props => [id, product, size, quantity];
}
