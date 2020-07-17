import 'package:flutter/material.dart';
class DividerIndent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

        home: Scaffold(
          body: Center(
            child: Divider(
              color: Colors.pink,
              thickness: 10,
              indent: 70,
            ),
          ),
        )
    );
  }
}
