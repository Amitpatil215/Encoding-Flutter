//Main page of application
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jiitms/database/listofcontent.dart';
import 'earlyredirected_page.dart';
import 'explore_page.dart';
import 'homepage_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
int selectedTitle;
//invoking all the list for its attributes
List<Content> contentList=Content.getTitle() ;
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
              physics:BouncingScrollPhysics(),
              itemCount:contentList.length,
              itemBuilder:(BuildContext context,int index){
                return Card(
                    shape:RoundedRectangleBorder(borderRadius:BorderRadius.only(topRight: Radius.circular(15),)),
                    elevation: 30,
                    color: Colors.white,
                    child:Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 0,right: 10),
                            child: ListTile(
                              title: Text(
                                "${index+1}. ${contentList[index].title}",
                                style: TextStyle(
                                    fontSize:16.5
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>EarlyRedirectedPage()));
                                selectedTitle=index;
                              },
                              subtitle: Text("${contentList[index].homeSubTitle}",
                                  style: bestStyle()
                              ),
                              leading: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Container(
                                  child: Icon(contentList[index].iconHome,color: Colors.pink,),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                              trailing: Icon(Icons.chevron_right),
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*0.6,top:15 ),
                            child: Container(
                              color: Colors.transparent,
                              height: 50,
                              width: 90,
                              child: Center(
                                child: Text(
                                  "${contentList[index].depend}",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.pink,
                                  ),
                                  maxLines: 3,
                                ),
                              ),
                            ),
                          )
                        ]
                    )
                );
              }),
        ),
      ],
    ),
    ExploreNow()
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar:AppBar(
        elevation: 10,
        backgroundColor: Colors.pinkAccent,
        title: Text(
            "Encoding Flutter",
            style:bestStyle()
        ),
      ),
      drawer: Drawer(
          elevation: 20,
          child:DrawerClass()
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.pink.withOpacity(.1))
        ],),
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.2, vertical: 8),
            child: GNav(
                gap: 8,
                activeColor: Colors.pink,
                iconSize: 28,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.transparent,
                tabs: [
                  GButton(
                    icon:Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon:Icons.bubble_chart,
                    text: 'Explore',
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
///style class
bestStyle(){
  return TextStyle(
      fontWeight: FontWeight.w300
  );
}




