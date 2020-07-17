import 'package:flutter/material.dart';
class RaisedButtonIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Center(
          child: IconButton(
              icon: Icon(Icons.blur_circular),
              onPressed:(){}
          )
        ),
      ),
    );
  }
}
