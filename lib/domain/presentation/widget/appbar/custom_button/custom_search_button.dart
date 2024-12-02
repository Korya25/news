import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/domain/presentation/widget/search_screen.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
    required this.sizeIcon,
  });

  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const TextFeildSearch();
            },
          ));
        },
        icon: Icon(FontAwesomeIcons.searchengin, size: sizeIcon));
  }
}
