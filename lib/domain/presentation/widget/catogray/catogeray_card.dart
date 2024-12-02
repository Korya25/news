import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/domain/presentation/widget/catogray/catogray_card_news.dart';

class CatogerayCard extends StatelessWidget {
  const CatogerayCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          // Navigate to the news list screen with the selected category
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CatograycardNews(title: title),
            ),
          );
        },
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: AppTextStyle.catogarytitle,
            ),
          ),
        ),
      ),
    );
  }
}
