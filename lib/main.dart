import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/source/local/hive_main_method.dart';
import 'package:news_app/domain/cuibt/theme_cuibt/theme_cuibt.dart';
import 'package:news_app/domain/presentation/screen/news/news_screen.dart';

void main() async {
  await HiveMainMethod().hiveServices();
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
          // Themes
          theme: ThemeData.dark(),
          darkTheme: ThemeData.light(),
          themeMode:
              state == ThemeState.light ? ThemeMode.light : ThemeMode.dark,

          // Home
          home: const NewsScreen(),
        );
      },
    );
  }
}
