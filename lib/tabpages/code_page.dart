import 'package:flutter/material.dart';
import 'package:jiitms/database/listofcontent.dart';
import 'package:jiitms/pages/earlyredirected_page.dart';
import 'package:jiitms/pages/home_page.dart';
import 'package:widget_with_codeview/source_code_view.dart';
class CodePage extends StatefulWidget {
  @override
  _CodePageState createState() => _CodePageState();
}
class _CodePageState extends State<CodePage> {
  //invoking all the list for its attributes
  final List<Content> contentList=Content.getTitle();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,

        body: SourceCodeView(
          filePath: "${contentList[selectedTitle].libCodePath[selectedSubTitle]}",
        ),
      ),
    );
  }
}
