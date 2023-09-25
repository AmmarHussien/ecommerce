import 'package:flutter/material.dart';

import 'widgets/banner_widget.dart';
import 'widgets/category_text.dart';
import 'widgets/search_input.dart';
import 'widgets/welcom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomText(),
          SizedBox(
            height: 10,
          ),
          SearchInput(),
          BannerWidget(),
          CategoryText(),
        ],
      ),
    );
  }
}
