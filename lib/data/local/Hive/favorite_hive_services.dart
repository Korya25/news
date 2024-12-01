import 'package:hive_flutter/hive_flutter.dart';

class FavoriteServices {
  static Box get box => Hive.box('favorite');

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
