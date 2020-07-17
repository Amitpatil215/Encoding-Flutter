//redirected  page from main page
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jiitms/tabpages/code_page.dart';
import 'package:jiitms/tabpages/detail_page.dart';
import 'package:jiitms/tabpages/flowchart_page.dart';
import 'package:jiitms/tabpages/preview_page.dart';
import 'package:jiitms/pages/earlyredirected_page.dart';
import 'package:jiitms/database/listofcontent.dart';
import 'package:jiitms/pages/home_page.dart';
class RedirectedPage extends StatefulWidget {
  @override
  _RedirectedPageState createState() => _RedirectedPageState();
}
class _RedirectedPageState extends State<RedirectedPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> _widgetOptions = <Widget>[
    FlowChartPage(),
    PreviewPage(),
    CodePage(),
    MyWebView(),
  ];

  //invoking all the list for its attributes
  final List<Content> contentList=Content.getTitle() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
       elevation: 10,
       backgroundColor: Colors.pinkAccent,
       leading:IconButton(
          icon:Icon(Icons.arrow_back,),
          onPressed:(){
            Navigator.pop(context);
          }
      ),
       title: Text(
          "${selectedTitle+1}.${selectedSubTitle+1} ${contentList[selectedTitle].subtitleYes[selectedSubTitle]}",
          style:bestStyle()
       ),

        ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.pink.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(

                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.01, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.pink.shade400,
                tabs: [
                  GButton(
                    icon:Icons.pie_chart,
                    text: 'Work Flow',
                  ),
                  GButton(
                    icon: Icons.present_to_all,
                    text: 'Preview',
                  ),
                  GButton(
                    icon:Icons.code,
                    text: 'Code',
                  ),
                  GButton(
                    icon:Icons.details,
                    text: 'Details',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );

  }
}
