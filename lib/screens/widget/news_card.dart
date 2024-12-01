import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/screens/widget/favoratie_icon_button.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {},
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
          const FavoraiteIconButton(),
        ],
      ),
    );
  }
}
