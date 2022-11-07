import 'package:flutter/cupertino.dart';
import 'package:game_provider/core/app_constant.dart';
import 'package:game_provider/ui/app/time_provider.dart';

class GameProvider extends TimeProvider {
  final GameCategoryType gameCategoryType;
  GameProvider({required TickerProvider vsync, required this.gameCategoryType})
      : super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));
}
