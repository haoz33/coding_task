import 'package:coding_task/feature/product/data/model/product_attribute.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductAttributeNotifier extends StateNotifier<ProductAttribute> {
  // Default Quantity to 1, size will be updated to the first selectable size when user entered the product page.
  ProductAttributeNotifier()
      : super(const ProductAttribute(size: 0, quantity: 1));

  void quantityUpdated(int quantity) {
    state = state.copyWith(quantity: quantity);
  }

  void sizeUpdated(int size) {
    state = state.copyWith(size: size);
  }
}

final productAttributeNotifier =
    StateNotifierProvider<ProductAttributeNotifier, ProductAttribute>(
        (ref) => ProductAttributeNotifier());
