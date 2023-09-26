import 'package:bookly/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_list_view.dart';
import 'featured_list_view_items.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}


