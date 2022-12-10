import 'package:flutter/material.dart';
import 'package:gameon/constants.dart';

class myButton extends StatelessWidget {
  const myButton({Key? key, required this.buttonText}) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: constant.myGreen,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: constant.myGreen,
        ),
        height: 40,
        width: 130,
        child: Center(
          child: Text(
            buttonText,
            textScaleFactor: 1.1,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
