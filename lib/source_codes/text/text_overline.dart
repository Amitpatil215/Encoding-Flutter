import 'package:flutter/material.dart';
class TextOverLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
              "Text in having Over Line",
              style: TextStyle(
                  decoration: TextDecoration.overline
              ),
            )
        ),
      ),
    );
  }
}
