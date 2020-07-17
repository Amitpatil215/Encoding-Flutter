import 'package:flutter/material.dart';
class RaisedButtonHighlightColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Center(
          child: RaisedButton(
            highlightColor: Colors.red,
              child: Text("Press Me"),
              onPressed: (){
                //add a function here
              }
          ),
        ),
      ),
    );
  }
}
