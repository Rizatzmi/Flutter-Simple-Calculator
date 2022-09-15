import 'package:flutter/material.dart';
import '../utils/input.dart';
import '../utils/keyboard.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          InputSection(),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          KeyboardSection()
        ],
      ),
    );
  }
}
