import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_calculator/bloc/math/math_bloc.dart';

import '../Widgets/button.dart';
import '../bloc/theme/theme_bloc.dart';

class KeyboardSection extends StatelessWidget {
  const KeyboardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                          Delete(delete: false)
                        );
                    },
                    txt: 'C',
                    txtColor: Colors.orange[700],
                  ),
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.read<MathBloc>().add(
                          Delete()
                        );
                      },
                      child: Icon(
                        Icons.backspace_outlined,
                        color: Colors.orange[700],
                      ),
                    ),
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '%'),
                          );
                    },
                    txt: '%',
                    txtColor: Colors.orange[700],
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '/'),
                          );
                    },
                    txt: '÷',
                    txtColor: Colors.orange[700],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '7'),
                          );
                    },
                    txt: '7',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '8'),
                          );
                    },
                    txt: '8',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '9'),
                          );
                    },
                    txt: '9',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '*'),
                          );
                    },
                    txt: '×',
                    txtColor: Colors.orange[700],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '4'),
                          );
                    },
                    txt: '4',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '5'),
                          );
                    },
                    txt: '5',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '6'),
                          );
                    },
                    txt: '6',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '-'),
                          );
                    },
                    txt: '-',
                    txtColor: Colors.orange[700],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '1'),
                          );
                    },
                    txt: '1',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '2'),
                          );
                    },
                    txt: '2',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '3'),
                          );
                    },
                    txt: '3',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '+'),
                          );
                    },
                    txt: '+',
                    txtColor: Colors.orange[700],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        context.read<ThemeBloc>().changeTheme();
                      },
                      icon: const Icon(Icons.brightness_6),
                    ),
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '0'),
                          );
                    },
                    txt: '0',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      context.read<MathBloc>().add(
                            Input(number: '.'),
                          );
                    },
                    txt: '.',
                  ),
                  CalculatorButton(
                    btnColor: Colors.orange[700],
                    onPressed: () {
                      context.read<MathBloc>().add(Operation());
                    },
                    txt: '=',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
