import 'package:flutter/material.dart';
class TextAlignRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Text(
            " Right text",
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: 30
            ),
          ),
        ),
      ),
    );
  }
}
