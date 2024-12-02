import 'package:hive_flutter/hive_flutter.dart';

class HiveMethodes {
  Future<void> hiveServices() async {
    await Hive.initFlutter();
    await Hive.openBox('favorite');
  }
}
