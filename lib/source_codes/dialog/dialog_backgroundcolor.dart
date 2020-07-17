import 'package:flutter/material.dart';
class DialogBackgroundColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:Center(
            child: RaisedButton(
                child: Text("Press Me!"),
                onPressed: (){
                  AlertDialog dialog= AlertDialog(
                    backgroundColor: Colors.pink,
                    content: Text("Dialog Message"),

                  );
                  showDialog(context: context,child: dialog);
                }),
          )
      ),
    );
  }
}
