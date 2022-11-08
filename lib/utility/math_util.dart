import 'dart:html';

class MathUtil {}

class Expression {
  final String firstOperand;
  final String operator1;
  final String secondOperand;
  final String? operator2;
  final String thirdOperand;
  final int answer;
  Expression(
      {required this.firstOperand,
      required this.operator1,
      required this.secondOperand,
      required this.operator2,
      required this.thirdOperand,
      required this.answer});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Expression &&
          runtimeType == other.runtimeType &&
          firstOperand == other.firstOperand &&
          operator1 == other.operator1 &&
          secondOperand == other.secondOperand &&
          operator2 == other.operator2 &&
          thirdOperand == other.thirdOperand &&
          answer == other.answer;
}
