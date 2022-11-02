import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool isDialog = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
              child: const Icon(
                Icons.pause_circle,
                size: 40.0,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
