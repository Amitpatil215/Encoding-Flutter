import 'package:flutter/material.dart';
import 'package:jiitms/database/listofcontent.dart';
import 'package:jiitms/pages/earlyredirected_page.dart';
import 'package:jiitms/pages/home_page.dart';

class PreviewPage extends StatefulWidget {
  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {

  //invoking all the list for its attributes
  final List<Content> contentList=Content.getTitle();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: contentList[selectedTitle].codeActualClass[selectedSubTitle],
    );

  }
}
