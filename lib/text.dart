import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text = "Hey there!";
  final Color color;

  MyText(this.color);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30,
            color: color != Colors.black ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
