// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductAttributeCWProxy {
  ProductAttribute quantity(int quantity);

  ProductAttribute size(int size);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductAttribute(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductAttribute(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductAttribute call({
    int? quantity,
    int? size,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductAttribute.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductAttribute.copyWith.fieldName(...)`
class _$ProductAttributeCWProxyImpl implements _$ProductAttributeCWProxy {
  final ProductAttribute _value;

  const _$ProductAttributeCWProxyImpl(this._value);

  @override
  ProductAttribute quantity(int quantity) => this(quantity: quantity);

  @override
  ProductAttribute size(int size) => this(size: size);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductAttribute(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductAttribute(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductAttribute call({
    Object? quantity = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
  }) {
    return ProductAttribute(
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
      size: size == const $CopyWithPlaceholder() || size == null
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int,
    );
  }
}

extension $ProductAttributeCopyWith on ProductAttribute {
  /// Returns a callable class that can be used as follows: `instanceOfclass ProductAttribute extends Equatable.name.copyWith(...)` or like so:`instanceOfclass ProductAttribute extends Equatable.name.copyWith.fieldName(...)`.
  _$ProductAttributeCWProxy get copyWith => _$ProductAttributeCWProxyImpl(this);
}
