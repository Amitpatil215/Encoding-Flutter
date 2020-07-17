import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:jiitms/database/listofcontent.dart';
import 'package:jiitms/pages/earlyredirected_page.dart';
import 'package:jiitms/pages/home_page.dart';

class FlowChartPage extends StatefulWidget {
  @override
  _FlowChartPageState createState() => _FlowChartPageState();
}

class _FlowChartPageState extends State<FlowChartPage> {

  //invoking all the list for its attributes
  final List<Content> contentList=Content.getTitle();

  bool _isLoading=true;
  PDFDocument document;
  @override
  void initState(){
    super.initState();
    loadDocument();
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  loadDocument() async{
    document = await PDFDocument.fromAsset("${contentList[selectedTitle].pdfPath[selectedSubTitle]}");
    setState(()=> _isLoading=false);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _isLoading?
          Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor:Colors.red,
            ),
          )
              :PDFViewer(document: document,),
        ),
      ),
    );
  }
}
