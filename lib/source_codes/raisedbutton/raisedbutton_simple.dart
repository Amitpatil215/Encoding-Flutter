import 'package:flutter/material.dart';
class RaisedButtonSimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Center(
          child: RaisedButton(
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
