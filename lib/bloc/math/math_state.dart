part of 'math_bloc.dart';

// @immutable
abstract class MathState {
  String number;

  MathState(this.number);
}

class MathInitial extends MathState {
  MathInitial() : super('');
}

class MathSuccess extends MathState {
  MathSuccess(String number) : super(number);
}