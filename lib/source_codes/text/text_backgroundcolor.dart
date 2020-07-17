import 'package:flutter/material.dart';
class TextBackgroundColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Text in having light blue background",
              style: TextStyle(
                  backgroundColor: Colors.lightBlue,
              ),
            )
        ),
      ),
    );
  }
}
