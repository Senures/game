import 'package:flutter/material.dart';
import 'package:game_provider/core/init/hive_manager.dart';
import 'package:game_provider/core/model/choose_model.dart';
import 'package:game_provider/pages/choose.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ChooseModel model;

  @override
  void initState() {
    model = HiveManager.instance.characterBox!.get("myCharacter");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("homeeeeeeeeeeeeee");
    return Scaffold(
      backgroundColor: Color(model.color),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(model.color)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(model.icon),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              HiveManager.instance.characterBox!.delete("myCharacter");
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ChoosePage(),
                ),
              );
            },
            child: Image.asset(model.icon)),
      ),
    );
  }
}
