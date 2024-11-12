import 'package:flutter/material.dart';

import '../../../../constant.dart';
import 'widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: kPrimaryColor, body: SearchViewBody());
  }
}
