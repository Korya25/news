import 'package:flutter/material.dart';
import 'package:news_app/domain/presentation/widget/catogray/catogeray_card_list.dart';
import 'package:news_app/domain/presentation/widget/appbar/custom_news_screen_app_bar.dart';
import 'package:news_app/domain/presentation/widget/news/future_builder_News_list.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomNewsScreenAppBar(
          titlepartone: 'News',
          titleparttwo: 'Cloud',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CatograyCardList()),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            FutureBuilderNews(),
          ],
        ),
      ),
    );
  }
}