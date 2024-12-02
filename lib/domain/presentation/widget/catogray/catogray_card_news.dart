import 'package:flutter/material.dart';
import 'package:news_app/domain/presentation/widget/appbar/custom_news_screen_app_bar.dart';
import 'package:news_app/domain/presentation/widget/news/future_builder_News_list.dart';

class CatograycardNews extends StatelessWidget {
  const CatograycardNews({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomNewsScreenAppBar(
          titlepartone: title,
          titleparttwo: '',
        ),
      ),
      body: CustomScrollView(
        slivers: [
          FutureBuilderNews(
            catogray: title, // Fetch news based on category title
          ),
        ],
      ),
    );
  }
}
