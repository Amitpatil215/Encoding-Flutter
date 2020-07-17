import 'package:flutter/material.dart';
class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is a app bar"),
        ),
      ),
    );
  }
}
