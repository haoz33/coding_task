import 'package:badges/badges.dart';
import 'package:coding_task/feature/cart/presentation/logic/cart_notifier.dart';
import 'package:coding_task/feature/cart/presentation/page/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartFab extends StatelessWidget {
  const CartFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, CartPage.route);
      },
      child: Badge(
        badgeColor: Colors.white,
        badgeContent: Consumer(
          builder: (context, ref, child) =>
              Text(ref.watch(cartNotifier).items.length.toString()),
        ),
        child: Icon(
          Icons.shopping_cart,
          color: Theme.of(context).colorScheme.primary,
          size: 38,
        ),
      ),
    );
  }
}
