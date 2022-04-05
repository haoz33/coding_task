import 'dart:collection';

import 'package:coding_task/feature/product/data/model/price.dart';
import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:coding_task/feature/view_history/presentation/logic/recent_view_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class Listener extends Mock {
  void call(Queue<Product>? previous, Queue<Product> value);
}

const p1 = Product(
    id: '1',
    name: 'p1',
    brandName: 'p1',
    sizes: ['1'],
    stockStatus: 'stockStatus',
    description: 'description',
    mainImage: 'mainImage',
    price: Price(amount: '100', currency: 'GBP'));
const p2 = Product(
    id: '2',
    name: 'p2',
    brandName: 'p2',
    sizes: ['2'],
    stockStatus: 'stockStatus',
    description: 'description',
    mainImage: 'mainImage',
    price: Price(amount: '100', currency: 'GBP'));

void main() {
  test('append new viewing history', () {
    final container = ProviderContainer();
    container.read(recentViewNotifier.notifier).add(p1);

    expect(container.read(recentViewNotifier).length, 1);
  });

  test('old history is removed when duplicated history is added', () {
    final container = ProviderContainer();
    container.read(recentViewNotifier.notifier).add(p1);

    container.read(recentViewNotifier.notifier).add(p2);
    container.read(recentViewNotifier.notifier).add(p1);

    expect(container.read(recentViewNotifier).length, 2);
    expect(container.read(recentViewNotifier).first, p1);
  });
}
