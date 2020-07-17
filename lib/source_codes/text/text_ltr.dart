
import 'package:flutter/material.dart';
class TextLeftToRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
                "This text is from left",
              textDirection: TextDirection.ltr,
            )
        ),
      ),
    );
  }
}
