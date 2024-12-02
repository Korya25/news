import 'package:flutter/material.dart';
import 'package:news_app/data/source/local/favorite_hive_services.dart';
import 'package:news_app/domain/presentation/widget/favorite/favoratie_icon_button.dart';

class BuildFavortieIconButton extends StatelessWidget {
  const BuildFavortieIconButton({
    super.key,
    required this.isFavorrtie,
    required this.index,
  });

  final bool isFavorrtie;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FavoraiteIconButton(
      isFavorrtie: isFavorrtie,
      onpressed: () {
        if (isFavorrtie) {
          FavoriteHiveServices.removeFavortie(index);
        } else {
          FavoriteHiveServices.addFavorite(index, 'korya');
        }
      },
    );
  }
}
