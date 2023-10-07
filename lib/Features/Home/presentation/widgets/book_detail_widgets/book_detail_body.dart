import 'package:bookly/Features/Home/presentation/widgets/best_saller_widgets/custom_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
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
          ],
        ),
      ),
    );
  }
}
