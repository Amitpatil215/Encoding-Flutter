import 'package:flutter/material.dart';

class TabBarText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Text("Home"),
                Text("Web"),
                Text("List"),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.home),
              Icon(Icons.web),
              Icon(Icons.list),
            ],
          ),
        ),
      ),
    );
  }
}