import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/keyword.dart';

class FavoriteHiveServices {
  static Box get box => Hive.box(kFavorite);

// Put in Box
  static void addFavorite(int index, String item) {
    box.put(index, item);
  }

// remove in Box
  static void removeFavortie(int index) {
    box.delete(index);
  }

// Get in box
  static List<String> getFavorite() {
    return box.values.toList().cast<String>();
  }
}
