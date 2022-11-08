import 'package:game_provider/core/model/correct_answer.dart';

class CorrectAnswerRepository {
  static List<int> listHasCode = <int>[];
  static getCorrectAnswerDataList(int level) {
    if (level == 1) {
      listHasCode.clear();
    }
  }

  List<CorrectAnswer> list = <CorrectAnswer>[];
}
