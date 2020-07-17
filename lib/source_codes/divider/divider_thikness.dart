import 'package:flutter/material.dart';
class DividerThickness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

        home: Scaffold(
          body: Center(
            child: Divider(
              color: Colors.pink,
              thickness: 20,
            ),
          ),
        )
    );
  }
}
