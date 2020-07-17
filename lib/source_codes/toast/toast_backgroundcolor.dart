import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastBackgroundColor extends StatefulWidget {
  ToastBackgroundColor({Key key}):super (key : key);
  @override
  _ToastBackgroundColorState createState() => _ToastBackgroundColorState();
}

class _ToastBackgroundColorState extends State<ToastBackgroundColor> {

  void showME(){
    Toast.show(
        "Top Toast here",
        context,
        gravity: Toast.TOP,
        backgroundColor: Colors.pink,
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
