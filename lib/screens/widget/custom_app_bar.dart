import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/screens/screen/favoraties_screen.dart';
import 'package:news_app/screens/widget/search_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.titleTextStyle});
  // theme varible
  final String title;
  final TextStyle titleTextStyle;
  final Color colortext = Colors.white;
  final Color colorIcons = Colors.white;
  final double sizeIcon = 25;
  @override
  Widget build(BuildContext context) {
    // Build UI
    return Row(
      children: [
        // Theme Icon Button
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode, color: colorIcons, size: sizeIcon)),
        const Spacer(flex: 4),

        // App Bar Text Icon Button
        Text(
          title,
          style: titleTextStyle,
        ),
        const Spacer(flex: 1),

        // Search Icon Button
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, TextFeildSearch.id);
            },
            icon: Icon(FontAwesomeIcons.searchengin,
                color: colorIcons, size: sizeIcon)),

        // Favoratie Icon Button
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, FavoratieScreen.id);
            },
            icon: Icon(FontAwesomeIcons.heart,
                color: colorIcons, size: sizeIcon)),
      ],
    );
  }
}
