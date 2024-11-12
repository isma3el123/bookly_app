import 'package:bookly_app/Features/presentation/views/widget/splash_view_body.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplashViewBody(),
    );
  }
}
