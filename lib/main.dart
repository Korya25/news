import 'package:flutter/material.dart';
import 'package:news_app/screens/screen/newsscreen.dart';
import 'package:news_app/screens/widget/search_screen.dart';
import 'package:news_app/screens/widget/custom_app_bar.dart';

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
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: NewsScreen.id,
    );
  }
}
