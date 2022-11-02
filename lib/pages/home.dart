import 'package:flutter/material.dart';
import 'package:game_provider/core/init/hive_manager.dart';
import 'package:game_provider/core/model/choose_model.dart';
import 'package:game_provider/core/model/home_model.dart';
import 'package:game_provider/pages/choose.dart';
import 'package:game_provider/pages/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ChooseModel model;
  bool isNightMode = false;

  @override
  void initState() {
    model = HiveManager.instance.characterBox!.get("myCharacter");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(model.color),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(model.color),
          leadingWidth: 110.0,
          leading: Container(
            padding: const EdgeInsets.all(5.0),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            /*  width: 70.0,
            height: 40.0, */
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 2.0, blurRadius: 2.0)
                ],
                color: Color(model.color)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/trop.png",
                  width: 40.0,
                ),
                const Text(
                  "15",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0),
                )
              ],
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        isNightMode = !isNightMode;
                      });
                    },
                    child: isNightMode
                        ? Image.asset(
                            "assets/moon.png",
                            width: 40.0,
                          )
                        : Image.asset(
                            "assets/s.png",
                            width: 40.0,
                          ))
                /* Transform.scale(
                scale: 1.3,
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
              ), */
                ),
          ],
        ),

        /*   appBar: AppBar(
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
        ), */
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              width: double.infinity,
              height: 200.0,
              // decoration: const BoxDecoration(color: Colors.white10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.0,
                                blurRadius: 2.0)
                          ],
                          color: Color(model.color)),
                      child: Image.asset(model.icon),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Math Matrix for Kids",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Train Your Brain\nImprove Your Math Skill",
                        style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.white,
                          letterSpacing: .5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
            /* InkWell(
              onTap: () {
                HiveManager.instance.characterBox!.delete("myCharacter");
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ChoosePage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2.0,
                          blurRadius: 2.0)
                    ],
                    color: Color(model.color)),
                child: Image.asset(model.icon),
              ),
            ),
            Container(
              width: 300.0,
              height: 50.0,
              color: Colors.white30,
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
            ), */
            ,
            ListView.builder(
              shrinkWrap: true,
              itemCount: homeList.length,
              itemBuilder: (context, index) {
                HomeModel item = homeList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            DetailPage(model: item, chooseModel: model),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                    ),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(model.color),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              color: Colors.black12)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          /*  Image.asset(
                            item.icon,
                            width: 50.0,
                          ), */
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            item.title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
