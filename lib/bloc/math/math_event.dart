part of 'math_bloc.dart';

@immutable
abstract class MathEvent {}

class Input extends MathEvent {
  final String number;

  Input({this.number = '0'});
}

class Operation extends MathEvent {}

class Delete extends MathEvent {
  final bool delete;

  Delete({this.delete = true});
}
