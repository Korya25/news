import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/data/source/local/favorite_hive_services.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/domain/presentation/screen/news/article_detail_screen.dart';
import 'package:news_app/domain/presentation/widget/favorite/favoratie_icon_button.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.index, required this.articlemodel});
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
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ArticleDetailScreen(
                        articlemodel: articlemodel,
                        index: index,
                        itemFavortie: articlemodel,
                      );
                    },
                  ));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: articlemodel.imagepath,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
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
                    FavoriteHiveServices.removeFavortie(index);
                  } else {
                    FavoriteHiveServices.addFavorite(
                        index, articlemodel.toString());
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
