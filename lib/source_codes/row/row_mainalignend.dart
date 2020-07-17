import 'package:flutter/material.dart';
class RowMainAlignEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("Text1",style:TextStyle(fontSize: 30)),
              Text("Text2",style:TextStyle(fontSize:30))
            ],
          )
      ),
    );
  }
}
