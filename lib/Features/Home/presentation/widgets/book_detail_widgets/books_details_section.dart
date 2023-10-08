import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../best_saller_widgets/book_rating.dart';
import '../best_saller_widgets/custom_list_view.dart';
import 'books_action_buttons.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
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
      ],
    );
  }
}