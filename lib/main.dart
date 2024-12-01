import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cuibt/theme_cuibt/theme_cuibt.dart';
import 'package:news_app/screens/screen/article_detail_screen.dart';
import 'package:news_app/screens/screen/favoraties_screen.dart';
import 'package:news_app/screens/screen/newsscreen.dart';
import 'package:news_app/screens/widget/search_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) {
        return ThemeCubit();
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          routes: {
            NewsScreen.id: (context) => const NewsScreen(),
            TextFeildSearch.id: (context) => const TextFeildSearch(),
            FavoratieScreen.id: (context) => const FavoratieScreen(),
            ArticleDetailScreen.id: (context) => const ArticleDetailScreen(),
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode:
              state == ThemeState.dark ? ThemeMode.light : ThemeMode.dark,
          initialRoute: NewsScreen.id,
        );
      },
    );
  }
}
