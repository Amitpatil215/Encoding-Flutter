import 'package:flutter/material.dart';
class RowAlignCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Text1",style:TextStyle(fontSize: 30)),
              Text("Text2",style:TextStyle(fontSize:30))
            ],
          )
      ),
    );
  }
}
