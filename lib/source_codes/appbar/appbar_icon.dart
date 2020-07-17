import 'package:flutter/material.dart';
class AppBarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar with icon"),
          leading: Icon(Icons.home),
        ),
      ),
    );
  }
}
