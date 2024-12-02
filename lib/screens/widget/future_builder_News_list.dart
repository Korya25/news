import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/data/remote/news_api_services.dart';
import 'package:news_app/screens/widget/news_card_sliver_list.dart';

class FutureBuilderNews extends StatelessWidget {
  const FutureBuilderNews({super.key});

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
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          // If data is available
          return NewsCardList(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          // If there is an error fetching data
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("Error: Failed to load data"),
            ),
          );
        } else {
          // If no data available
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("No articles found"),
            ),
          );
        }
      },
    );
  }
}
