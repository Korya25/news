import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/domain/presentation/screen/favorites/favoraties_screen.dart';
import 'package:news_app/domain/presentation/widget/appbar/custom_button/custom_search_button.dart';
import 'package:news_app/domain/presentation/widget/appbar/custom_button/theme_toggle_button.dart';

class CustomNewsScreenAppBar extends StatelessWidget {
  const CustomNewsScreenAppBar({
    super.key,
    required this.titlepartone,
    required this.titleparttwo,
  });

  // varibles

  final String titlepartone;
  final String titleparttwo;
  final double sizeIcon = 25;

  // Build UI

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Theme Icon Button

        const ThemeToggleButton(),
        const Spacer(flex: 1),

        // App Bar Text Icon Button

        Row(
          children: [
            Text(
              titlepartone,
              style: AppTextStyle.heading,
            ),
            Text(
              ' $titleparttwo',
              style: GoogleFonts.abhayaLibre(
                fontSize: 27,
                fontWeight: FontWeight.w600,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        const Spacer(flex: 1),

        // Search Icon Button

        SearchIcon(sizeIcon: sizeIcon),

        // Favoratie Icon Button
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const FavoratieScreen();
                },
              ));
            },
            icon: Icon(FontAwesomeIcons.heart, size: sizeIcon)),
      ],
    );
  }
}
