import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/data/remote/news_api_services.dart';
import 'package:news_app/screens/widget/news_card.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
      future: NewsApiServices(Dio()).fetchArticles(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasData) {
          return SliverList.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return NewsCard(
                index: index,
                itemFavortie: 'ko',
              );
            },
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("Error Data"),
            ),
          );
        }
      },
    );
  }
}
/*
SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return NewsCard(
                  index: index,
                  itemFavortie: 'ko',
                );
              },
            ),
          );
*/