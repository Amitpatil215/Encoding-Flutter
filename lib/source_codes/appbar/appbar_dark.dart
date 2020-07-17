import 'package:flutter/material.dart';
class AppBarDark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dark App Bar"),
        ),
      ),
    );
  }
}
