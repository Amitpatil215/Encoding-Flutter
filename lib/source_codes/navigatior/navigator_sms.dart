import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorSMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text('Press Me For Text Message'),
        ),
      ),
    );
  }
}
_launchURL() async {
  const SMS = 'sms:+911234567891';
  if (await canLaunch(SMS)) {
    await launch(SMS);
  } else {
    throw 'Could not launch Messeging App';
  }
}
