import 'package:flutter/material.dart';
class TextAlignCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Text(
            " center text",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30
            ),
          ),
        ),
      ),//Scaffold
    );//MaterialApp
  }
}
