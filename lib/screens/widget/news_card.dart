import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/data/Hive/favorite_hive_services.dart';
import 'package:news_app/screens/screen/article_detail_screen.dart';
import 'package:news_app/screens/widget/favoratie_icon_button.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.index, required this.itemFavortie});

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
                  Navigator.pushNamed(context, ArticleDetailScreen.id);
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                        image: AssetImage('assets/technology.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Canadian Prime Minister Trudeau flies to Florida to meet with Trump on tariffs threat - The Associated Press',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.titleNewsCard,
                    ),
                    const SizedBox(
                      height: 0.5,
                    ),
                    Text(
                      "Canadian Prime Minister Justin Trudeau has flown to Florida to meet with President-elect Donald Trump at his Mar-a-Lago club after Trump threatened to impose sweeping tariffs on Canadian products. A person familiar with the matter said Trudeau will have dinne…",
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
