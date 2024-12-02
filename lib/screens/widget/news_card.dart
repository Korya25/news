import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/data/local/Hive/favorite_hive_services.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/screens/screen/article_detail_screen.dart';
import 'package:news_app/screens/widget/favoratie_icon_button.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
      {super.key,
      required this.index,
      required this.itemFavortie,
      required this.articlemodel});
  final Articlemodel articlemodel;
  final int index;
  final String itemFavortie;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: FavoriteServices.box.listenable(),
      builder: (context, box, _) {
        final isFavorrtie = box.containsKey(index);
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ArticleDetailScreen(
                        articlemodel: articlemodel,
                        index: index,
                        itemFavortie: itemFavortie,
                      );
                    },
                  ));
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage(articlemodel.imagepath),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      articlemodel.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.titleNewsCard,
                    ),
                    const SizedBox(
                      height: 0.5,
                    ),
                    Text(
                      articlemodel.description,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: AppTextStyle.descriptionNewsCard,
                    ),
                  ],
                ),
              ),
              FavoraiteIconButton(
                isFavorrtie: isFavorrtie,
                onpressed: () {
                  if (isFavorrtie) {
                    FavoriteServices.removeFavortie(index);
                  } else {
                    FavoriteServices.addFavorite(index, itemFavortie);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
