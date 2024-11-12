import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, this.errMassage});
  final errMassage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMassage,
      style: Styles.titleMedium,
    );
  }
}
