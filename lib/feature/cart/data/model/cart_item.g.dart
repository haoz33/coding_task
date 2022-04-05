// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CartItemCWProxy {
  CartItem id(int id);

  CartItem product(Product product);

  CartItem quantity(int quantity);

  CartItem size(String size);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CartItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CartItem(...).copyWith(id: 12, name: "My name")
  /// ````
  CartItem call({
    int? id,
    Product? product,
    int? quantity,
    String? size,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCartItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCartItem.copyWith.fieldName(...)`
class _$CartItemCWProxyImpl implements _$CartItemCWProxy {
  final CartItem _value;

  const _$CartItemCWProxyImpl(this._value);

  @override
  CartItem id(int id) => this(id: id);

  @override
  CartItem product(Product product) => this(product: product);

  @override
  CartItem quantity(int quantity) => this(quantity: quantity);

  @override
  CartItem size(String size) => this(size: size);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CartItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CartItem(...).copyWith(id: 12, name: "My name")
  /// ````
  CartItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? product = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
  }) {
    return CartItem(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      product: product == const $CopyWithPlaceholder() || product == null
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as Product,
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
      size: size == const $CopyWithPlaceholder() || size == null
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as String,
    );
  }
}

extension $CartItemCopyWith on CartItem {
  /// Returns a callable class that can be used as follows: `instanceOfclass CartItem extends Equatable.name.copyWith(...)` or like so:`instanceOfclass CartItem extends Equatable.name.copyWith.fieldName(...)`.
  _$CartItemCWProxy get copyWith => _$CartItemCWProxyImpl(this);
}
