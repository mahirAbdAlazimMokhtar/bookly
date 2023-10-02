
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_saller_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view_items.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

