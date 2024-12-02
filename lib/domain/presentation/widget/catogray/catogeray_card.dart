import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/domain/presentation/widget/appbar/custom_news_screen_app_bar.dart';
import 'package:news_app/domain/presentation/widget/news/future_builder_News_list.dart';

class CatogerayCard extends StatelessWidget {
  const CatogerayCard(
      {super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  // On Pressed Gester Director

  @override
  // Build UI
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CatograycardNews(title: title);
            },
          ));
        },
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
          ),
          child: Center(
              child: Text(
            title,
            style: AppTextStyle.catogarytitle,
          )),
        ),
      ),
    );
  }
}

class CatograycardNews extends StatelessWidget {
  const CatograycardNews({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomNewsScreenAppBar(
          titlepartone: title,
          titleparttwo: '',
        ),
      ),
      body: CustomScrollView(
        slivers: [
          FutureBuilderNews(
            catogray: title,
          ),
        ],
      ),
    );
  }
}
