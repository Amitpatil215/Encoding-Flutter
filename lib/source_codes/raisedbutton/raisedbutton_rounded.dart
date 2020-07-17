import 'package:flutter/material.dart';
class RaisedButtonRounded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Center(
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(41)
              ),
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
