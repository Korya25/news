import 'package:flutter/material.dart';
import 'package:news_app/screens/widget/news_card.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
      ],
    );
  }
}
