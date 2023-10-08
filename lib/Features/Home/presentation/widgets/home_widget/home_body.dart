import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../best_saller_widgets/best_saller_list_view.dart';

import '../best_saller_widgets/custom_app_bar.dart';
import '../best_saller_widgets/custom_book_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    //if you want to scroll
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppBar(),
            ),
            FeaturedBooksListView(),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'News Book',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
