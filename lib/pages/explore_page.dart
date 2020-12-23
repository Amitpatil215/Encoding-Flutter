//import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_native_admob/flutter_native_admob.dart';
// import 'package:flutter_native_admob/native_admob_controller.dart';
// import 'package:flutter_native_admob/native_admob_options.dart';
import 'package:jiitms/explore_pages/explore_challenges.dart';
import 'package:jiitms/explore_pages/explore_short.dart';
import 'package:jiitms/explore_pages/explore_tutorstalk.dart';

class ExploreNow extends StatefulWidget {
  @override
  _ExploreNowState createState() => _ExploreNowState();
}
class _ExploreNowState extends State<ExploreNow> {
  //native ad
  //final _nativeAdController = NativeAdmobController();
  //native ad
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children:[
          Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01, ),
                  width:320,
                  height: 250,
                  child: Image.asset("images/first.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.102,left: MediaQuery.of(context).size.width*0.65 ),
                  child: SizedBox(
                    height: 60,
                    width: 150,
                    child: RaisedButton(
                        color:Colors.pinkAccent,
                        child: Text("Challenges!",style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                        ),),
                        shape:RoundedRectangleBorder(

                            borderRadius: BorderRadius.only(topRight:Radius.circular(30),bottomLeft: Radius.circular(20))
                        ),
                        elevation: 40,
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>ExploreChallenges()));
                        }),
                  ),
                )
              ],
            ),
            Stack(
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01,left:MediaQuery.of(context).size.width*0.3 ),
                  width:320,
                  height: 250,
                  child: Image.asset("images/second.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.102, left: MediaQuery.of(context).size.width*0.03 ),
                  child: SizedBox(
                    height: 60,
                    width: 150,
                    child: RaisedButton(
                        color:Colors.white,
                        child: Text("Shortened",style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.w300
                        ),),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topRight:Radius.circular(30),bottomLeft: Radius.circular(20))
                        ),
                        elevation: 20,
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>ShortNotes()));
                        }),
                  ),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01, ),
                  width:320,
                  height: 250,
                  child: Image.asset("images/third.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.102,left: MediaQuery.of(context).size.width*0.62 ),
                  child: SizedBox(
                    height: 60,
                    width: 150,
                    child: RaisedButton(
                        color:Colors.pinkAccent,
                        child: Text("Tutor's Talk",style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                        ),),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topRight:Radius.circular(30),bottomLeft: Radius.circular(20))
                        ),
                        elevation: 40,
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>ExploreTutorsTalk()));
                        }),
                  ),
                )
              ],
            ),
          ],
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
            //   options: NativeAdmobOptions(
            //     adLabelTextStyle: NativeTextStyle(
            //       backgroundColor: Colors.pink
            //     ),
            //   ),
            //   error: Container(

            //   ),

            // ),
          )
        ]
      ),
    );
  }
}
