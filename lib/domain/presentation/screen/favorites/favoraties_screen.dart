import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/data/source/local/favorite_hive_services.dart';
import 'package:news_app/domain/presentation/widget/favorite/favortuie_list_item.dart';

class FavoratieScreen extends StatelessWidget {
  const FavoratieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favorites', style: AppTextStyle.heading),
      ),
      body: _buildFavoritesList(),
    );
  }

  // Method to build the favorites list with ValueListenableBuilder
  Widget _buildFavoritesList() {
    return ValueListenableBuilder(
      valueListenable: FavoriteHiveServices.box.listenable(),
      builder: (context, box, _) {
        final favoriteItems = FavoriteHiveServices.getFavorite();

        if (favoriteItems.isEmpty) {
          return _buildEmptyFavorites();
        }

        return ListView.builder(
          itemCount: favoriteItems.length,
          itemBuilder: (context, index) {
            return FavoriteListItem(
              onPressed: () {
                FavoriteHiveServices.removeFavortie(index);
              },
            );
          },
        );
      },
    );
  }

  // Method to show a message when there are no favorites
  Widget _buildEmptyFavorites() {
    return const Center(
      child: Text(
        'No Favorites Yet!',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
