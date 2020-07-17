import 'package:flutter/material.dart';
class TextColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Text is in Red Color",
              style: TextStyle(
                  color: Colors.red
              ),
            )
        ),
      ),
    );
  }
}
