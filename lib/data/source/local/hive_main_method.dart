import 'package:hive_flutter/hive_flutter.dart';
import 'package:news_app/constant/keyword.dart';

class HiveMainMethod {
  Future<void> hiveServices() async {
    await Hive.initFlutter();
    await Hive.openBox(kFavorite);
  }
}
