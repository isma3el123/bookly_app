import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_border,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '4.8',
          style: Styles.titleMedium
              .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: Styles.titleMedium
              .copyWith(fontSize: 15, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
