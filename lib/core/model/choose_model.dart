import 'package:flutter/material.dart';

class ChooseModel {
  final String icon;
  final Color color;
  ChooseModel({required this.icon, required this.color});
}

List<ChooseModel> chooseList = [
  ChooseModel(icon: "assets/t.png", color: const Color(0xffc3ccf9)),
  ChooseModel(icon: "assets/chick.png", color: const Color(0xfffe94bd)),
  ChooseModel(icon: "assets/dolphins.png", color: const Color(0xfffed751)),
  ChooseModel(icon: "assets/giraffes.png", color: const Color(0xff89e8ce)),
  ChooseModel(icon: "assets/koalas.png", color: const Color(0xffc3ccf9)),
  ChooseModel(icon: "assets/monkey.png", color: const Color(0xfffe94bd)),
  ChooseModel(icon: "assets/caterpillar.png", color: const Color(0xfffed751)),
  ChooseModel(icon: "assets/squirrel.png", color: const Color(0xff89e8ce)),
  ChooseModel(icon: "assets/crab.png", color: const Color(0xffc3ccf9)),
  ChooseModel(icon: "assets/octopus.png", color: const Color(0xfffe94bd)),
];
