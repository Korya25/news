import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/data/source/local/favorite_hive_services.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/domain/presentation/screen/news/article_detail_screen.dart';
import 'package:news_app/domain/presentation/widget/news/build_ews_card_content.dart';
import 'package:news_app/domain/presentation/widget/news/widgets/build_favortieIcon_button.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.articlemodel,
  });
  final Articlemodel articlemodel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: FavoriteHiveServices.box.listenable(),
      builder: (context, box, _) {
        final isFavorrtie = box.containsKey(index);
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  navigateToDetailScreen(context);
                },
                child: BuildNewsCardContent(articlemodel: articlemodel),
              ),
              BuildFavortieIconButton(isFavorrtie: isFavorrtie, index: index),
            ],
          ),
        );
      },
    );
  }

  void navigateToDetailScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return ArticleDetailScreen(
          articlemodel: articlemodel,
          index: index,
          itemFavortie: articlemodel,
        );
      },
    ));
  }
}
