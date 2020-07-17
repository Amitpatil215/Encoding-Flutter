import 'package:flutter/material.dart';
class TextAlignLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Text(
            " Left text",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 30
            ),
          ),
        ),
      ),
    );
  }
}
