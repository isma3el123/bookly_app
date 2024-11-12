import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: "19.99\$",
          background: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        ),
        CustomButton(
          text: "Free Preview",
          background: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
        )
      ],
    );
  }
}
