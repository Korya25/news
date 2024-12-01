import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen({super.key});
  static const String id = 'ArticleDetailScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Article',
          style: AppTextStyle.heading,
        ),
      ),
    );
  }
}
