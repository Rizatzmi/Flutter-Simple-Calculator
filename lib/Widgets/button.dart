import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    this.btnColor,
    required this.onPressed,
    required this.txt,
    this.txtColor,
  }) : super(key: key);

  final Color? btnColor;
  final Function()? onPressed;
  final String txt;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(btnColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          txt,
          style: TextStyle(color: txtColor),
        ),
      ),
    );
  }
}
