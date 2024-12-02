import 'package:flutter/material.dart';
import 'package:news_app/domain/presentation/widget/catogray/catogeray_card_list.dart';
import 'package:news_app/domain/presentation/widget/appbar/custom_news_screen_app_bar.dart';
import 'package:news_app/domain/presentation/widget/news/future_builder_News_list.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: const CustomNewsScreenAppBar(
          titlepartone: 'News',
          titleparttwo: 'Cloud',
        ),
      ),

      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomScrollView(
          slivers: [
            // Category Card List
            SliverToBoxAdapter(child: CatograyCardList()),
            // Space between elements
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            // Future Builder for News
            FutureBuilderNews(),
          ],
        ),
      ),
    );
  }
}
