import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/data/source/remote/news_api_services.dart';
import 'package:news_app/domain/presentation/widget/news/news_card_sliver_list.dart';

class FutureBuilderNews extends StatelessWidget {
  const FutureBuilderNews({super.key, this.catogray});
  final String? catogray;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
      future:
          NewsApiServices(Dio()).fetchArticles(catogray: catogray ?? 'general'),
      builder: (context, snapshot) {
        // Using a switch to handle different states
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case ConnectionState.done:
            if (snapshot.hasError) {
              return _errorState("Error: Failed to load data");
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return NewsCardList(articles: snapshot.data!);
            } else {
              return _errorState("No articles found");
            }
          default:
            return const SliverToBoxAdapter(
              child: Center(
                child: Text("Unexpected state"),
              ),
            );
        }
      },
    );
  }

  // Method to show an error message
  Widget _errorState(String message) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          message,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
