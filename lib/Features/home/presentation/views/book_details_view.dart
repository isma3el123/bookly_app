import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_body.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
