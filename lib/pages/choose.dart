import 'package:flutter/material.dart';

import 'package:game_provider/core/init/hive_manager.dart';
import 'package:game_provider/core/model/choose_model.dart';
import 'package:game_provider/pages/home.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  characterKaydetme(ChooseModel item) {
    HiveManager.instance.characterBox!.put("myCharacter", item);
    //kutuyu çağırdık ve ekleme yaptık
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppConstant.bgColor1,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                //kutudan okuma
                print(HiveManager.instance.characterBox!.get("myCharacter"));

                ChooseModel? my =
                    HiveManager.instance.characterBox!.get("myCharacter");

                print(my?.icon);

                // HiveManager.instance.characterBox!.delete("myCharacter");
              },
              icon: const Icon(Icons.add))
        ],
        // backgroundColor: AppConstant.bgColor1,
        elevation: 0.0,
        toolbarHeight: 80.0,
        centerTitle: true,
        title: Text(
          "Choose a character",
          style: TextStyle(
              //color: AppConstant.textColor,
              fontSize: 25.0,
              letterSpacing: .3,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.3),
          itemCount: chooseList.length,
          itemBuilder: (context, index) {
            ChooseModel item = chooseList[index];
            return InkWell(
              onTap: () {
                characterKaydetme(item);
                print(item.color);
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    color: Color(item.color),
                    borderRadius: BorderRadius.circular(7.0)),
                child: Image.asset(
                  item.icon,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
