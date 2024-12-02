import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/data/local/Hive/favorite_hive_services.dart';
import 'package:news_app/screens/widget/favortuie_list_item.dart';

class FavoratieScreen extends StatelessWidget {
  const FavoratieScreen({super.key});
  static const String id = 'FavoratieScreen';

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
      valueListenable: FavoriteServices.box.listenable(),
      builder: (context, box, _) {
        final favoriteItems = FavoriteServices.getFavorite();

        if (favoriteItems.isEmpty) {
          return _buildEmptyFavorites();
        }

        return ListView.builder(
          itemCount: favoriteItems.length,
          itemBuilder: (context, index) {
            return FavoriteListItem(
              onPressed: () {
                FavoriteServices.removeFavortie(index);
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
