import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game_provider/core/model/choose_model.dart';
import 'package:game_provider/core/model/home_model.dart';
import 'package:game_provider/pages/game.dart';

class DetailPage extends StatefulWidget {
  final HomeModel model;
  final ChooseModel chooseModel;
  const DetailPage({
    super.key,
    required this.model,
    required this.chooseModel,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 60.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 30.0,
            color: Color(widget.chooseModel.color),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.asset(widget.chooseModel.icon),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.model.title,
              style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const Text(
              "Each game with simple calculation with different\napproach",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  width: 300.0,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(widget.chooseModel.color),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.calculate,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "Calculator",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 2.0,
                        indent: 20.0,
                        endIndent: 20.09,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100.0,
                              //color: Colors.amber,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Score:",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Image.asset(
                                    "assets/medal.png",
                                    width: 20.0,
                                  ),
                                  const Text(
                                    "0",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) => GamePage(
                                        chooseModel: widget.chooseModel),
                                  ),
                                );
                              },
                              child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.play_arrow_sharp,
                                    size: 27.0,
                                    color: Colors.black54,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
