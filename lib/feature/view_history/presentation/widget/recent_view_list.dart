import 'package:coding_task/feature/view_history/presentation/logic/recent_view_notifier.dart';
import 'package:coding_task/feature/view_history/presentation/widget/recent_view_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentViewList extends ConsumerWidget {
  const RecentViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final products = ref.watch(recentViewNotifier);

    if (products.isEmpty) {
      return const SizedBox();
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recently Viewed',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:
                    products.map((e) => RecentViewTile(product: e)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
