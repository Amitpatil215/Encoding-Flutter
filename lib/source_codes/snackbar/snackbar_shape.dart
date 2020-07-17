import 'package:flutter/material.dart';

class SnackBarShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body:Center(
          child: RaisedButton(
            onPressed: () {
              final snackBar = SnackBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight:Radius.circular(30))
                ),
                content: Text('Yay! look at SnackBar shape!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );

              // Find the Scaffold in the widget tree and use
              // it to show a SnackBar.
              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }
}
