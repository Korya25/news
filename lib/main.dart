import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/data/cuibt/theme_cuibt/theme_cuibt.dart';
import 'package:news_app/screens/screen/article_detail_screen.dart';
import 'package:news_app/screens/screen/favoraties_screen.dart';
import 'package:news_app/screens/screen/newsscreen.dart';
import 'package:news_app/screens/widget/search_screen.dart';

void main() async {
  await HiveServices();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> HiveServices() async {
  await Hive.initFlutter();
  await Hive.openBox('favorite');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          darkTheme: ThemeData.dark(),
          themeMode:
              state == ThemeState.dark ? ThemeMode.dark : ThemeMode.light,
          initialRoute: NewsScreen.id,
          routes: {
            NewsScreen.id: (_) => const NewsScreen(),
            TextFeildSearch.id: (_) => const TextFeildSearch(),
            FavoratieScreen.id: (_) => const FavoratieScreen(),
            ArticleDetailScreen.id: (_) => const ArticleDetailScreen(),
          },
        );
      },
    );
  }
}
