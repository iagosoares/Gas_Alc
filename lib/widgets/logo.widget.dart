import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 150,
        ),
        SizedBox(height: 20),
        Text(
          "Alcool ou Gasolina",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
            fontSize: 40,
            fontFamily: "Big Shoulders Display",
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
