import 'package:flutter/material.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/domain/presentation/widget/news/news_card.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({
    super.key,
    required this.articles,
  });
  final List<Articlemodel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildNewsCard(articles[index], index);
        },
        childCount: articles.length,
      ),
    );
  }

  NewsCard _buildNewsCard(Articlemodel articlemodel, int index) {
    return NewsCard(
      index: index,
      articlemodel: articlemodel,
    );
  }
}
