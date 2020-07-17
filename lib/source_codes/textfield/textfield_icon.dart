import 'package:flutter/material.dart';
// ignore: must_be_immutable
class TextFieldIcon extends StatelessWidget {
  var text=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Enter a search term',
              icon:Icon(Icons.radio),
            ),
            controller: text,

          ),
        ),
      ),
    );
  }
}
