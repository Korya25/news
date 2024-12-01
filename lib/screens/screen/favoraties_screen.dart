import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';

class FavoratieScreen extends StatelessWidget {
  const FavoratieScreen({super.key});

  static const String id = 'FavoratieScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favoraries', style: AppTextStyle.heading),
      ),
    );
  }
}
