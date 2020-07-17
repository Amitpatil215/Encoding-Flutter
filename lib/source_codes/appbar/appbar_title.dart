import 'package:flutter/material.dart';
class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
         title: Text("This is title of an App Bar"),
       ),
      ),
    );
  }
}
