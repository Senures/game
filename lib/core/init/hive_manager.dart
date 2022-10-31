import 'package:hive_flutter/hive_flutter.dart';

class HiveManager {
  static HiveManager? _instance;
  //singleton nesnemizi oluşturduk

  Box<dynamic>? _characterBox;

  Box<dynamic>? get characterBox => _characterBox;

  static HiveManager get instance {
    if (_instance == null) {
      _instance = HiveManager._init();
      return _instance!;
    }

    return _instance!;
  }

  HiveManager._init() {
    _characterBox = Hive.box("character");
    //açılan kutuyu getiriyor
  }
}
