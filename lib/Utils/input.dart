import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_calculator/bloc/math/math_bloc.dart';

class InputSection extends StatelessWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<MathBloc, MathState>(
            builder: (context, state) {
              String value = state.number;
              value = value.replaceAll('*', '×');
              value = value.replaceAll('/', '÷');
              return Text(
                value,
                style: const TextStyle(fontSize: 30),
              );
            },
          ),
        ),
      ),
    );
  }
}
