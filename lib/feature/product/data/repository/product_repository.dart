import 'dart:convert';

import 'package:coding_task/feature/product/data/model/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

class ProductRepository {
  Future<List<Product>> fetchAll() async {
    const endpoint =
        'https://s3-eu-west-1.amazonaws.com/api.themeshplatform.com/products.json';

    final res = await get(Uri.parse(endpoint));

    final json = jsonDecode(res.body);

    final data =
        (json['data'] as List).map((e) => Product.fromJson(e)).toList();

    return data;
  }
}

final productRepository = Provider((ref) => ProductRepository());
