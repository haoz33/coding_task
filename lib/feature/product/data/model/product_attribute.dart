import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'product_attribute.g.dart';

@CopyWith()
class ProductAttribute extends Equatable {
  const ProductAttribute({required this.size, required this.quantity});

  final int size;
  final int quantity;

  @override
  List<Object?> get props => [size, quantity];
}
