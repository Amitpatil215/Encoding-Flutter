import 'package:flutter/material.dart';
class TextFontSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Font size set to 30",
              style: TextStyle(
                fontSize: 30
              ),
            )
        ),
      ),
    );
  }
}
