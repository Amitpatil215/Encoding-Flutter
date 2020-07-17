import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text('Press Me For Call'),
        ),
      ),
    );
  }
}
_launchURL() async {
  const Tel = 'tel:+911234567891';
  if (await canLaunch(Tel)) {
    await launch(Tel);
  } else {
    throw 'Could not launch Tell';
  }
}
