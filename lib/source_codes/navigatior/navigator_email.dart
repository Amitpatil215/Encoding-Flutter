import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text('Press Me For Email'),
        ),
      ),
    );
  }
}
_launchURL() async {
  const Email = 'mailto:jiitnamit@gmail.com';
  if (await canLaunch(Email)) {
    await launch(Email);
  } else {
    throw 'Could not launch Messeging App';
  }
}
