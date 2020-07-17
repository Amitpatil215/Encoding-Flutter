import 'package:flutter/material.dart';
class TextBold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Text in bold letters",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            )
        ),
      ),
    );
  }
}
