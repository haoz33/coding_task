import 'package:coding_task/feature/cart/data/model/cart.dart';
import 'package:coding_task/feature/product/data/model/price.dart';
import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/product/data/model/product_attribute.dart';
import 'package:flutter_test/flutter_test.dart';

const p1 = Product(
    id: '1',
    name: 'p1',
    brandName: 'p1',
    sizes: ['1'],
    stockStatus: 'stockStatus',
    description: 'description',
    mainImage: 'mainImage',
    price: Price(amount: '100', currency: 'GBP'));

void main() {
  test('add item with correct id', () {
    Cart cart = Cart({});

    cart = cart.add(p1, ProductAttribute(size: 1, quantity: 1));

    expect(cart.items.first.id, '11');
  });

  test(
      'add multiple same item result in the increment of quantity of the original item',
      () {
    Cart cart = Cart({});

    cart = cart.add(p1, ProductAttribute(size: 1, quantity: 1));
    cart = cart.add(p1, ProductAttribute(size: 1, quantity: 2));
    cart = cart.add(p1, ProductAttribute(size: 1, quantity: 3));

    expect(cart.items.first.quantity, 6);
  });

  test('item is removed when decrement to below one', () {
    Cart cart = Cart({});

    cart = cart.add(p1, ProductAttribute(size: 1, quantity: 1));
    cart = cart.decrement('11');

    expect(cart.items.isEmpty, true);
  });

  test('item quantity is increment by one when calling the increment method',
      () {
    Cart cart = Cart({});

    cart = cart.add(p1, ProductAttribute(size: 1, quantity: 1));
    cart = cart.increment('11');

    expect(cart.items.first.quantity, 2);
  });
}
