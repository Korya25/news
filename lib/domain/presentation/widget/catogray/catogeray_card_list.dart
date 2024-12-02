import 'package:flutter/material.dart';
import 'package:news_app/domain/presentation/widget/catogray/catogeray_card.dart';

class CatograyCardList extends StatelessWidget {
  const CatograyCardList({super.key});

  // List of category data
  final List<Map<String, String>> categories = const [
    {'imagePath': 'assets/Ai.jpg', 'title': 'Ai'},
    {'imagePath': 'assets/businessmen.jpg', 'title': 'Business'},
    {'imagePath': 'assets/entertainment.jpg', 'title': 'Entertainment'},
    {'imagePath': 'assets/health.jpg', 'title': 'Health'},
    {'imagePath': 'assets/science.jpg', 'title': 'Science'},
    {'imagePath': 'assets/sports.jpg', 'title': 'Sport'},
    {'imagePath': 'assets/technology.jpg', 'title': 'Technology'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CatogerayCard(
            imagePath: categories[index]['imagePath']!,
            title: categories[index]['title']!,
          );
        },
      ),
    );
  }
}
