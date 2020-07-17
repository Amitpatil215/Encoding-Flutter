import 'package:flutter/material.dart';
class ColumnCrossAlignCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Text1",style:TextStyle(fontSize: 30),),
              Text("Text2",style:TextStyle(fontSize: 30))

            ],
          )
      ),
    );
  }
}
