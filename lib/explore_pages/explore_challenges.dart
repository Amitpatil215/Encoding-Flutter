// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_native_admob/flutter_native_admob.dart';
// import 'package:flutter_native_admob/native_admob_controller.dart';
class ExploreChallenges extends StatefulWidget {
  @override
  _ExploreChallengesState createState() => _ExploreChallengesState();
}
class _ExploreChallengesState extends State<ExploreChallenges> {
  //native ad
  //final _nativeAdController = NativeAdmobController();
  //native ad

  //ad----
  //static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  //   keywords: <String>[],
  //   childDirected: false,
  //   testDevices: <String>[], // Android emulators are considered test devices
  // );

 // BannerAd myBanner = BannerAd(
    // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // adUnitId:'ca-app-pub-3681380281121300/7371995196',
  //  size: AdSize.fullBanner,
  //  targetingInfo: targetingInfo,
  //  listener: (MobileAdEvent event) {
  //    print("BannerAd event is $event");
  //  },
  //);

//ad_____
  @override
  void initState(){
   // FirebaseAdMob.instance.initialize(appId:"ca-app-pub-3681380281121300~4830109259");
    super.initState();
    //myBanner..load();
    
  }

  @override
  void dispose() {
    //myBanner?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
              child: Text(
                "Layout"
                    "\nChallenge",
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

            Image.network(
              'https://github.com/Amitpatil215/flutter_tutorial_app/blob/master/ui3.jpg?raw=true',
              fit: BoxFit.fill,
              loadingBuilder:(BuildContext context,Widget child,ImageChunkEvent loadingProgress){
                if(loadingProgress==null) return child;
                return Center(
                  child: CircularProgressIndicator(
                  ),
                );
              },
            ),
            Container(//ad
              height: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20.0),
              // child: NativeAdmob(
              //   // Your ad unit id
              //   adUnitID:"ca-app-pub-3681380281121300/7198096184",
              //   //adUnitID:NativeAd.testAdUnitId,
              //   controller: _nativeAdController,
              //   type: NativeAdmobType.full,
              // ),
            ),
            Image.network(
              'https://github.com/Amitpatil215/flutter_tutorial_app/blob/master/ui2.jpg?raw=true',
              fit: BoxFit.fill,
              loadingBuilder:(BuildContext context,Widget child,ImageChunkEvent loadingProgress){
                if(loadingProgress==null) return child;
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
         Container(//ad
          height: 200,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 20.0),
          // child: NativeAdmob(
          //   // Your ad unit id
          //   adUnitID:"ca-app-pub-3681380281121300/7198096184",
          //   // adUnitID:NativeAd.testAdUnitId,
          //   controller: _nativeAdController,
          //   type: NativeAdmobType.full,
          // ),
         )
          ],
        ),
      ),
    );
  }
}
