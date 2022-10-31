import 'package:flutter/material.dart';
import 'package:game_provider/core/app_constant.dart';
import 'package:game_provider/core/model/choose_model.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor1,
      appBar: AppBar(
        backgroundColor: AppConstant.bgColor1,
        elevation: 0.0,
        toolbarHeight: 100.0,
        centerTitle: true,
        title: Text(
          "Choose a character",
          style: TextStyle(
              color: AppConstant.textColor,
              fontSize: 25.0,
              letterSpacing: .3,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.8),
          itemCount: chooseList.length,
          itemBuilder: (context, index) {
            ChooseModel item = chooseList[index];
            return Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                  color: item.color, borderRadius: BorderRadius.circular(7.0)),
              child: Image.asset(
                item.icon,
              ),
            );
          },
        ),
      ),
    );
  }
}
