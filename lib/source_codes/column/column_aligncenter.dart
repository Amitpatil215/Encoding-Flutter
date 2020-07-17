import 'package:flutter/material.dart';
class ColumnAlignCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Text1",style:TextStyle(fontSize: 30),),
            Text("Text2",style:TextStyle(fontSize: 30))

          ],
        )
      ),
    );
  }
}
