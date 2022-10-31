import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'choose_model.g.dart';

@HiveType(typeId: 0)
class ChooseModel extends HiveObject {
  @HiveField(0)
  final String icon;
  @HiveField(1)
  final int color;
  ChooseModel({required this.icon, required this.color});
}

List<ChooseModel> chooseList = [
  ChooseModel(icon: "assets/t.png", color: const Color(0xffc3ccf9).value),
  ChooseModel(icon: "assets/crab.png", color: const Color(0xfffe94bd).value),
  ChooseModel(icon: "assets/dolphins.png", color: const Color(0xfffed751).value),
  ChooseModel(icon: "assets/giraffes.png", color: const Color(0xff89e8ce).value),
  ChooseModel(icon: "assets/koalas.png", color: const Color(0xffc3ccf9).value),
  ChooseModel(icon: "assets/monkey.png", color: const Color(0xfffe94bd).value),
  ChooseModel(icon: "assets/caterpillar.png", color: const Color(0xfffed751).value),
  ChooseModel(icon: "assets/squirrel.png", color: const Color(0xff89e8ce).value),
  ChooseModel(icon: "assets/chick.png", color: const Color(0xffc3ccf9).value),
  ChooseModel(icon: "assets/octopus.png", color: const Color(0xfffe94bd).value),
];
