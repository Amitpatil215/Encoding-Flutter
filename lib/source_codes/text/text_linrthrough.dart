import 'package:flutter/material.dart';
class TextLineThrough extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Text in having Line through",
              style: TextStyle(
                  decoration: TextDecoration.lineThrough
              ),
            )
        ),
      ),
    );
  }
}
