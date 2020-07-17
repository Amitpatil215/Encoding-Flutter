import 'package:flutter/material.dart';
class TextUnderline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Text in Underlined",
              style: TextStyle(
                  decoration: TextDecoration.underline
              ),
            )
        ),
      ),
    );
  }
}
