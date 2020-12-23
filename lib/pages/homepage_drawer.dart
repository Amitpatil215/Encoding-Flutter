// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class DrawerClass extends StatefulWidget {
  @override
  _DrawerClassState createState() => _DrawerClassState();
}
class _DrawerClassState extends State<DrawerClass> {
  //ad----
  // static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  //   keywords: <String>[],
  //   childDirected: false,
  //   testDevices: <String>[], // Android emulators are considered test devices
  // );
  // InterstitialAd myInterstitial = InterstitialAd(
  //   // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  //   adUnitId:"ca-app-pub-3681380281121300/3101577690",
  //   targetingInfo: targetingInfo,
  //   listener: (MobileAdEvent event) {
  //     print("InterstitialAd event is $event");
  //   },
  // );
//ad___
  @override
  void initState() {
   // FirebaseAdMob.instance.initialize(appId:"ca-app-pub-3681380281121300~9841503606");
    super.initState();
    //myInterstitial..load();
  }
  @override
  void dispose() {
    //myInterstitial?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01, ),
            width:330,
            height: 250,
            child: Image.asset("images/share.png",
              fit: BoxFit.fill,
            ),
      ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.260,right: MediaQuery.of(context).size.width*0.25 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 45,
                  width: 160,
                  child: RaisedButton(
                      color:Colors.pinkAccent.shade200,
                      elevation: 30,
                      child: Text("About Dev..",style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                      ),
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      ),

                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight:Radius.circular(30),bottomLeft:Radius.circular(20))
                      ),
                      onLongPress:(){
                       // myInterstitial..show();
                      },
                      onPressed: (){
                        //myInterstitial..show();
                        AlertDialog dialog= AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight:Radius.circular(400) )),
                          elevation: 50,
                            backgroundColor: Colors.pinkAccent,
                            content: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25),
                                  child: Center(child: Text("Developed by Encoding Flutter",
                                    style: TextStyle(color: Colors.white,fontWeight:FontWeight.w300,fontSize: 20,),)),
                              height: 50,
                              )
                            ],
                          )
                        );
                        showDialog(context:context,child:dialog);
                      }),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.326,left: MediaQuery.of(context).size.width*0.38 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 45,
                  width: 110,
                  child: RaisedButton(
                      elevation: 30,
                      color:Colors.white,
                      child: Text("Feedback",style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                      ),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                      ),

                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight:Radius.circular(30),bottomLeft: Radius.circular(25))
                      ),
                      onPressed:_launchURL,
                    onLongPress: (){
                        //myInterstitial..show();
                    },
                  ),
                ),
              ],
            ),
          ),
      ]
      ),]
    );
  }
}
_launchURL() async {
  const Email = 'mailto:encodingflutter@gmail.com';
  if (await canLaunch(Email)) {
    await launch(Email);
  } else {
    throw 'Could not launch Messeging App';
  }
}
