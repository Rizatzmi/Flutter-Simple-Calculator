import 'package:bloc/bloc.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:meta/meta.dart';

part 'math_event.dart';
part 'math_state.dart';

class MathBloc extends Bloc<MathEvent, MathState> {
  MathBloc() : super(MathInitial()) {
    on<Input>(
      (event, emit) {
        emit(
          state is MathSuccess
              ? MathSuccess(state.number += event.number)
              : MathSuccess(event.number),
        );
      },
    );
    on<Operation>(
      (event, emit) {
        emit(
          state is MathSuccess
              ? MathSuccess(Parser()
                  .parse(state.number)
                  .evaluate(EvaluationType.REAL, ContextModel())
                  .toString())
              : MathSuccess(state.number),
        );
      },
    );
    on<Delete>((event, emit) {
      emit(
        state is MathSuccess && event.delete == true
            ? MathSuccess(
                state.number.substring(0, state.number.length - 1),
              )
            : MathSuccess(''),
      );
    });
  }
}
