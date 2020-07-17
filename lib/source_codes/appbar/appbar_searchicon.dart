import 'package:flutter/material.dart';
class AppBarSearchIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar with search Icon Button"),
          actions: <Widget>[
            IconButton(icon:
             Icon(Icons.search),
                onPressed: (){
              //nothing to do
                })

          ],
        ),
      ),
    );
  }
}
