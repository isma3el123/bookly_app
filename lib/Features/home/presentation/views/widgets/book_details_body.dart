import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appbar_bookdetails.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'book_actions.dart';
import 'custom_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomAppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: const SizedBox(
              height: 320,
              child: CustomListViewItems(
                imageUrl: '',
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "The Jungle Book",
          style: Styles.titleMedium.copyWith(fontSize: 35),
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.titleMedium.copyWith(fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        const BooksAction(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like ",
              style: Styles.titleMedium.copyWith(fontSize: 15),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilarBooksListView()
      ],
    );
  }
}
