import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_provider/core/model/choose_model.dart';

class GamePage extends StatefulWidget {
  ChooseModel chooseModel;
  GamePage({super.key, required this.chooseModel});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool isDialog = false;
  double sure = 400.0;
  bool isPlay = false;
  late Timer _timer;

  void startTimer() {
    const oneSec = Duration(milliseconds: 50);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (sure == 0 || isPlay == false) {
          setState(() {
            isPlay = false;
            isDialog = true;
            timer.cancel();
          });
        } else {
          setState(() {
            sure--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*  appBar: AppBar(
        backgroundColor: Colors.white,
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
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/trophy.png",
              width: 20.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text("0")
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  isDialog = true;
                });
              },
              child: Icon(
                Icons.pause_circle_outlined,
                color: Color(widget.chooseModel.color),
                size: 40.0,
              ),
            ),
          )
        ],
      ), */
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 90.0,
                    decoration: const BoxDecoration(
                        color: Colors.black38,
                        /*   gradient: LinearGradient(colors: [
                          Color(0xff654ea3),
                          Color(0xffeaafc8),
                        ]), */
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0))),
                  ),
                  Positioned(
                      bottom: 0.0,
                      child: Container(
                        width: sure,
                        height: 17.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(90.0),
                            bottomRight: Radius.circular(120.0),
                          ),
                          color: Colors.amber,
                        ),
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 85.0,
                      decoration: BoxDecoration(
                          color: Color(widget.chooseModel.color),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              "assets/trop.png",
                              width: 30.0,
                            ),
                            IconButton(
                                onPressed: () {
                                  startTimer();
                                  setState(() {
                                    isPlay = !isPlay;
                                  });
                                },
                                icon: Icon(
                                  isPlay == false
                                      ? Icons.play_arrow
                                      : Icons.pause_circle_outline_rounded,
                                  color: Colors.white,
                                  size: 40.0,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 150.0,
                height: 30.0,
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Calculator"),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            )),
                            builder: (BuildContext context) {
                              return Container(
                                height: 500,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text('Modal BottomSheet'),
                                      ElevatedButton(
                                        child: const Text('Close BottomSheet'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.info,
                          size: 25.0,
                        ))
                  ],
                ),
              ),
              Container(
                width: 150.0,
                height: 30.0,
                color: Colors.red,
              ),
              Container(
                width: 250.0,
                height: 60.0,
                color: Colors.red,
              ),
              GridView.builder(
                itemCount: 12,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 50.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        color: index == 9 && index == 11
                            ? Colors.black12
                            : Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                  );
                },
              )
            ],
          ),
          isDialog == true
              ? Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 250.0,
                    height: 150.0,
                    color: Colors.black,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isDialog = false;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        width: 120.0,
                        height: 40.0,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
