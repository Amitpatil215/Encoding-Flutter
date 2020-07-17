import 'package:flutter/material.dart';

class TextFieldSimple extends StatefulWidget {
  @override
  _TextFieldSimpleState createState() => _TextFieldSimpleState();
}

class _TextFieldSimpleState extends State<TextFieldSimple> {
  var text=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Enter a search term'
            ),
          ),
        ),
      ),
    );
  }
}
