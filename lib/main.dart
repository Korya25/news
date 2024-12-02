import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/data/source/local/hive_methodes.dart';
import 'package:news_app/domain/cuibt/theme_cuibt/theme_cuibt.dart';
import 'package:news_app/domain/presentation/screen/news/newsscreen.dart';
import 'package:news_app/domain/presentation/widget/search_screen.dart';

void main() async {
  await HiveMethodes().hiveServices();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: const MyApp(),
    ),
  );
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
          },
        );
      },
    );
  }
}
