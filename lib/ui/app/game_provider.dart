import 'package:flutter/cupertino.dart';
import 'package:game_provider/core/app_constant.dart';
import 'package:game_provider/ui/app/time_provider.dart';

class GameProvider<T> extends TimeProvider {
  final GameCategoryType gameCategoryType;
  late List list;
  late int index;
  late double currentScore;
  late double oldScore;
  late T currentState;
  late String result;
  GameProvider({required TickerProvider vsync, required this.gameCategoryType})
      : super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));

  void startGame() async {
    result = "";
  }
}
