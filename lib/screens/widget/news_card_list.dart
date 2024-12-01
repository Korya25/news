import 'package:flutter/material.dart';
import 'package:news_app/screens/widget/news_card.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const NewsCard();
        },
      ),
    );
  }
}
