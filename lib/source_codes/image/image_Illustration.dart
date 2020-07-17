import 'package:flutter/material.dart';
class ImageIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
    return MaterialApp(
      title: title,
      home: Scaffold(
          body: Center(
            child: Container(
              child: Image.asset("images/first.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
      ),
    );
  }
}