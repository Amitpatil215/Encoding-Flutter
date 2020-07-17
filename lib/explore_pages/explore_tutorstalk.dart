import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:flutter_native_admob/native_admob_options.dart';
class ExploreTutorsTalk extends StatefulWidget {
  @override
  _ExploreTutorsTalkState createState() => _ExploreTutorsTalkState();
}

class _ExploreTutorsTalkState extends State<ExploreTutorsTalk> {
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
    adUnitId:"ca-app-pub-3681380281121300/3101577690",
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
//ad___
    @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId:"ca-app-pub-3681380281121300~4830109259");
    super.initState();
 //  myInterstitial..load();
  }
  @override
  void dispose() {
  //  myInterstitial?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //  myInterstitial..show();
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
              child: Text(
                "Tutors"
                    "\nInstruction",
              style: (TextStyle(
                fontSize:MediaQuery.of(context).size.height*0.1,
                fontWeight: FontWeight.w300,
                color: Colors.red,
                letterSpacing:-5,
              )),
                overflow: TextOverflow.fade,
                maxLines: 2,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
              child: Text(
                    " \t All about Flutter-Widget Guide..!\n \n"
                    " \t 1.What is the reason behind providing quick preview of syntax? \n "
                    "\n\t\t Have a look at home screen it consist of Widgets list followed by a quick preview of its syntax, it may help you to understand where you should implement it.\n "
                    "\n\t 2.How to use Work flow? \n "
                    "\n\t\tWork Flow (Flow charts) serves learning in an intuitive way, just go through it and you start imagining the code base structure by your own. \n "
                    "\n\t 3.Why preview first?\n"
                    "\n\tFirst visualise and try to recreate a flow diagram based on preview in your mind, Subconsciously it winds up the code for better understanding."
                    "\n\n\t4.Challenges are for? "
                    "\n\n\tGive it a try, it will build your confidence! Practice is the key!"
                    "\n\n\t\t\tLearn the 'Flutter Framework' in this complete tutorial. Dart is a strictly typed programming language that is used in the Flutter framework to develop cross-platform mobile apps. And it's a cup of tea to learn dart along with flutter development. It’s as simple as that!",

                style: (TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                )),
                overflow: TextOverflow.ellipsis,
                maxLines: 50,
              ),
            ),
            Container(//ad
              height: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20.0),
              child: NativeAdmob(
                // Your ad unit id
                adUnitID:"ca-app-pub-3681380281121300/7198096184",
                //adUnitID:NativeAd.testAdUnitId,
                controller: _nativeAdController,
                type: NativeAdmobType.full,
                options: NativeAdmobOptions(
                  showMediaContent: true,
                  headlineTextStyle: NativeTextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        ),
      );
  }
}
