import 'package:flutter/material.dart';
class TextItalic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Text in Italic letters",
              style: TextStyle(
                  fontStyle: FontStyle.italic
              ),
            )
        ),
      ),
    );
  }
}
