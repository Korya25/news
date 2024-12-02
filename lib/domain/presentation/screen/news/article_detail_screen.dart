import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/data/source/local/favorite_hive_services.dart';
import 'package:news_app/domain/presentation/widget/favorite/favoratie_icon_button.dart';
import 'package:news_app/domain/presentation/widget/other/sparete_news_datail_screen.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen(
      {super.key,
      required this.articlemodel,
      required this.index,
      required this.itemFavortie});
  final Articlemodel articlemodel;
  final int index;

  final Articlemodel itemFavortie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Article',
          style: AppTextStyle.heading,
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: FavoriteHiveServices.box.listenable(),
        builder: (context, box, _) {
          final isFavorrtie = box.containsKey(index);
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    articlemodel.title,
                    style: AppTextStyle.titleNewsCard,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage(articlemodel.imagepath),
                          fit: BoxFit.fill,
                        ),
                      ),
                      FavoraiteIconButton(
                        isFavorrtie: isFavorrtie,
                        onpressed: () {
                          if (isFavorrtie) {
                            FavoriteHiveServices.removeFavortie(index);
                          } else {
                            FavoriteHiveServices.addFavorite(index, 'korya');
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    height: 50,
                    child: SpareteDetailNews(
                      title: 'Description',
                    )),
                Text(
                  articlemodel.description,
                  style: AppTextStyle.descriptionNewsCard,
                ),
                const SizedBox(
                    height: 50,
                    child: SpareteDetailNews(
                      title: 'Content',
                    )),
                Text(
                  articlemodel.content,
                  style: AppTextStyle.descriptionNewsCard,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
