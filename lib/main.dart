import 'package:flutter/material.dart';
import 'package:game_provider/pages/choose.dart';
import 'package:game_provider/core/model/choose_model.dart';
import 'package:game_provider/pages/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/init/hive_manager.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ChooseModelAdapter());
  //kutu yoksa kutu aoluşturur varsa açar
  await Hive.openBox("character");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HiveManager.instance.characterBox!.get("myCharacter") == null
          ? const ChoosePage()
          : const HomePage(),
    );
  }
}
