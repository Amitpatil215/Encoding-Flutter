import 'package:flutter/material.dart';
class RowCrossAlignCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Text1",style:TextStyle(fontSize: 30)),
              Text("Text2",style:TextStyle(fontSize:30))
            ],
          )
      ),
    );
  }
}
