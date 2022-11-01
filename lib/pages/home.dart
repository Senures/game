import 'package:flutter/material.dart';
import 'package:game_provider/core/init/hive_manager.dart';
import 'package:game_provider/core/model/choose_model.dart';
import 'package:game_provider/core/model/home_model.dart';
import 'package:game_provider/pages/choose.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ChooseModel model;
  bool isSelected = true;

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
          toolbarHeight: 90.0,
          elevation: 0.0,
          backgroundColor: Color(model.color),
          title: Transform.scale(
            scale: 1.8,
            child: Switch(
              activeColor: Colors.white,
              inactiveThumbColor: Colors.white,
              inactiveThumbImage: const AssetImage(
                "assets/moon.png",
              ),
              activeThumbImage: const AssetImage("assets/sun.png"),
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value;
                });
              },
            ),
          ),
          leadingWidth: 160.0,
          actions: [
            InkWell(
              onTap: () {
                HiveManager.instance.characterBox!.delete("myCharacter");
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ChoosePage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1.0,
                        blurRadius: 1.0)
                  ], shape: BoxShape.circle, color: Color(model.color)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(model.icon),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                width: 300.0,
                height: 50.0,

                //color: Colors.white30,
                child: Column(
                  children: const [
                    Text(
                      "Math Matrix for Kids",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: .5,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Train Your Brain,Improve Your Math Skill",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: homeList.length,
                itemBuilder: (context, index) {
                  HomeModel item = homeList[index];
                  return Container(
                    padding: const EdgeInsets.all(10.0),
                    alignment: index == 1
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    height: 85.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(model.color),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              offset: Offset(2.0, 1.0),
                              color: Colors.white24)
                        ]),
                    child: Container(
                      width: 170.0,
                      //color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            item.icon,
                            width: 80.0,
                          ),
                          Text(item.title)
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
