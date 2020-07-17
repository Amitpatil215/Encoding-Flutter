import 'package:flutter/material.dart';

class SnackBarDuration extends StatelessWidget {
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
                duration:Duration(seconds:5),
                content: Text('Yay! A 5sec waiting SnackBar!'),
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
