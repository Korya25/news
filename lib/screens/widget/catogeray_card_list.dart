import 'package:flutter/material.dart';
import 'package:news_app/screens/widget/catogeray_card.dart';

class CatograyCardList extends StatelessWidget {
  const CatograyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    const List<CatogerayCard> catogerayCardList = [
      CatogerayCard(
        imagePath: 'assets/Ai.jpg',
        title: 'Ai',
      ),
      CatogerayCard(
        imagePath: 'assets/businessmen.jpg',
        title: 'Business',
      ),
      CatogerayCard(
        imagePath: 'assets/entertainment.jpg',
        title: 'Entertainment',
      ),
      CatogerayCard(
        imagePath: 'assets/health.jpg',
        title: 'Health',
      ),
      CatogerayCard(
        imagePath: 'assets/science.jpg',
        title: 'Science',
      ),
      CatogerayCard(
        imagePath: 'assets/sports.jpg',
        title: 'Sport',
      ),
      CatogerayCard(
        imagePath: 'assets/technology.jpg',
        title: 'Technology',
      ),
    ];
    return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catogerayCardList.length,
          itemBuilder: (context, index) {
            return catogerayCardList[index];
          },
        ));
  }
}
