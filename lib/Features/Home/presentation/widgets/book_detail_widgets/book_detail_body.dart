import 'package:bookly/Features/Home/presentation/widgets/best_saller_widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentation/widgets/best_saller_widgets/custom_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'books_action_buttons.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 43.0),
                const Opacity(
                  opacity: .7,
                  child: Text(
                    'THe Jungle Book',
                    style: Styles.textStyle30,
                  ),
                ),
                const SizedBox(height: 6.0),
                Text('Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(height: 18.0),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 37.0),
                const BookActions(),
                const Expanded(child: SizedBox(height: 50.0)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can also Like This Book',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const SimilarBookListView(),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        )
      ],
    );
  }
}
