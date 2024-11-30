import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/screens/widget/custom_app_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(
          title: 'News Cloud',
          titleTextStyle: AppTextStyle.heading,
        ),
      ),
    );
  }
}
