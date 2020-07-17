import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastTop extends StatefulWidget {
  ToastTop({Key key}):super (key : key);
  @override
  _ToastTopState createState() => _ToastTopState();
}

class _ToastTopState extends State<ToastTop> {

  void showME(){
    Toast.show(
    "Top Toast here",
    context,
        gravity: Toast.TOP,
    duration:Toast.LENGTH_LONG
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: RaisedButton(
            child: Text("Press Me"),
              onPressed: (){
                showME();
              }
              ),
        )
      ),
    );
  }
}
