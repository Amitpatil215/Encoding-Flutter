import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:flutter_native_admob/native_admob_options.dart';
import 'package:jiitms/pages/home_page.dart';
import 'package:jiitms/database/listofcontent.dart';
import 'package:jiitms/pages/redirected_page.dart';

int selectedSubTitle;
class EarlyRedirectedPage extends StatefulWidget {
  @override
  _EarlyRedirectedPageState createState() => _EarlyRedirectedPageState();
}
class _EarlyRedirectedPageState extends State<EarlyRedirectedPage> {
  //native ad
  final _nativeAdController = NativeAdmobController();
  //native ad
  //ad----
 static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>[],
    childDirected: false,
    testDevices: <String>[], // Android emulators are considered test devices
  );
  InterstitialAd myInterstitial = InterstitialAd(
    // Replace the testAdUnitId with an ad unit id from the AdMob dash.
    //adUnitId:"ca-app-pub-3681380281121300/3101577690",
    adUnitId:InterstitialAd.testAdUnitId,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
//ad___
  //invoking all the list for its attributes
  final List<Content> contentList=Content.getTitle();

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId:"ca-app-pub-3681380281121300~4830109259");
    super.initState();
    myInterstitial..load();
  }
  @override
  void dispose() {
    myInterstitial?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: IconButton(
              icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
              ),
          title: Text(
              "${selectedTitle+1}. ${contentList[selectedTitle].title}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon:Icon(Icons.home,size: 25,),
                onPressed: (){
                  myInterstitial..show();
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
                })
          ],

        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                  itemCount:contentList[selectedTitle].subtitleYes.length,
                  itemBuilder:(BuildContext context,int index){
                    return Card(
                        elevation: 30,
                        color: Colors.white,
                        child:Stack(
                            children: <Widget>[
                             ListTile(
                               title: Text(
                                 "${index+1}. ${contentList[selectedTitle].subtitleYes[index]}",
                                 style: TextStyle(
                                     fontSize:16.5
                                 ),
                               ),

                               subtitle: Text("${contentList[selectedTitle].earlyPageSubtitle[index]}",
                               style: TextStyle(
                                 fontWeight: FontWeight.w300
                               ),
                               ),

                               trailing: Icon(Icons.fast_forward),
                               onTap: (){
                                 selectedSubTitle=index;
                                 Navigator.push(context,MaterialPageRoute(builder:(context)=>RedirectedPage()));
                               },
                              onLongPress: (){
                                 myInterstitial..show();
                              },
                             )
                            ]
                        )
                    );
                  }),
            ),

          /*  Container(//ad
              height: 90,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20.0),
              child: NativeAdmob(
                // Your ad unit id
                //adUnitID:"ca-app-pub-3681380281121300/7198096184",
                adUnitID:NativeAd.testAdUnitId,
                controller: _nativeAdController,
                type: NativeAdmobType.banner,
                options: NativeAdmobOptions(
                  showMediaContent: true,
                  adLabelTextStyle: NativeTextStyle(backgroundColor: Colors.pinkAccent)
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
