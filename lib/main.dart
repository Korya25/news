import 'package:flutter/material.dart';
import 'package:news_app/screens/screen/article_detail_screen.dart';
import 'package:news_app/screens/screen/favoraties_screen.dart';
import 'package:news_app/screens/screen/newsscreen.dart';
import 'package:news_app/screens/widget/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NewsScreen.id: (context) => const NewsScreen(),
        TextFeildSearch.id: (context) => const TextFeildSearch(),
        FavoratieScreen.id: (context) => const FavoratieScreen(),
        ArticleDetailScreen.id: (context) => const ArticleDetailScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: NewsScreen.id,
    );
  }
}
