import 'package:flutter/material.dart';
class DialogDialogAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: RaisedButton(
              child: Text("Press Me!"),
              onPressed: (){
                AlertDialog dialog= AlertDialog(
                  content: Text("Dialog Message"),

                );
                showDialog(context: context,child: dialog);
              }),
        )
      ),
    );
  }
}
