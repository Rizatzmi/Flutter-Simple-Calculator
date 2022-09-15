import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_calculator/Screens/home.dart';
import 'package:simple_calculator/Widgets/themes.dart';
import 'package:simple_calculator/bloc/math/math_bloc.dart';
import 'package:simple_calculator/bloc/theme/theme_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  ThemeBloc theme = ThemeBloc();
  MathBloc math = MathBloc();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => theme,
        ),
        BlocProvider(
          create: (context) => math,
        ),
      ],
      child: BlocBuilder<ThemeBloc, bool>(
          bloc: theme,
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Calculator',
              theme:
                  state == true ? ThemeClass.darkTheme : ThemeClass.lightTheme,
              home: const HomeScreens(),
            );
          }),
    );
  }
}
