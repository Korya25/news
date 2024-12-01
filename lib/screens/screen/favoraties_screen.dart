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
        title: Text('Favoraries', style: AppTextStyle.heading),
      ),
      body: ValueListenableBuilder(
        valueListenable: FavoriteServices.box.listenable(),
        builder: (context, index, _) {
          final favortieItem = FavoriteServices.getFavorite();
          return ListView.builder(
            itemCount: favortieItem.length,
            itemBuilder: (context, index) {
              return FavoriteListItem(
                onPressed: () {
                  FavoriteServices.removeFavortie(index);
                },
                item: favortieItem[index],
              );
            },
          );
        },
      ),
    );
  }
}
