import 'package:flutter/material.dart';
class ListViewListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ), //ListTile
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ), //ListTile
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}