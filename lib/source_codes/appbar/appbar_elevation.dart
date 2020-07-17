import 'package:flutter/material.dart';
class AppBarElevation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar elevated"),
          elevation: 30,
        ),
      ),
    );
  }
}
