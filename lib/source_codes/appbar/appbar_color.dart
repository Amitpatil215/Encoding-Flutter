import 'package:flutter/material.dart';
class AppBarBackgroundColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar red background"),
         backgroundColor:Colors.red ,
        ),
      ),
    );
  }
}
